import 'package:flutter/material.dart';
import 'package:gdg_6_october/Presentation/Main_Widget/Auth_Field.dart';
import 'package:gdg_6_october/Presentation/Main_Widget/Logo.dart';
import 'package:gdg_6_october/Presentation/style/button/button.dart';
import 'package:gdg_6_october/Presentation/style/text/StaticText.dart';
TextEditingController username=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();
TextEditingController password2=TextEditingController();
List loginController=[username,email,password,password2,];
List labelList=[StaticText.username,StaticText.email,StaticText.password,StaticText.password2];

class SignUpBadge extends StatelessWidget {
  const SignUpBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logo(
            MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
            StaticText.signUp,
            labelList.length,
          ),
          authField(
            loginController.length,
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
            labelList,
            loginController,
          ),
          InkWell(
            onTap:(){
            },
            child: authButton(
              MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width,
              StaticText.signUp,
            ),
          ),
        ],
      ),
    );
  }
}
