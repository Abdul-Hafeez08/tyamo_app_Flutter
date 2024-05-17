import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: SizedBox(
            height: 40,
            child: Image.asset('assets/images/sms.png'),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.cyan,
            child: Text(
              'See Recived Invitation',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Container(
            height: 330,
            width: 330,
            child: Image.asset(
              'assets/images/invite.png',
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Recived Invitation are currently ',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                    fontSize: 16),
              ),
              Text(
                'Empty',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                    fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
