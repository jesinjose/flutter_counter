import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
      {Key? key,
      required this.name,
      required this.iconData,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData iconData;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 20,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
