import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),

      body: Form(
        key: formKey,
        child: Column(
          spacing: 20,
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hint: Text('Name')
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please enter your name';
                }
                return null;
              },

            ),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                  hint: Text('Phone')
              ),
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  hint: Text('Email')
              ),
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  hint: Text('Password')
              ),
            ),
        
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){
                print('Name ${name.text}');
                print('Phone ${phone.text}');
                print('Email ${email.text}');
                print('Password ${password.text}');
              }
            }, child: Text('Register'))
          ],
        ),
      ),
    );
  }
}
