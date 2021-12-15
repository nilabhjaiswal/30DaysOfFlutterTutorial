import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
    setState(() {
      changedButton = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    await Navigator.pushNamed(context, MyRoutes.homeRoutes);
    setState(() {
      changedButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginPage.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),
              Text(
                "welcome to the login page $name",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please fill username on textfield";
                        } else if (value.length < 8) {
                          return "Please enter 8 letter username";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(
                            () {}); //this class only works with statefullwigets
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please fill password on textfield";
                          } else if (value.length < 6) {
                            return "password lenght on textfield should be 6";
                          }
                          return null;
                        }),
                    const SizedBox(height: 40.0),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changedButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changedButton
                              ? const Icon(Icons.done, color: Colors.white)
                              : const Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                          /*decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              //shape: changedButton ? BoxShape.circle : BoxShape.rectangle, //this method is used to change the shape of button onclick
                              borderRadius:
                                  BorderRadius.circular(changedButton ? 50 : 8)),*/
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
