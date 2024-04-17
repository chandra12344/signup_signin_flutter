import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/registration_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool visible = true;
  bool checkKey = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen",style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.white,
        elevation: 2.0,
        shadowColor: Colors.pink,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Email Address",
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: checkKey
                  ? TextInputType.number
                  : TextInputType.text,
              onChanged: (value) {
                if (value.length > 1) {
                  checkKey = true;
                } else {
                  checkKey = false;
                }
              },
              controller: username,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  hintText: "Enter email address",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                )
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Password",
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: visible,
              controller: password,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  hintText: "Enter username",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(visible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined),
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),


                )
            ),
            const SizedBox(
              height: 26.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink.shade600, // Background Color
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),

             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New User? ',
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                Get.to(const RegistrationScreen());
                  },
                  child: const Text(
                    'Registration',
                    style: TextStyle(
                        fontSize: 16.0, color: Colors.pink),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
