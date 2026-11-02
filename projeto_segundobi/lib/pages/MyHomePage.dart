import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_segundobi/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Image.asset('images/logo.png'),
          SizedBox(height: 52),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: .cover,
                    image: NetworkImage(
                      'https://static.wikia.nocookie.net/grupo-falcons/images/a/a5/MirLI.png/revision/latest?cb=20221217221022&path-prefix=pt-br',
                    ),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 13),
              Text("Miranha"),
            ],
          ),
          SizedBox(height: 12),
          FilledButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/login')
            },
            child: Text("Conecte-se", style: TextStyle(color: Colors.white)),
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xFF3797EF),
              fixedSize: Size(307, 44),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5)
              ),
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            child: Text(
              "Trocar de Contas",
              style: TextStyle(color: Color(0xFF3797EF)),
            ),
          ),
          SizedBox(height: 169),
          Divider(),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                "Não possuí conta? ",
                style: TextStyle(color: Color(0x66000000)),
              ),
              GestureDetector(
                child: Text("Cadastre-se", style: TextStyle(fontWeight: .bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
