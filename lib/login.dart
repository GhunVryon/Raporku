import 'package:flutter/material.dart';
import 'package:rapor/myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputKataSandi = TextEditingController();

  void masuk() {
    if (inputEmail.text.isEmpty || inputKataSandi.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email dan Kata Sandi Harus Diisi")),
      );
      return;
    }
    if (inputEmail.text == "20241001@smk.sch.id" &&
        inputKataSandi.text == "12345678") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email atau Kata Sandi Salah")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RAPORKU"),
        backgroundColor: Color(0xffFFFFFF),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              Center(
                child: Image(
                  image: AssetImage("asset/rp_app_icon_512.png"),
                  width: 200,
                  height: 200,
                ),
              ),

              TextField(
                controller: inputEmail,
                decoration: InputDecoration(
                  hintText: "Masukan Email",
                  filled: true,
                  fillColor: Color(0xff2B50A0),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: inputKataSandi,
                decoration: InputDecoration(
                  hintText: "Masukan Kata Sandi",
                  filled: true,
                  fillColor: Color(0xff2B50A0),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(onPressed: masuk, child: const Text("Masuk")),
            ],
          ),
        ),
      ),
    );
  }
}
