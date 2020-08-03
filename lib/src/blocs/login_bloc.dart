import 'dart:async';

class LoginBloc {
  final _emailController = StreamController<String>.broadcast();
  final _passController = StreamController<String>.broadcast();

  // Recupera datos del stream
  Stream<String> get emailStream => _emailController.stream;

  // Inserta valores al stream
  Function(String) get changeEmail => _emailController.sink.add;

  dispose() {
    _emailController?.close();
    _passController?.close();
  }
}
