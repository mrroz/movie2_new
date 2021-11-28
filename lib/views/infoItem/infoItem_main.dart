// import 'dart:html';

// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class infoItem extends StatelessWidget {
  const infoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.orangeAccent,
      child: const Center(
        child: Text('infoItem'),
      ),
    );
  }
}
