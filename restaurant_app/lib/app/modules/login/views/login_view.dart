import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/colors.dart';
import 'package:restaurant_app/app/widgets/my_password_field.dart';
import 'package:restaurant_app/app/widgets/text_form_field.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        extendBodyBehindAppBar: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      color: primaryclr,
                      fontSize: 25.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "welcome to smart food",
                  style: TextStyle(
                      color: primaryclr,
                      fontSize: 15.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 100,
                ),
                Form(
                  child: Column(
                    children: [
                      MyTextFormField(
                        controller: nameController,
                        labelText: "Email",
                        enabled: true,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      MyPasswordField(
                        labelText: "password",
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () => Get.toNamed('/bottom-bar'),
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          width: Get.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(28.0)),
                              color: primaryclr,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 5,
                                  blurRadius: 6,
                                  offset: const Offset(0, 5),
                                ),
                              ]),
                          child: const Text(
                            'LogIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocialLoginButton(
                          buttonType: SocialLoginButtonType.google,
                          width: Get.width * 0.4,
                          text: 'Google',
                          fontSize: 15,
                          borderRadius: 18,
                          // textColor: ,
                          // height: 15,
                          imageWidth: 25,
                          backgroundColor: Colors.white,
                          onPressed: () {}),
                      SocialLoginButton(
                          width: Get.width * 0.4,
                          text: 'apple',
                          borderRadius: 18,
                          fontSize: 15,
                          imageWidth: 25,
                          // backgroundColor: Colors.white,
                          buttonType: SocialLoginButtonType.apple,
                          onPressed: () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? Signup ",
                      ),
                      InkWell(
                        onTap: () => Get.toNamed('/signup'),
                        child: const Text(
                          "Here",
                          style: TextStyle(
                            fontSize: 15,
                            color: primaryclr,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
