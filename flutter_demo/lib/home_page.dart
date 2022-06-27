import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础组件"),
      ),
      body: _buildBody(context),
    );
  }
  Center _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Hello world",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 32,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "这是一段可以重复的文字." * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.green,
            ),
          ),
          const Text(
            "可以放大的文字",
            maxLines: 1,
            textScaleFactor: 18,
          ),
          ElevatedButton(
            child: const Text("点击弹出提示框"),
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: const Text('提示'),
                    content: const Text('这是一个提示框'),
                    actions: <Widget>[
                      OutlinedButton(
                        child: const Text('确定'),
                        onPressed: () {
                          Navigator.of(dialogContext).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          OutlinedButton(
            child: const Text('边框按钮'),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.thumb_up),
            color: Colors.red,
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text('发送'),
            onPressed: () {},
          ),
          const Image(
            image: AssetImage('images/me.png'),
            width: 100.0,
          ),
          Column(
            children: const <Widget>[
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
              )
            ]
          ),
          // 模糊进度条(会执行一个动画)
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
//进度条显示50%
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          )
        ],
      ),
    );
  }
}