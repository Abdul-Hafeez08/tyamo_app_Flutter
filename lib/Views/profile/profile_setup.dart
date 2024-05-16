import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo_app/Views/Widgets/Auth/auth_text_field.dart';

class ProfileSetup extends StatelessWidget {
  ProfileSetup({super.key});

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  void loginbtn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          height: 40,
          width: double.infinity,
          child: Image.asset('assets/images/sms.png'),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              width: double.infinity,
              height: 50,
              child: Text(
                'Profile Setup',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            CircularProfileAvatar(
              '',
              borderColor: Colors.black45,
              borderWidth: 3,
              elevation: 2,
              radius: 60,
              initialsText: const Text(
                '+',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFieldAuth(
                  text: 'Your Name',
                  logo: Icons.person,
                  keybordtype: TextInputType.text,
                  obscuretext: false),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFieldAuth(
                  text: 'User Name',
                  logo: Icons.alternate_email,
                  keybordtype: TextInputType.text,
                  obscuretext: false),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.cyan,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1.0, 10.0),
                            blurRadius: 30)
                      ]),
                  child: const Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1.0, 10.0),
                            blurRadius: 30)
                      ]),
                  child: const Icon(
                    Icons.female,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RoundedLoadingButton(
                color: const Color.fromARGB(255, 0, 5, 79),
                width: 200,
                controller: _btnController,
                onPressed: () {
                  loginbtn();
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
