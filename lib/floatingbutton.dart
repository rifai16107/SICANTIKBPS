import "package:flutter/material.dart";

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAB'),
      ),
      body: Column(
        children: const [Text("Selamat Datang"), Text("Halaman Depan")],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
