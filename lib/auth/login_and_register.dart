import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/register_page.dart';
class loginandRegister extends StatefulWidget {
  const loginandRegister({super.key});

  @override
  State<loginandRegister> createState() => _loginandRegisterState();
}

class _loginandRegisterState extends State<loginandRegister> {

  //initially, show login page
  bool showLoginPage = true;


  //toggle between login and register page
  void togglePage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return loginpage(onTap: togglePage);
    }else{
      return registerPage(onTap: togglePage);
    }
  }
}
