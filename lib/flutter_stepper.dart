// // You have generated a new plugin project without specifying the `--platforms`
// // flag. A plugin project with no platform support was generated. To add a
// // platform, run `flutter create -t plugin --platforms <platforms> .` under the
// // same directory. You can also find a detailed instruction on how to add
// // platforms in the `pubspec.yaml` at
// // https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

// import 'flutter_stepper_platform_interface.dart';

// class FlutterStepper {
//   Future<String?> getPlatformVersion() {
//     return FlutterStepperPlatform.instance.getPlatformVersion();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_stepper/ressources/const.dart';

class FlutterStepper extends StatefulWidget {
  const FlutterStepper(
      {Key? key,
      required this.activeColor,
      required this.pages,
      required this.stepInfos,
      required this.buttonLabels})
      : super(key: key);

  final Color activeColor;
  final List<Widget> pages;
  final List<String> stepInfos;
  final List<String> buttonLabels;

  @override
  State<FlutterStepper> createState() => _FlutterStepperState();
}

int pageIndex = 0;

class _FlutterStepperState extends State<FlutterStepper> {
  @override
  Widget build(BuildContext context) {
    String stepInfo = widget.stepInfos[0];

    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("ENter"),
      // ),
      backgroundColor: const Color(0xFFF5F5F5),
      bottomSheet: BottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        )),
        backgroundColor: Colors.white,
        enableDrag: false,
        onClosing: () {},
        builder: ((context) {
          return Container(
            height: 150.0,
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                Text(
                  widget.stepInfos[pageIndex],
                  style: bodyStyle(widget.activeColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 109.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: pageIndex >= 0
                                ? widget.activeColor
                                : disabledText,
                            shape: BoxShape.circle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            height: 20.0,
                            color: pageIndex > 0
                                ? widget.activeColor
                                : disabledText,
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: pageIndex >= 1
                                ? widget.activeColor
                                : disabledText,
                            shape: BoxShape.circle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            height: 20.0,
                            color: pageIndex > 1
                                ? widget.activeColor
                                : disabledText,
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: pageIndex >= 2
                                ? widget.activeColor
                                : disabledText,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: pageIndex > 0
                          ? () {
                              if (pageIndex > 0) {
                                setState(() {
                                  pageIndex--;
                                });
                              } else {
                                return;
                              }
                            }
                          : (() {}),
                      child: actionButton(
                        buttonName: widget.buttonLabels[0],
                        buttonColor:
                            pageIndex > 0 ? widget.activeColor : disabledText,
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                        index: pageIndex,
                        position: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: pageIndex < 2
                          ? () {
                              if (pageIndex < 2) {
                                setState(() {
                                  pageIndex++;
                                });
                              } else {
                                return;
                              }
                            }
                          : (() {}),
                      child: actionButton(
                        buttonName: widget.buttonLabels[1],
                        buttonColor:
                            pageIndex < 2 ? widget.activeColor : disabledText,
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                        index: pageIndex,
                        position: false,
                      ),
                    ),
                  ],
                ),
                // const Text("sjfhjdghfjdgfhdgf")
              ],
            ),
          );
        }),
      ),
      // body: widget.pages[pageIndex],
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(label: "Flutter stepper", context: context),
            widget.pages[pageIndex],
          ],
        ),
      ),
    );
  }

  Container actionButton(
          {required String buttonName,
          required Color buttonColor,
          required Icon icon,
          required int index,
          bool position = true}) =>
      Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: buttonColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            position ? icon : const SizedBox(),
            const SizedBox(
              width: 10,
            ),
            Text(buttonName, style: buttonStyle(Colors.white)),
            const SizedBox(
              width: 10,
            ),
            !position ? icon : const SizedBox(),
          ],
        ),
      );
}
