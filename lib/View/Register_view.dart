
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/routes.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState() {
    _email=TextEditingController();
    _password=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
   _email.dispose();
   _password.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text('Register'),),
     body: Column(
          children: [
            TextField(
             controller: _email,
             autocorrect: false,
             enableSuggestions: false,
             keyboardType: TextInputType.emailAddress,
               decoration: const InputDecoration(
                hintText: 'Enter your email here',
              ),
            ),
            TextField(
              controller: _password,
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              decoration: const InputDecoration(
                hintText: 'Enter your password here',
              ),
            
            ),
      
            TextButton(onPressed: ()  {
             Navigator.of(context).pushNamedAndRemoveUntil(
                  notesroute, 
                 (route) => false,);
      
            },
            child: const Text('Register'),),
            TextButton(onPressed:() {
               Navigator.of(context).pushNamedAndRemoveUntil(loginroute, 
            (route) => false,);
            }, 
            child: const Text('Already registered? login here!'))
          ],
        ),
   );
  }
}

