import 'package:fdah/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartImage extends StatelessWidget {
  const StartImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome to FDAH",
          style: Theme.of(context).textTheme.headline4!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: defaultPadding*2),
        Row(
          children: [
            Spacer(),
            Container(
              width: 300,
              height: 300,
              child: SvgPicture.asset("assets/start.svg"),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding*2),
      ],
    );
  }
}
