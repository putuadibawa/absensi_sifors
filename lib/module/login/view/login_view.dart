import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/Logo Sifors.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              const Center(
                child: Text(
                  "Giat Sifors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: 'admin@gmail.com',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.email,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your email address',
                        ),
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        initialValue: '123456',
                        maxLength: 20,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.password,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: 'Enter your password',
                        ),
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Lupa Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const DashboardMahasiswaView(),
                            ),
                          );
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/Google Sign Up.png",
                          // width: 120.0,
                          height: 40.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
