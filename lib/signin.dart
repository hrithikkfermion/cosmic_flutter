import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.png"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  "images/cosmicTitle.png",
                  alignment: Alignment.topCenter,
                ),
                const SizedBox(
                  height: 90,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0)),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: "Email",
                      focusColor: Colors.white,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                          const BorderSide(color: Colors.white, width: 0)),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      hintText: "Password",
                      fillColor: Colors.black45,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.tealAccent.shade400,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.lightBlue, Colors.teal]),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text.toString().isNotEmpty &&
                          passwordController.text.toString().isNotEmpty) {
                        Navigator.pushNamed(context,'/homescreen');
                      } else {
                        var snackBar = const SnackBar(
                          content: Text('Enter all the details'),
                          backgroundColor: Colors.transparent,
                          elevation: 4,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(100, 40)),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "--------- or sign in using ----------",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/twitter.png"),
                      Image.asset("images/facebook.png"),
                      Image.asset("images/google.png")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
