import 'package:flutter/material.dart';

import '../../common/style.dart';

class MyPreferredSizeWidget extends StatelessWidget {
  const MyPreferredSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = <dynamic, dynamic>{
      BannerLocation.topStart: Color(0xFFEA4F39),
      BannerLocation.topEnd: Color(0xFF3CAAFA),
      BannerLocation.bottomStart: Color(0xFF5CE196),
      BannerLocation.bottomEnd: Color(0xFFEEC43E),
    };
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          leading: BackButton(
            color: Colors.white,
          ),
          title: const Text('PreferredSize及其他'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              height: 40,
              color: Colors.orange,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '优先尺寸组件',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  '优先尺寸组件，可容纳一个子组件，设置优先尺寸，不会对其子组件施加任何约束。',
                  style: descStyle,
                ),
              ),
              CloseButton(
                color: Colors.blue,
              ),
              const Text(
                'ModalBarrier',
                style: titleStyle,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    '幕布层，防止用户与其背后的widget交互，可以通过dismissible来决定点击时，是否触发返回。',
                    style: descStyle,
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.green.withOpacity(0.5),
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 80,
                      child: ModalBarrier(
                        dismissible: true,
                        color: Colors.grey,
                      ),
                    ),
                    Text('点击灰色幕布层返回'),
                  ],
                ),
              ),
              const Text(
                'Banner',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: const Text(
                  '角标组件,课容纳一个子组件，可以选择方位添加角标及文字信息，可以设置颜色。',
                  style: descStyle,
                ),
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: data.keys
                    .map((e) => Container(
                  color: Color(0xffD8F5FF),
                  width: 150,
                  height: 150 * 0.618,
                  child: Banner(
                    message: "Flutter 3.0 发布",
                    location: e,
                    color: data[e],
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: FlutterLogo(
                        textColor: Colors.blue,
                        style: FlutterLogoStyle.horizontal,
                      ),
                    ),
                  ),
                ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
