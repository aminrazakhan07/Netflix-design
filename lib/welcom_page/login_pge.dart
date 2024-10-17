// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:net_flix_move/screen/home_scr.dart';
import 'package:net_flix_move/welcom_page/navigat_pge.dart';
import 'package:net_flix_move/welcom_page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passcodController = TextEditingController();

/////
  final Map<String, String> _userMapping = {
    'user@example.com': 'password123',
  };
  void _login(BuildContext context) {
    final userName = _emailController.text;
    final passcodes = _passcodController.text;
    if (_userMapping.containsKey(userName) &&
        _userMapping[userName] == passcodes) {
      print('Login successful');
    } else {
      print('Invalid User Name or Password');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //// Gradient Bg
        width: size.width / 1,
        height: size.height / 1,

        decoration: BoxDecoration(
          //////// Bg Img
          image: DecorationImage(
            image: AssetImage('assets/bgm.png'),
            fit: BoxFit.cover,
          ),
        ),

        //////////
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),

              /////// Opacity Container
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(186, 29, 28, 28),
                ),
                height: size.height / 1.1,
                width: size.width / 5,

                ///////////////
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /////////// Logo Heading
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Image.asset(
                        'assets/netflix_logo.png',
                        width: size.width,
                        height: size.height / 6,
                      ),
                    ),

                    ///////// Email Field
                    SizedBox(
                      height: 1,
                    ),
                    Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            errorText: null,
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.none,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.left,
                          autofocus: true,
                          autocorrect: true,
                          maxLength: 50,
                          cursorColor: Colors.blue,
                          cursorWidth: 2.0,
                          onChanged: (value) {
                            print('Email: $value');
                          },
                        ),
                        ///// PassCodes Field
                        TextField(
                          controller: _passcodController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            errorText: null,
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                          obscureText: true,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.left,
                          cursorColor: Colors.blue,
                          cursorWidth: 2.0,
                          onSubmitted: (value) {
                            print('Password submitted: $value');
                          },
                          maxLength: 20,
                        ),
                      ],
                    ),

                    // Container(),

                    /////// On Pressed Button
                    // const SizedBox(height: 15.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        /////
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          // side: BorderSide(color: Colors.green),
                        ),
                        backgroundColor: const Color.fromARGB(255, 224, 0, 0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 10.0),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontFamily: 'Bungasai',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Navigation_scr(),
                            ));
                      },
                    ),
                    ////// Other Text
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              checkColor: Colors.red,
                              activeColor: Colors.white,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Remaining',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget Pass Codes?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: const Text(
                        'Go to Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
