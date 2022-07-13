import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheetWidget'),
      ),
      // 这⾥要⽤ Builder来构建，否则会报错
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
            child: const Text('showBottomSheet'),
            onPressed: () {
              Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
                  return Container(
                    height: 200,
                    // color: Colors.orangeAccent,
                    // color: Colors.green,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/莫斯塔尔古桥.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('BottomSheet', style: titleStyle),
                          ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      }),
    );
  }
}
