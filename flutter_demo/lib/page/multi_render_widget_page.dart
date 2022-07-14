import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/data.dart';
import 'package:flutter_demo/common/tag.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

class MultiRenderWidgetPage extends StatelessWidget {
  const MultiRenderWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.indigo),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      // child: ListView.builder(
      //   itemCount: singleRenderList.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return WidgetContainer(singleRenderList[index]);
      //   },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),

            Container(
              color: const Color(0xccff7f50),
              height: 90,
              alignment: Alignment.topRight,
              child: const SizedOverflowBox(
                alignment: Alignment.center,
                size: Size.zero,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 50.0,
                    top: 10,
                  ),
                  child: Tag(
                    color: Color(0xeb48c9b0),
                    shadowHeight: 16.0,
                    size: Size(30, 40),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
