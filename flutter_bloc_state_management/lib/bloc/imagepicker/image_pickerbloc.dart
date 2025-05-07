import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/imagepicker/image_pickerevent.dart';
import 'package:flutter_bloc_state_management/bloc/imagepicker/image_pickerstate.dart';
import 'package:flutter_bloc_state_management/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerStates> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(const ImagePickerStates()) {
    on<CameraCapture>(cameraCapture);
    on<GalleryImagePicker>(galleryImagePicker);
  }

  Future<void> cameraCapture(
      CameraCapture event, Emitter<ImagePickerStates> emit) async {
    final XFile? file = await ImagePickerUtils().cameraCapture();
    emit(state.copyWith(file: file));
  }

  Future<void> galleryImagePicker(
      GalleryImagePicker event, Emitter<ImagePickerStates> emit) async {
    final XFile? file = await imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file: file));
  }
}
