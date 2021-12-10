//import 'package:userswelove/constants.dart';
//import 'package:userswelove/models/user.dart';
import 'package:averagemode/constants.dart';
import 'package:averagemode/user.dart';
import 'package:flutter/material.dart';

class userCard extends StatefulWidget {
  final User? user;

  const userCard({Key? key, required this.user}) : super(key: key);

  @override
  State<userCard> createState() => _userCardState();
}

class _userCardState extends State<userCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: size.width * 0.36,
              height: size.height / 4,
              child: Image.network(
                widget.user!.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            padding: const EdgeInsets.only(
              bottom: 34.0,
              top: 18.0,
              left: 14.0,
              right: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.user!.name,
                  style: kronosH2Black,
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                  widget.user!.email,
                  style: kronosH1Black,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Almost " + widget.user!.lat.toString() + " years",
                  style: kronosH4Black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
