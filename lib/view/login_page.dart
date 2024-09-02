import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/gen/assets.gen.dart';
import 'package:tiktok_clone/view/register_page.dart';
import 'package:tiktok_clone/widgets/input_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailTextEditingController = TextEditingController();
TextEditingController pwTextEditingController = TextEditingController();
final bool progressBar = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image(
              image: Assets.images.tiktok.provider(),
              width: 220,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const Text(
              "Glad To See You!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: InputText(
                textEditingController: emailTextEditingController,
                labelString: "Email",
                iconData: Icons.email_outlined,
                isObsecure: false,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: InputText(
                textEditingController: pwTextEditingController,
                labelString: "Password",
                iconData: Icons.lock_outline,
                isObsecure: true,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            progressBar == false
                ? Column(
                    children: [
                      Container(
                        height: 50,
                        width: size.width / 1.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              progressBar == true;
                            });
                          },
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't Have an Account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            onTap: () => Get.to(const RegisterPage()),
                            child: const Text(
                              "Sign in Now!",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
