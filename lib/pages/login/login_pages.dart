import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final passwordVisible = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            heightFactor: 1.0,
            widthFactor: 5.0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 90, 40, 30),
              child: Text(
                "BukuKu",
                style: TextStyle(
                    color: Color.fromARGB(201, 8, 160, 112),
                    fontSize: 38,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Center(
            heightFactor: 1.2,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(9),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color.fromARGB(246, 75, 75, 75)),
                ),
              )
            ]),
          ),
          Form(
            key: _formkey,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailTextController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email tidak boleh kosong";
                        }
                        return null;
                      },
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "Email/Username",
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordTextController,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.key,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(201, 8, 160, 112),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




