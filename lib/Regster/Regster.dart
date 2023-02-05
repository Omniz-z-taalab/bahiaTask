import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login/Login.dart';

class Regster extends StatefulWidget {
  const Regster({Key? key}) : super(key: key);

  @override
  State<Regster> createState() => _RegsterState();
}

class _RegsterState extends State<Regster> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                  height: 183,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('assets/login1.png'),
                          fit: BoxFit.none))),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 100.0,
                left: 100,
              ),
              child: Text(
                'Enter your information to create your account.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black38),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: Color(0xFFFF4572)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFF4572)),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xFFFF4572)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFF4572)),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFFFF4572)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFF4572)),
                      ),
                    )),
              ),
            ),
            // const SizedBox(height: 10,),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFFF4572),
                    borderRadius: BorderRadius.circular(30)),
                child: const Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80.0, left: 80),
              child: Row(
                children: [
                  const Text(
                    'Do you have an account? ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.pinkAccent),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
