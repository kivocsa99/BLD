import 'dart:io';

class MotorAttachFileUseCaseInput {
  final File? file;
  final int? orderid;
  final String? token;
  final String? seg;

  MotorAttachFileUseCaseInput({this.file, this.orderid, this.token,this.seg});
}
