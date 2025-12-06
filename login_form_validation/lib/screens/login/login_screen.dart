import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 20,
            children: [
              SizedBox(height: 200),
              FlutterLogo(size: 100),
              Text('Login Here', style: TextStyle(fontSize: 25)),

              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hint: Text("Enter email"),
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
                validator: (value){
                  if(value ==null ||value.isEmpty){
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hint: Text("Enter password"),
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
                validator: (value){
                  if(value ==null ||value.isEmpty){
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),

              SizedBox(
                width: .infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      print('${email.text} ${password.text}');
                    }
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15)
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: .end,
                children: [
                  TextButton(onPressed: () {}, child: Text('Forget password ?')),
                ],
              ),
              Spacer(),
              OutlinedButton(
                onPressed: () {},
                child: Text("Don't have an account ?"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
