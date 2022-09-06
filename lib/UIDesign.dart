import 'package:flutter/material.dart';

class UIDesign extends StatelessWidget {
  const UIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Padding(padding: EdgeInsets.all(5)),
                        Expanded(
                          flex: 6,
                          child: Container(margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200), height: 50,
                          ),
                        ), Expanded(
                          child: Container(margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.orange.shade200), height: 50,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 50,
                            decoration:
                            BoxDecoration(color: Colors.redAccent.shade200),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      );
}
