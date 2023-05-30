import 'package:flutter/material.dart';

class WdgetGenericos extends StatelessWidget {
  const WdgetGenericos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget imagen(String name) {
  return Image(
    image: AssetImage('assets/images/$name.png'),
    height: 200.0,
    color: Colors.black,
  );
}

Widget textFormField(
    String hintText, IconData icon, bool obscureText, TextInputType type,
    {TextEditingController? controller}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: type,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black54),
      prefixIcon: Icon(
        icon,
        color: Colors.black54,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      filled: true,
      fillColor: Colors.black.withOpacity(0.1),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return 'Por favor ingrese su $hintText';
      }
      return null;
    },
  );
}

Widget elevatedButtonIniciar(context, _formKey) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
    ),
    child: Text(
      'INICIAR SESIÓN',
      style: TextStyle(
        color: Colors.grey[900],
        letterSpacing: 2.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      if (_formKey.currentState!.validate()) {
        // código para enviar el formulario
        Navigator.pushNamed(context, '/inicioScreen');
      } else {
        // Alerta de formulario incorrecto
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Inicio incorrecto'),
              content: Text('Por favor ingrese todos los campos correctamente'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    },
  );
}

Widget cardEliminar(context, String name, String route) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    child: ListTile(
      leading: const Icon(
        Icons.delete_rounded,
        color: Color.fromARGB(255, 90, 89, 89),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Source Sans Pro',
          fontSize: 18.0,
        ),
      ),
      onTap: () {
        // Eliminar cuenta
        Navigator.pushNamed(context, route);
      },
    ),
  );
}

Widget cardEditarCliente(context, String name, String route) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    child: ListTile(
      leading: const Icon(
        Icons.edit,
        color: Color.fromARGB(255, 90, 89, 89),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Source Sans Pro',
          fontSize: 18.0,
        ),
      ),
      trailing: Transform.scale(
        scale: 0.7, // Ajusta el factor de escala según tus preferencias
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 123, 123, 123),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    ),
  );
}

Widget cardListaClientes(context, String name, String route) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    child: ListTile(
      leading: const Icon(
        Icons.group,
        color: Color.fromARGB(255, 90, 89, 89),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Source Sans Pro',
          fontSize: 18.0,
        ),
      ),
      trailing: Transform.scale(
        scale: 0.7, // Ajusta el factor de escala según tus preferencias
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 123, 123, 123),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    ),
  );
}

Widget cardCerrarSesion(context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
    child: ListTile(
      leading: const Icon(
        Icons.logout,
        color: Color.fromARGB(255, 244, 7, 7),
      ),
      title: const Text(
        '         Cerrar sesión',
        style: TextStyle(
          color: Color.fromARGB(255, 236, 16, 0),
          fontFamily: 'Source Sans Pro',
          fontSize: 20.0,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    ),
  );
}
