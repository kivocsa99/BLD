import '../../../domain/user/model/usermodel.dart';

class SignUpWithEmailAndPasswordUseCaseInput {
  final String? password;
  final String? name;
  final String? email;
  final String? phone;

  SignUpWithEmailAndPasswordUseCaseInput({
    this.name,
    this.email,
    this.phone,
    this.password,
  });
}
