import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/screens/general/widgets.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _correoController =
      TextEditingController(text: "");
  final TextEditingController _passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50.0),
                imagen('user'),
                const SizedBox(height: 30.0),
                textFormField("Correo", Icons.person, false, TextInputType.text,
                    controller: _correoController),
                const SizedBox(height: 20.0),
                textFormField(
                    "Contraseña", Icons.lock, true, TextInputType.text,
                    controller: _passwordController),
                const SizedBox(height: 50.0),
                elevatedButtonIniciar(context, _formKey),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
