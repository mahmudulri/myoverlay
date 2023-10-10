import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(onPressed: () async {
        print(screenWidth);
        if (await FlutterOverlayWindow.isActive()) {
          FlutterOverlayWindow.closeOverlay();
        } else {
          FlutterOverlayWindow.showOverlay(
            height: 300,
            width: 800,
            // enableDrag: true,
          );
          SystemChannels.textInput.invokeMethod("TextInput.show");
        }
      }),
      // body: Center(
      //   child: FocusScope(
      //     child: ElevatedButton(onPressed: () {}, child: Text("data")),
      //   ),
      // ),
    ));
  }
}
