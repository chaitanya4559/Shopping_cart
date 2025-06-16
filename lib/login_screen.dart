import 'package:flutter/material.dart';
import 'package:shopping_cart/register_screen.dart';
import 'package:shopping_cart/welcome_screen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/f704b3f5b054fbb63a40fc688f6b96ec.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(30.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: const Color.fromARGB(255, 192, 192, 192),
                ),
              ),
              Text(
                'Enter your Username & Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 192, 192, 192),
                ),
              ),
              SizedBox(height: 80.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: usernamecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty || value != "mike_4559") {
                    return 'Please enter a valid username';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 175, 175, 175),
                  ),
                  labelText: 'Enter a Valid Username',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 167, 167, 167),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: passwordcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty || value != "mike@4559") {
                    return 'Please enter a valid password';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 175, 175, 175),
                  ),
                  labelText: 'Enter your Password',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 167, 167, 167),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(31, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen2(name: "Mike"),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              SizedBox(height: 200),
              Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    'Create a new Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
