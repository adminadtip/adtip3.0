import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoteButton extends StatelessWidget {
  const PromoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Promote',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 10,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.star,
            size: 15,
          ),
        ],
      ),
    );
  }
}
