import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/screens/general/widgets.dart';

class ClienteScreen extends StatelessWidget {
  const ClienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://scontent.fgdl9-1.fna.fbcdn.net/v/t39.30808-6/291617185_1917216461809809_8265457281680961356_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG3u8wHqmQAPUTje7SzGuYOaXLZSEXigexpctlIReKB7JnbrQhwqXDydQocEOKQKJCQpgbpW94iCjgedwmRBVAV&_nc_ohc=gj4Vv5nQm1EAX8Xgp2B&_nc_ht=scontent.fgdl9-1.fna&oh=00_AfCUnMAbBKg3_UApc9x1opQvuejG3NgGBd_5ot3TfVjcSg&oe=6478D269'),
            ),
            const SizedBox(height: 20),
            Text(
              'Javier Alejandro Mejia Hernández',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 8),
            Text(
              'javier@gmail.com',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 8),
            Text(
              '4773333833',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 8),
            Text(
              '20',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 30),
            cardEditarCliente(context, 'Editar Perfil', '/editarCliente'),
            cardListaClientes(context, 'Clientes', '/listaClientes'),
            cardEliminar(context, 'Eliminar', '/route'),
            const SizedBox(height: 30),
            cardCerrarSesion(context)
          ],
        ),
      ),
    );
  }
}
