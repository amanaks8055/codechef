// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/routes.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  
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
    appBar: AppBar(title: const Text('Login'),),
     body: Column(
          children: [
            // 
             Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter email", labelText: "email"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter passwprd",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
      
            TextButton(onPressed: ()  {
              
           
             
                  Navigator.of(context).pushNamedAndRemoveUntil(
                  notesroute, 
                 (route) => false,);
             

             
           
           
          //  on FirebaseAuthException catch(e) {
          //   if(e.code=='user-not-found')
          //   {
          //     await showErrorDialog(context,'user not found');
          //   }
             
          //    else if(e.code=='wrong-password')
          //    {
          //    await showErrorDialog(context,'wrong password');
           
          //    }

          //    else 
          //    {
          //     await showErrorDialog(context,'Error: ${e.code}',);
          //    }
          //  }
          //  catch (e){
          //   await showErrorDialog(context,e.toString());
          //  }

           
            
            },
            child: const Text('Login'),),
   
            TextButton(onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(registerroute, 
              (route) => false,
              );
            }, child: const Text('Not registered yet? Register here!'),)
          ],
        ),
             );
  }
 
 
 
}


