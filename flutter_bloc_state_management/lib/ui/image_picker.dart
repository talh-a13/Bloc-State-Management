import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/imagepicker/image_pickerbloc.dart';
import 'package:flutter_bloc_state_management/bloc/imagepicker/image_pickerevent.dart';
import 'package:flutter_bloc_state_management/bloc/imagepicker/image_pickerstate.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Bloc'),
      ),
      body: BlocBuilder<ImagePickerBloc, ImagePickerStates>(
        builder: (context, state) {
          if (state.file == null) {
            return InkWell(
              onTap: () {
                context.read<ImagePickerBloc>().add(CameraCapture());
              },
              child: const CircleAvatar(
                child: Icon(Icons.camera),
              ),
            );
          } else {
            return Image.file(File(state.file!.path.toString()));
          }
        },
      ),
    );
  }
}
