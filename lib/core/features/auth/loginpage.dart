
import 'package:bootcamb_1/core/features/HomeScreen/homeScreen.dart';
import 'package:bootcamb_1/core/features/auth/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}
 class _LoginPageState extends State<LoginPage>{

 final TextEditingController emailcontroller = TextEditingController();
 final TextEditingController passwcontroller = TextEditingController();


 void Login()
 {
   String email = emailcontroller.text.trim();
   String pass  = passwcontroller.text.trim();

   if ( email == "admin@admin.com" && pass == "123")
   {
     Navigator.pushReplacement(context,
         MaterialPageRoute(builder: (_) =>const Homepage()));
   }else
   {
     ScaffoldMessenger.of(context).showSnackBar(
  const   SnackBar(
       content:const Text("Data is invalid"),
       backgroundColor: Colors.red));
   }
 }

 @override
  void dispose() {
    emailcontroller.dispose();
    passwcontroller.dispose();
    super.dispose();
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:const Text("Login",
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
          color: Colors.white
        ),),),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text(
                  'Login Screen',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight:FontWeight.bold,
                  color: Colors.blue
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder()
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),

              ),
              const SizedBox(
                height: 20,
              ),
               SizedBox(
                width: double.infinity,
                child:  ElevatedButton(

                    onPressed:  Login,
                    child:const Text('Login')),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have Account?" , style:
                    TextStyle(
                      fontWeight: FontWeight.bold
                    ) ),
                  TextButton(onPressed:(){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (_)=>const SignUpPage()));
                  },
                      child:const Text("SignUp",
                      style: TextStyle(
                        color:Colors.blue ,
                        decoration: TextDecoration.underline,
                      )))
                ],
              )

            ],
          )
      )

    );
  }
}

