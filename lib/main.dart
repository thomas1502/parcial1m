import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Bienvenido',
                style: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 75.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Color(0xFF6750A4), // Color del texto
              ),
              decoration: InputDecoration(
                labelText: 'Correo',
                labelStyle: const TextStyle(
                  color: Color(0xFF6750A4), // Color del texto de la etiqueta
                ),
                filled: true,
                fillColor: Colors.transparent, // Fondo transparente
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF6750A4)), // Color del borde
                  borderRadius: BorderRadius.circular(0.0), // Bordes cuadrados
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF6750A4)), // Color del borde
                  borderRadius: BorderRadius.circular(0.0), // Bordes cuadrados
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              style: TextStyle(
                color: Color(0xFF6750A4), // Color del texto
              ),
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: const TextStyle(
                  color: Color(0xFF6750A4), // Color del texto de la etiqueta
                ),
                filled: true,
                fillColor: Colors.transparent, // Fondo transparente
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF6750A4)), // Color del borde
                  borderRadius: BorderRadius.circular(0.0), // Bordes cuadrados
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF6750A4)), // Color del borde
                  borderRadius: BorderRadius.circular(0.0), // Bordes cuadrados
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Align(
              alignment: Alignment.centerLeft, // Alinea a la izquierda
              child: RichText(
                text: const TextSpan(
                  text: 'No tienes cuenta, ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), // Color del texto
                    fontSize: 14.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'regístrate',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 70.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6750A4), // Color de fondo personalizado
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Botón redondo
                ),
                minimumSize: Size(300, 50), // Tamaño más grande
              ),
              child: const Text(
                'Siguiente',
                style: TextStyle(
                  fontSize: 15.0, // Tamaño de fuente más grande
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
