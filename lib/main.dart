import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fest',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Festly'),
        backgroundColor: const Color.fromARGB(255, 73, 77, 73),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Container(
        color: Colors.grey[200], // Define a cor de fundo cinza
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage('assets/ciclismo.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'MAIS UMA MARATONA DE CICLISMO CHEGANDO E DESSA VEZ MAIS INSANA QUE NUNCA',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Uma trilha cheia de obstáculos e manobras, se quiser sobreviver e não se ralar, é bom que a manutenção da sua Bike esteja em dia, pois o parque Ibirapuera vai pegar fogo na pista',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Comprar ingressos',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[800],
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
