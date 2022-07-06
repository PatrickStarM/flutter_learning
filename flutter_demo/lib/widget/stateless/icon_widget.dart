import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';
import 'package:flutter_demo/common/iconfont.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('各类图标组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Icon',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '用于图标显示的组件，可指定图标资源、大小、颜色简单实用',
                  style: descStyle,
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.send,
                    color: Colors.orangeAccent,
                    size: 50,
                  ),
                  Icon(
                    Icons.apple,
                    color: Colors.black,
                    size: 50,
                  ),
                  Icon(
                    IconFont.icon_cunchu,
                    color: Colors.greenAccent,
                    size: 50,
                  )
                ],
              ),
              const Text(
                'IconButton',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '可点击的图标按钮，可指定图标信息，内边距、大小颜色等、接受点击事件',
                  style: descStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  padding: const EdgeInsets.only(),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera,
                    size: 50,
                    color: Colors.indigo,
                  ),
                  tooltip: 'camera',
                  highlightColor: Colors.orangeAccent,
                  splashColor: Colors.blue,
                ),
              ),
              const Text(
                'AnimatedIcon',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  '根据动画控制器来使图标获得动画效果，可指定图标大小、颜色等',
                  style: descStyle,
                ),
              ),
              Test(),
            ],
          ),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with TickerProviderStateMixin{
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
    AnimationController(duration: Duration(seconds: 1), vsync: this)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      child: AnimatedIcon(
        icon: AnimatedIcons.view_list,
        progress: animationController,
        color: Colors.blue,
        size: 50,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
