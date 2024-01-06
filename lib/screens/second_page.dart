import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      centerTitle: true,
      title: const Text(
        "Second Page",
      ),
    );
  }

  buildBody() {
    return const Center(
      child: Text("Second Page"),
    );
  }
}
