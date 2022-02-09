import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// thank you ! https://www.youtube.com/watch?v=eV1UNxgJvPI
class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NeumorphismButton();
}

class _NeumorphismButton extends State<NeumorphismButton> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: _isElevated
                    ? [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          offset: const Offset(20, 20),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 15,
                          spreadRadius: 1,
                        )
                      ]
                    : null),
          ),
        ),
      ),
    );
  }
}
