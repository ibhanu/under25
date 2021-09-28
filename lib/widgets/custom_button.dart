import 'package:flutter/material.dart';

Container customButton({Widget? child, String? src}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      image: src != null ? DecorationImage(image: NetworkImage(src)) : null,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade400,
            offset: const Offset(2.0, 2.0),
            blurRadius: 5),
      ],
    ),
    child: Center(child: child),
  );
}
