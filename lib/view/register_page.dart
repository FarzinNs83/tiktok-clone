import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/gen/assets.gen.dart';
import 'package:tiktok_clone/view/login_page.dart';
import 'package:tiktok_clone/widgets/input_text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController userNameTextEditingController = TextEditingController();
TextEditingController emailTextEditingController = TextEditingController();
TextEditingController pwTextEditingController = TextEditingController();
const bool progressBar = false;

class _RegisterPageState extends State<RegisterPage> {
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
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const Text(
              "Let's Get Started Now!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 80,
                backgroundImage: Assets.images.avatar.provider(),
                backgroundColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: InputText(
                textEditingController: userNameTextEditingController,
                labelString: "Username",
                iconData: Icons.person_2_outlined,
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
                              "Register",
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
                            "Already Have An Account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            onTap: () => Get.to(() => const LoginPage()),
                            child: const Text(
                              "Login Now!",
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
