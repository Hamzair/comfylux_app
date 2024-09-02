import 'dart:io';
import 'dart:math';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  File? imageFile;
  File? compressedImage;

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      String path =
          "${(await getTemporaryDirectory()).path}/${Random.secure().nextInt(999)}.jpg";

      imageFile = File(pickedFile.path);
      var myFile = await testCompressAndGetFile(imageFile!, path);
      compressedImage = File(myFile!.path);

      update();
    }
  }

  Future<XFile?> testCompressAndGetFile(File file, String targetPath) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: 70,
    );
    return result;
  }
}
