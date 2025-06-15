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
          SizedBox(height: 35),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 250, 250, 250),
                    width: 1.5,
                  ),
                  color: const Color.fromARGB(255, 218, 219, 221),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: null, // 👈 nothing selected initially
                  hint: Text(
                    "Select College / Branch",
                  ), // 👈 default shown text
                  underline: SizedBox(), // removes default underline
                  isExpanded: true,
                  dropdownColor: Color.fromARGB(255, 219, 221, 223),
                  items: [
                    DropdownMenuItem(
                      value: null,
                      enabled: false, // 👈 fixed item that can't be selected
                      child: Text(
                        "Choose Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'BTECH CSE',
                      child: Text('BTECH CSE'),
                    ),
                    DropdownMenuItem(
                      value: 'BTECH AIML',
                      child: Text('BTECH AIML'),
                    ),
                  ],
                  onChanged: (value) {
                    // Only allow if not null
                    if (value != null) {
                      // do something with value
                    }
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
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
                SizedBox(width: 50),
                Container(
                  child: SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 18, 74, 164),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min, // keep content compact
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          SizedBox(width: 8), // spacing between text and icon
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ), // 👈 Icon on right side
                        ],
                      ),
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
