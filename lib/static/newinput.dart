import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class newInputField extends StatelessWidget {
  const newInputField({
    Key? key,
    this.controller,
    @required this.title,
    this.hint,
    this.text,
    this.icon,
    this.imageIcon,
    this.color,
    this.obscure = false,
    this.ontap,
    this.onChange,
    this.onpressed,
    this.errortext,
    this.validator,
  }) : super(key: key);

  final controller;
  final title;
  final obscure;
  final hint;
  final text;
  final icon;
  final imageIcon;
  final color;
  final ontap;
  final onChange;
  final onpressed;
  final errortext;
  final validator;

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          //  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          TextFormField(
            onChanged: (value) {
              onChange(value);
            },
            expands: false,
            controller: controller,
            obscureText: obscure,
            style: TextStyle(
              fontSize: 14,
              color: BLACK,
            ),
            decoration: InputDecoration(
                //    focusedBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color: MAIN_COLOR, width: 1.0),
                // ),
                // enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color:GREY, width: 1.0),
                // ),
                //  errorBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color:Red, width: 1.0),
                // ),
                border: const OutlineInputBorder(),
                disabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MAIN_COLOR, width: 2.0),
                ),
                hintText: hint,
                errorText: errortext,
                ),
                validator:validator,
          ),
        ],
      ),
    );
  }
}
