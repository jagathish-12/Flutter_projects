import 'package:flutter/material.dart';

import 'Custom_widgets/functions.dart';
import 'Home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.lightBlue, Colors.purple]),
        ),
        child: Center(
          child: Container(
            width: 750,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: 400,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(230),
                      bottomRight: Radius.circular(230),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Image.asset('assets/facebook.png'),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Image.asset('assets/twitter.png'),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Image.asset('assets/linkedin.png'),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Image.asset('assets/pinterest.png'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.contacts_sharp),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.password),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          String name = nameController.text.trim();
                          String email = emailController.text.trim();
                          String password = passwordController.text.trim();

                          if (name.isEmpty) {
                            showMessage(context, 'Name should not be empty');
                          } else if (email.isEmpty) {
                            showMessage(context, 'Email should not be empty');
                          } else if (!email.contains('@')) {
                            showMessage(context, 'Enter a valid email address');
                          } else if (password.isEmpty) {
                            showMessage(context, 'Password cannot be empty');
                          } else if (password.length <= 7) {
                            showMessage(
                              context,
                              'Password should be 8 characters',
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
