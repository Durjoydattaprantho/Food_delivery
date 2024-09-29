import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/pages/home_page.dart';

class loginpage extends StatefulWidget {
final void Function()? onTap;


   const loginpage({
     super.key,
     required this.onTap,
   });

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  //login method
  void login(){
    //fill not authoentication here...

    //negigator to home page
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const homePage()
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 20,
            ),

            //message , app slogan
            Text(
              "Food Delevary App",
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 20,),

            // email textField
            myTextField(
                controller: emailController,
                hintText: "Email",
                onscureText: false
            ),
            SizedBox(height: 10,),

            //password textfield
            myTextField(
                controller: passwordController,
                hintText: "Password",
                onscureText: true
            ),
            SizedBox(height: 10,),

            //sign in button
            myButton(
                text: "Sign In",
                onTap: (){
                  login();
                }
            ),
            SizedBox(height: 10,),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a Number?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register Now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
