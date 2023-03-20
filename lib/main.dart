import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN")),
          backgroundColor: Color.fromARGB(255, 141, 227, 107),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(" WELCOME BACK",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 35))),
              Center(
                  child:
                      Text("Signing up or login to see our top picks for you")),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 187, 231, 158),
                      Color.fromARGB(255, 85, 226, 69),
                      Color.fromARGB(255, 175, 221, 155)
                    ])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25, letterSpacing: 2, color: Colors.black),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("forgot password?")),
                  TextButton(onPressed: () {}, child: Text("Reset Here"))
                ],
              ),
              Center(child: Text("Or login with")),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 233, 201, 131),
                      Color.fromARGB(255, 194, 155, 37),
                      Color.fromARGB(255, 233, 201, 131)
                    ])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 253, 252, 252)),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Divider(
                  height: 8,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? "),
                  TextButton(
                    onPressed: () {
                      print("tapped register");
                    },
                    child: Text(
                      "Register Account",
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
