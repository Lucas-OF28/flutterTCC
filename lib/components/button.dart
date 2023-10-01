import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;
  final bool tres;

  Button(
      {required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb,
      this.tres = false});

  Button.big(
      {required this.text,
      this.big = true,
      this.color = DEFAULT,
      required this.cb,
      this.tres = false});

  Button.operation(
      {required this.text,
      this.big = false,
      this.color = OPERATION,
      required this.cb,
      this.tres = false});

  Button.triple(
      {required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb,
      this.tres = true});

  @override
  Widget build(BuildContext context) {
    int flexValue = big
        ? 2
        : tres
            ? 3
            : 1;

    return Expanded(
      flex: flexValue,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                0), // Define o raio como 0 para bordas retas
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
