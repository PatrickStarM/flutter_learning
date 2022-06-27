import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: const Text('ElevatedButton'),
              onPressed: () {},
            ),
            OutlinedButton(
              child: const Text('OutlinedButton'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("发送"),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.info),
              label: const Text("详情"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}