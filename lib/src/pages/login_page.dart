import 'package:flutter/material.dart';
import 'package:patron_bloc/src/providers/login_provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = LoginProvider.of(context);
    final textStyle = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200.0),
            StreamBuilder(
              stream: bloc.emailStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return Text(snapshot.data, style: textStyle);
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Text("Agregar valor", style: textStyle),
              onPressed: () {
                bloc.changeEmail("Un Nuevo Valor");
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Text("Limpiar valor", style: textStyle),
              onPressed: () {
                bloc.changeEmail(null);
              },
            ),
          ],
        ),
      ),
    );
  }
}
