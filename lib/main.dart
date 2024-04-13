import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Professor Online - Projeto",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/telaLogin",
      routes: {
        "/telaLogin":(context) => const TelaLogin(),
        "/telaHome":(context) => const TelaHome()
      },
    );
  }
}

class TelaLogin extends StatelessWidget{
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 138, 98),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo_ProfessorOnline.png"),

              const SizedBox(height: 30),

              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person, color: Color.fromARGB(167, 255, 255, 255)),
                  label: Text("CPF:", style: TextStyle(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                  // Adição da borda no TextField
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock, color: Color.fromARGB(167, 255, 255, 255)),
                  label: Text("Senha:", style: TextStyle(color: Colors.white)),
                  // Adição da borda no TextField
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              
              const SizedBox(height: 16),

              SizedBox(
                width: 500,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 13, 176, 124)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )
                    )
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/telaHome");
                  }, 
                  child: const Text("Entrar", style: TextStyle(color: Colors.white))
                )
              ),

              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      
                    },
                    child: const Text("Primeiro acesso", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))
                    ),
                  TextButton(
                    onPressed: () {
                      
                    },
                    child: const Text("Recuperar senha", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))
                    )
                ],
              )


            ],
          ),
        )
      ),
    );
  }
}

class TelaHome extends StatelessWidget{
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Professor Online", style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromRGBO(56, 166, 119, 1),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.restart_alt), color: Colors.white,)
          ],
        ),
      body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              SizedBox(
                child: Image.asset("assets/imagem_ProfessorHome.jpg")
              ),
              
              Container(
                color: const Color.fromRGBO(178,223,220,1),
                width: 500,
                child: const Text(
                  "Professor Online SEDUC",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ), 
              ),
            
              Container(
                color: const Color.fromRGBO(178,223,220,1),
                width: 500,
                child: const Text(
                  "O portal do professor da rede estadual",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0
                  ),
                ), 
              ),
            
              Container(
                height: 30,
                color: const Color.fromRGBO(69, 209, 127, 1),
                width: 500,
                child: const Text(
                  "Seja bem vindo, professor Leonardo Carvalho",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ), 
              ),

              const Icon(Icons.local_library_outlined, size: 150),

              const Text("Nenhum item encontrado!", style: TextStyle(color: Color.fromARGB(255, 133, 133, 133), fontSize: 16))

            ],
          )
        ),
        drawer: Drawer(
                child: ListView(
                  children: const <Widget>[
                    UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("assets/perfil_Drawer.jpeg"),
                      ),
                      accountName: Text("Leonardo Carvalho"),
                      accountEmail: Text("O portal do professor da rede estadual"),
                      decoration: BoxDecoration(
                        color:  Color.fromRGBO(56, 166, 119, 1),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Dados Pessoais"),
                    ),
                    ListTile(
                      leading: Icon(Icons.watch_later_outlined),
                      title: Text("Horários"),
                    ),
                    ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text("Calendário Letivo"),
                    ),
                    ListTile(
                      leading: Icon(Icons.groups),
                      title: Text("Minhas Turmas"),
                    ),
                    ListTile(
                      leading: Icon(Icons.verified),
                      title: Text("Frequência"),
                    ),
                    ListTile(
                      leading: Icon(Icons.my_library_books_outlined),
                      title: Text("Avaliações e Notas"),
                    ),
                    ListTile(
                      leading: Icon(Icons.co_present_rounded),
                      title: Text("Plano de Ensino"),
                    ),
                    ListTile(
                      leading: Icon(Icons.class_outlined),
                      title: Text("Registro de Aulas"),
                    ),
                    ListTile(
                      leading: Icon(Icons.bookmark),
                      title: Text("Atividades"),
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text("Sair da Conta"),
                    ),

                    Divider(),

                    SizedBox(height: 10),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Informações",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    ListTile(
                      leading: Icon(Icons.restart_alt),
                      title: Text("Sincronizar"),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Configurações"),
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text("Sobre"),
                    ),

                    Divider(),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Desenvolvido por:", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                          SizedBox(child: Icon(Icons.facebook)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SEDUC Ceará / ASTIN", style: TextStyle(fontSize: 10)),
                          SizedBox(child: Icon(Icons.facebook)),
                        ],
                      ),
                    ),

            ]
          )
        ),
      ),
    );
  }
}