import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';

class Camara extends StatefulWidget {
  const Camara({
    Key? key,
  }) : super(key: key);

  @override
  _CamaraState createState() => _CamaraState();
}

class _CamaraState extends State<Camara> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool _isCapturing = false;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras.first, ResolutionPreset.low);
    await _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _takePhoto() async {
    if (_isCapturing) {
      return; // Return if a capture is already in progress
    }
    setState(() {
      _isCapturing = true;
    });
    try {
      final image = await _controller.takePicture();

      final appDir = await path_provider.getApplicationDocumentsDirectory();
      final fileName = path.basename(image.path);
      final savedImage =
          await File(image.path).copy('${appDir.path}/$fileName');

      // TODO: Save the image to the gallery.

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Gracias por usar'),
          content: Text('La foto se guardó correctamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        ),
      );
    } catch (e) {
      print('Error capturing photo: $e');
    } finally {
      setState(() {
        _isCapturing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return _buildCameraPreview();
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildCameraPreview() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: CameraPreview(_controller),
          ),
          if (_isCapturing)
            Center(
              child: CircularProgressIndicator(),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bottonapp');
                },
                child: const Icon(Icons.camera),
              ),
            ),
          )
        ],
      ),
    );
  }
}
