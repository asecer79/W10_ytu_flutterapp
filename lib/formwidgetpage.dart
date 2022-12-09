import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                        controller: firstNameController,
                        validator: (firstName) {
                          if (firstName!.isEmpty) {
                            return "First name is required!";
                          }
                        },
                        decoration: InputDecoration(hintText: "First name")),
                    TextFormField(
                        controller: lastNameController,
                        validator: (lastName) {
                          if (lastName!.isEmpty) {
                            return "Last name is required!";
                          }
                        },
                        decoration: InputDecoration(hintText: "Last name")),
                    TextFormField(
                        controller: emailController,
                        validator: (email) {},
                        decoration: InputDecoration(hintText: "Email")),
                    TextFormField(
                        controller: passwordController,
                        validator: (value) {},
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password")),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  firstNameController.text = "";
                                  lastNameController.text = "";
                                  emailController.text = "";
                                  passwordController.text = "";
                                });
                              },
                              child: Text("Clear form")),
                          ElevatedButton(
                              onPressed: () {
                                bool isFormValid =
                                    formKey.currentState!.validate();

                                if (isFormValid) {
                                  print("Folowing info saved in db");
                                  print(firstNameController.text);
                                  print(lastNameController.text);
                                  print(emailController.text);
                                  print(passwordController.text);
                                } else {
                                  print("Check the informations");
                                }
                              },
                              child: Text("Register")),
                        ])
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
