import 'dart:io';

class UserUploadImageUseCaseInput {
  final File? file;
  final String? token;
  final String? type;
  UserUploadImageUseCaseInput({this.file, this.type, this.token});
}
