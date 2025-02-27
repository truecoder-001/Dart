import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/task_model.dart';

class FirestoreService {
  final CollectionReference tasksCollection =
      FirebaseFirestore.instance.collection('tasks');

  Future<void> addTask(String title) async {
    await tasksCollection.add({"title": title, "isCompleted": false});
  }

  Stream<List<Task>> getTasks() {
    return tasksCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) =>
              Task.fromJson(doc.data() as Map<String, dynamic>, doc.id))
          .toList();
    });
  }

  Future<void> updateTask(String id, bool isCompleted) async {
    await tasksCollection.doc(id).update({"isCompleted": isCompleted});
  }

  Future<void> deleteTask(String id) async {
    await tasksCollection.doc(id).delete();
  }
}
