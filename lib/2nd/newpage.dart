import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
      maintainState: true,
      opaque: true,
      builder: (context) => Positioned(
        top: 50,
        left: 250,
        child: Container(
          height: 50,
          width: 50,
          color: Colors.red,
        ),
      ),
    );
    overlayState.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showOverlay(context);
            },
            child: Text("data")),
      ),
    );

    // ignore: dead_code
  }
}
