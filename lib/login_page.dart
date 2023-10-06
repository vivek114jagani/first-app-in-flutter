import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formkey = GlobalKey<FormState>();
  bool obScureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        autovalidateMode: AutovalidateMode.always,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 170,
                ),
                const Text(
                  'Sing In',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 95,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*field can't be empty\n*Please enter your name";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      // labelText: 'Name',
                      suffixIcon: Icon(Icons.person),
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value == null || value.isEmpty) {
                        return "*field can't be empty";
                      } else if (value.length != 8) {
                        return "*Your password should be 8 digits only ";
                      } else {
                        if (!regex.hasMatch(value)) {
                          return "please, enter valid password";
                        }
                      }
                      return null;
                    },
                    obscureText: obScureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obScureText = !obScureText;
                          });
                        },
                        icon: obScureText == false
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      hintText: 'Password',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 45),
                    elevation: 0,
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      //   formkey.currentState!.reset();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have Account?",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sing Up',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
