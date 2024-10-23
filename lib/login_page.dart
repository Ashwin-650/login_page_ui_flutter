import 'package:flutter/material.dart';
import 'package:login_page_ui_flutter/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final querry = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: querry.height / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/copy.jpeg'),
                          fit: BoxFit.fill)),
                ),
                const Positioned(
                    child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Email or Phone number",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  if (emailcontroller.text == "ashwin@gmail.com" &&
                      passwordcontroller.text == "123456") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Error"),
                      backgroundColor: Colors.redAccent,
                    ));
                  }
                },
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 28, 101, 143),
                        Color.fromARGB(255, 127, 201, 201),
                        Color.fromARGB(255, 200, 222, 224)
                      ])),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Forgot pasword ?",
              style: TextStyle(
                  color: Color.fromARGB(255, 28, 101, 143),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
