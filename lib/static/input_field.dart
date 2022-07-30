import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';


class InputField extends StatelessWidget {
   const InputField(
      {Key? key,
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
      this.onpressed})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {

    var border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 15, color: BLACK, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: GREY.withOpacity(0.15),
                  ),
                  BoxShadow(
                    color: WHITE,
                    spreadRadius: -2.0,
                    // blurRadius: isDark ? 0.0:5.0,
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  onChange(value);
                },
                expands: false,
                controller: controller,
                obscureText: obscure,
                // enabled: true, //Not clickable and not editable
                // readOnly: true,

                style: TextStyle(
                  fontSize: 14,
                  color: BLACK,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: new InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: onpressed,
                    icon: imageIcon != null
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ImageIcon(
                              AssetImage(imageIcon),
                              color: color,
                            ),
                          )
                        : Icon(
                            icon,
                            color: color,
                            size: 14,
                          ),
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: border,
                  disabledBorder: border,
                  // label: title,
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: hint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
