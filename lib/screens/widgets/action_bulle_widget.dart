import 'package:flutter/material.dart';

class ActionBulle extends StatelessWidget {
  final String label;
  final IconData iconBulle;
  final Color colorsBulle;
  const ActionBulle({
    Key? key,
    required this.label,
    required this.iconBulle,
    required this.colorsBulle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: colorsBulle.withOpacity(0.3),
          radius: 30,
          child: Icon(
            iconBulle,
            color: colorsBulle,
            size: 45,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
