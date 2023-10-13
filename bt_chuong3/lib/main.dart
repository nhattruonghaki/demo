import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Giao Diện BT1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 1 column gồm 4 row
      body: Column(
        children: [
          Image.asset("assets/img/GeorgeOrwell.jpg"),
          Row(
            children: [
              Text("1984"),
              Text("George Orwell - Sience Ficition"),
            ],
          ),
          Row(
            children: [
              Column(
                children: const [
                  Icon(Icons.store),
                  Text("Seach Store"),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.bookmark),
                  Text("BoolMark"),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.add),
                  Text("Mark as read"),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text("Description"),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: const Text(
                    "George Orwell là bút danh của Eric Arthur Blair, một \ntrong những nhà văn và nhà bình luận nổi \ntiếng nhất của thế kỷ 20. Sinh vào ngày 25 tháng 6 năm 1903 \nở Motihari, Ấn Độ (nay là một phần của Bangladesh),\n Orwell được biết đến với các tác phẩm về chủ nghĩa tự do, chính trị và xã hội."),
              )
            ],
          ),
        ],
      ),
    );
  }
}
