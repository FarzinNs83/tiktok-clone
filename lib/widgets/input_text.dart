import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController textEditingController;
  final IconData? iconData;
  final String? assetRefrence;
  final String? labelString;
  final bool isObsecure;

  const InputText(
      {super.key,
      required this.textEditingController,
      this.iconData,
      this.assetRefrence,
      required this.labelString,
      required this.isObsecure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          labelText: labelString,
          prefixIcon: iconData != null
              ? Icon(iconData)
              : Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    assetRefrence!,
                    width: 10,
                  ),
                ),
          labelStyle: const TextStyle(
            fontSize: 16,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
