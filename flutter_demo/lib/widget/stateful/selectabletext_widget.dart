import 'package:flutter/material.dart';
import 'package:flutter_demo/common/style.dart';

class SelectableTextWidget extends StatefulWidget {
  const SelectableTextWidget({Key? key}) : super(key: key);

  @override
  State<SelectableTextWidget> createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableTextWidget> {
  final text =
      "A panda looks like a little bear. It has black and white fur. It lives only in China, so it is called the national treasure of China and protected by the law."
      "We all see panda on TV or in the zoo. They look stupid and walk slowly, but they are lovely and everyone likes them."
      "A panda is lucky animal. We Chinese like it, and people of the world like it, too. Now there are China’s pandas in many other countries, such as Japan and the USA…"
      "A panda isn’t a common animal, it is bridge of friendship.";
  var _textAlign = TextAlign.left;
  final info = "一个人的处境是苦是乐常是主观的。有人安于某种生活，有人不能。"
      "因此能安于自已目前处境的不妨就如此生活下去，不能的只好尽力另找前途。你无奈断言哪里才是的，也无法确定当自已达到了某一点之后，会不会快乐。"
      "有些人永远不会觉得知足，他的快活只树立在不断地寻求与争夺的进程之中，因此，他的目的一直地向远处推移。这种人的快乐可能少，但成绩可能大。"
      "苦乐全凭自已的断定，这和客观环境并不必定有直接关联，正如一个不爱珠宝的女人，即便置身在极其器重虚荣的环境，也无伤她的自尊。　　"
      "占有万卷书的穷书生，并不想去和百万富翁交流钻石或股票。满意于田园生涯的人也并不艳羡任何学者的声誉头衔，或高官厚禄。　　"
      "你的喜好就是你的方向，你的兴致就是你的资本，你的性格就是你的运气。各人有各人幻想的乐园，有自已所乐于安享的十丈软红。";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                '可选择⽂字',
                style: titleStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Text(
                  '可选择的⽂字，可以选择、复制。可指定浮标的颜⾊、⼤⼩、⽂字样式、对⻬⽅式等。',
                  style: descStyle,
                ),
              ),
              Column(
                children: <Widget>[
                  _buildSelector(),
                  SelectableText(
                    // 显示⽂字
                    text,
                    // ⽂字样式
                    style: descStyle,
                    // 光标颜⾊
                    cursorColor: Colors.green,
                    // 光标半径
                    cursorRadius: const Radius.circular(3),
                    // 光标宽度
                    cursorWidth: 5,
                    // 是否显示光标
                    showCursor: true,
                    // ⽂本对⻬⽅式（6种）
                    textAlign: _textAlign,
                    // ⽂字⽅向
                    textDirection: TextDirection.ltr,
                    // 是否⾃动聚焦
                    autofocus: false,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SelectableText(
                info,
                style: const TextStyle(fontSize: 18, color: Colors.indigo),
                cursorColor: Colors.green,
                cursorRadius: const Radius.circular(3),
                cursorWidth: 5,
                showCursor: true,
                autofocus: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          "textAlign属性选择:",
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<TextAlign>(
            underline: Container(),
            value: _textAlign,
            items: TextAlign.values
                .map((e) => DropdownMenuItem<TextAlign>(
                      value: e,
                      child: Text(e.toString()),
                    ))
                .toList(),
            onChanged: (e) {
              setState(() {
                _textAlign = e!;
              });
            }),
      ],
    );
  }
}
