import 'package:flutter/material.dart';
import 'package:patron_bloc/src/blocs/login_bloc.dart';

class LoginProvider extends InheritedWidget {
  final Widget child;
  final loginBloc = new LoginBloc(); // unica instancia de loginbloc

  LoginProvider({Key key, this.child}) : super(key: key, child: child);

  static LoginBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LoginProvider>()
        .loginBloc;
  }

  @override
  bool updateShouldNotify(LoginProvider oldWidget) {
    return true;
  }
}
