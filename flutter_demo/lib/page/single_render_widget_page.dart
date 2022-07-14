import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/tag.dart';
import 'package:flutter_demo/widget/custom/my_widget_container.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

class SingleRenderWidgetPage extends StatelessWidget {
  const SingleRenderWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: singleRenderList.length,
          itemBuilder: (BuildContext context, int index) {
            return DecoratedContainer(singleRenderList[index]);
          },
        )
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: <Widget>[
        //       const SizedBox(
        //         height: 30,
        //       ),
        //       Container(
        //         color: Colors.blue.shade200,
        //         height: 90,
        //         alignment: Alignment.topRight,
        //         child: SizedOverflowBox(
        //           alignment: Alignment.center,
        //           size: Size.zero,
        //           child: Padding(
        //             padding: const EdgeInsets.only(
        //               right: 50.0,
        //               top: 10,
        //             ),
        //             child: Tag(
        //               color: Colors.blue.shade600,
        //               shadowHeight: 16.0,
        //               size: const Size(30, 40),
        //             ),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),

        );
  }
}
