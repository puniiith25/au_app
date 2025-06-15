import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Image.asset("asstes/images/au_logo.jpg"),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                labelText: "Login id",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 17),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 238, 240, 240),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 17),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 238, 240, 240),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                borderRadius: ,
                items: [DropdownMenuItem(child: Text('Hello'))],
                onChanged: (v) {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 8, 74, 189),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
