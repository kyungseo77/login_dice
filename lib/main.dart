import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: (){}
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(
              top:50
            )),
            const Center(
              child: Image(
                image: AssetImage('image/chef.gif'),
                width: 170.0,
                height: 190.0,
              ),
            ),
            Form(
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.teal,
                    inputDecorationTheme: const InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 15.0
                      )
                    )
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                      children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter "dice"'
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Enter Password'
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                       const SizedBox(height: 40,),
                       ButtonTheme(
                         child: ElevatedButton(
                             style: ButtonStyle(
                                 backgroundColor:
                                 MaterialStateProperty.all<Color>(Colors.blue)),
                             onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                                const  SnackBar(content: Text('This is Login'))),
                             child: const Icon(
                                 Icons.arrow_forward,
                                 color: Colors.white,
                                 size:35.0)
                         ),
                      )
                    ],
                  )),
               )
            )
          ],
        ),
      ),
    );
  }
}
