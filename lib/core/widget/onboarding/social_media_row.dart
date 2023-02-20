import 'package:flutter/material.dart';

class SocialMediaNow extends StatelessWidget {
  const SocialMediaNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

        // IconButton(
        //   onPressed: () {},
        //   style: TextButton.styleFrom(
        //       padding: EdgeInsets.zero,
        //       // minimumSize: Size(50, 30),
        //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //       alignment: Alignment.centerLeft),
        //   icon: const Icon(
        //     Icons.facebook,
        //     color: Colors.blue,
        //   ),
        // ),