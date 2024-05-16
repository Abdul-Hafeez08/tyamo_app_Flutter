import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

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
              radius: 70,
              initialsText: const Text(
                '+',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
