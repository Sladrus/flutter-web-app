import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  final onTap;
  bool isButtonPressed;

  NeuButton({super.key, this.onTap, required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 100,
        width: 100,
        child: Icon(
          isButtonPressed ? Icons.favorite : Icons.favorite_border,
          size: 60,
          color: isButtonPressed ? Colors.red[400] : Colors.red[300],
        ),
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color:
                  isButtonPressed ? Colors.blue.shade200 : Colors.blue.shade300,
            ),
            boxShadow: isButtonPressed
                ? []
                : [
                    BoxShadow(
                      color: Colors.blue.shade500,
                      offset: Offset(4, 4),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.blue.shade200,
                      offset: Offset(-4, -4),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]),
      ),
    );
  }
}
