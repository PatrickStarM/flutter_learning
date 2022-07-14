import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/tag.dart';

class DecoratedContainer extends StatelessWidget {
  CustomContainer info;

  DecoratedContainer(this.info, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 5, right: 5, bottom: 5),
      //  装饰整个Container
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.indigo),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Container(
        color: const Color(0xccff7f50),
        height: 100,
        alignment: Alignment.topRight,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedOverflowBox(
                  alignment: Alignment.center,
                  size: Size.zero,
                  child: Padding(
                    padding: EdgeInsets.only(right: 50, top: 10),
                    child: Tag(
                      color: Color(0xeb48c9b0),
                      shadowHeight: 16.0,
                      size: Size(24, 30),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              //  左侧leading图标区用一个container绘制一个圆形 ，文字为标题的第一个字母
              leading: Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: const ShapeDecoration(
                    shadows: [
                      BoxShadow(
                          color: Color(0xffffe4c4),
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 2)
                    ],
                    shape: CircleBorder(
                        side: BorderSide(width: 1, color: Colors.blue))),
                child: Text(
                  info.title.substring(0, 1),
                  style: const TextStyle(fontSize: 20, color: Colors.indigo),
                ),
              ),
              title: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  info.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                info.subTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 14),
              ),
              selected: false,
              contentPadding: const EdgeInsets.all(5),
              trailing: const Icon(Icons.arrow_forward_ios),
              dense: false,
              onTap: () => {Navigator.pushNamed(context, info.url)},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer {
  late String title;
  late String subTitle;
  late String url;

  CustomContainer(this.title, this.subTitle, this.url);
}
