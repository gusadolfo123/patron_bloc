import 'package:flutter/material.dart';
import 'package:patron_bloc/src/providers/login_provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = LoginProvider.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            StreamBuilder(
              stream: bloc.emailStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return Text(snapshot.data);
              },
            ),
            RaisedButton(
              child: Text("Prueba"),
              onPressed: () {
                bloc.changeEmail("asdasd");
              },
            ),
          ],
        ),
      ),
    );
  }
}
