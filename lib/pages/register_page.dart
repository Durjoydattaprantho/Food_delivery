import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

class registerPage extends StatefulWidget {
  final void Function()? onTap;



  const registerPage({
    super.key,
    required this.onTap
  });

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController = TextEditingController();

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
              "Let's create an account for you",
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


            //confirm password textfield
            myTextField(
                controller: confirmpasswordController,
                hintText: "Confirm Password",
                onscureText: true
            ),
            SizedBox(height: 10,),

            //sign up button
            myButton(
                text: "Sign Up",
                onTap: (){

                }
            ),
            SizedBox(height: 10,),

            //already h?ave an account? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already h?ave an account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 5,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
