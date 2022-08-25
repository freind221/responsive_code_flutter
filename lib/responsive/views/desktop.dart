import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';

class DesktopWidget extends StatelessWidget {
  const DesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.grey,
                            ),
                          );
                        })),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            color: Colors.grey[400],
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey,
          ))
        ],
      ),
    );
  }
}
