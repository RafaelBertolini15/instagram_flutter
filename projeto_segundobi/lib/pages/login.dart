import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController campoLogin = new TextEditingController();
  TextEditingController campoSenha = new TextEditingController();
  bool loginPreenchido = false;

  void alterarValorPreenchido(String texto){
    setState(() {
      if(campoSenha.text != "" && campoSenha.text != null){
        loginPreenchido = true;
      }else{
        loginPreenchido = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 16),
              GestureDetector(
                child: Icon(Icons.arrow_back_ios),
                onTap: () => {Navigator.pop(context)},
              ),
            ],
          ),
          SizedBox(height: 50),
          Image.asset('images/logo.png'),
          SizedBox(height: 52),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 16, right: 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hint: Text('Login'),
                    filled: true,
                    fillColor: Color(0xFFFAFAFA),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: .emailAddress,
                  controller: campoLogin,
                ),

                SizedBox(height: 12),

                TextField(
                  onChanged: alterarValorPreenchido,
                  decoration: InputDecoration(
                    hint: Text('Senha'),
                    filled: true,
                    fillColor: Color(0xFFFAFAFA),
                    border: OutlineInputBorder(),
                  ),
                  controller: campoSenha,
                  obscureText: true,
                ),

                SizedBox(height: 19),

                Row(
                  crossAxisAlignment: .end,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(color: Color(0xFF3797EF)),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                FilledButton(
                  onPressed: () => {Navigator.pushNamed(context, '/login')},
                  child: Text(
                    "Conecte-se",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: loginPreenchido == false ? Color(0XFFBDDCFA) : Color(0XFF3797EF),
                    fixedSize: Size(343, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 37),
          GestureDetector(
            child: Row(
              spacing: 10,
              mainAxisAlignment: .center,
              children: [
                Icon(Icons.facebook),
                Text(
                  "Logar com Facebook",
                  style: TextStyle(color: Color(0xFF3797EF)),
                ),
              ],
            ),
          ),
          SizedBox(height: 41),

          Padding(
            padding: .only(left: 16, right: 16),
            child: Stack(
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Container(
                      width: 60,
                      height: 20,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Text(
                            "OU",
                            style: TextStyle(
                              fontWeight: .bold,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 42),
          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                "Não possuí conta? ",
                style: TextStyle(color: Color(0x66000000)),
              ),
              GestureDetector(
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(fontWeight: .bold, color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 101,),
          Divider(),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                "Istagram OT Facebook",
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
