
import 'package:flutter/material.dart';

class EditarPerfil extends StatefulWidget {
  const EditarPerfil({super.key});

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {

  bool permitirAvanco = false;

  void verificarAlteracaoCampos(String texto){
    setState(() {
      permitirAvanco = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cancelar"),
                Text("Editar Perfil",
                  style: TextStyle(fontWeight: .bold),),
                Text(
                  "Concluir",
                  style: TextStyle(
                    fontWeight: .bold,
                    color: permitirAvanco ? Colors.blue : Colors.black12,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

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

          SizedBox(height: 12),

          Text(
            "Troque sua foto de perfil",
            style: TextStyle(color: Colors.blue),
          ),

          SizedBox(height: 20),

          Divider(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Nome"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "Miranha",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                      hintText: "Digite o novo nome",
                      border: UnderlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Username"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "MiranhaGameplays_123",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                        hintText: "Digite o novo username",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Website"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                        hintText: "Website",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Padding(
                    padding: EdgeInsets.only(top:15),
                    child: Text("Bio"),
                  ),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "Eu sou o miranha gameplays 123 tmj",
                    onChanged: verificarAlteracaoCampos,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "Bio",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15,),
          Divider(),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Row(
              children: [
                Text(
                  "Mudar para conta profissional",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Row(
              children: [
                Text(
                  "Informações privadas",
                  style: TextStyle(fontWeight: .bold),
                )
              ],
            ),
          ),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Email"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "miranhagameplays@gmail.com",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Fone"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "+55 11 4002-8922 ",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                        hintText: "Fone",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text("Gênero"),
                ),

                Expanded(
                  child: TextFormField(
                    initialValue: "Aranha",
                    onChanged: verificarAlteracaoCampos,
                    decoration: InputDecoration(
                        hintText: "Gênero",
                        border: UnderlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black38)
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
