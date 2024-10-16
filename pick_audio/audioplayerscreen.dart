import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _audioFilePath;
  bool isPlaying = false;

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> pickAudioFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      String filPath = result.files.single.path!;
      setState(() {
        _audioFilePath = filPath;
      });
      playAudio(filPath);
    } else {
      //User cancelled the picker.
    }
  }

  Future<void> playAudio(String filePath) async {
    DeviceFileSource deviceFileSource = DeviceFileSource(filePath);
    _audioPlayer.play(deviceFileSource);
  }

  Future<void> stopAudio() async {
    _audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: pickAudioFile,
          child: const Text('Pick An Audio File'),
        ),
        const SizedBox(
          height: 20,
        ),
        _audioFilePath != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Playing : ${_audioFilePath!.split('/').last}'),
                  ElevatedButton(
                    onPressed: stopAudio,
                    child: const Text('Stop'),
                  ),
                ],
              )
            : const Text('No Audio Files Selected'),
      ],
    );
  }
}
