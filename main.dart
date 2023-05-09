import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UI Clone!',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: const Color(0xff181818)),
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "MONDAY 16",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    const Text(
                      "TODAY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const Text(
                      "·",
                      style: TextStyle(
                          color: Color(0xffb32482),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "17",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "18",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "19",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 40,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card_widget(
                size: size,
                startHour: "11",
                startMin: "30",
                finishHour: "12",
                finishMin: "20",
                member1: "ALEX",
                member2: "HELENA",
                member3: "NANA",
                member4: "",
                event1: "DESIGN",
                event2: "MEETING",
                cardBgColor: const Color(0xfffef754),
                isMe: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Card_widget(
                size: size,
                startHour: "12",
                startMin: "35",
                finishHour: "14",
                finishMin: "10",
                member1: "ME",
                member2: "RICHARD",
                member3: "CIRY",
                member4: "+4",
                event1: "DAILY",
                event2: "PROJECT",
                cardBgColor: const Color(0xff9C6BCE),
                isMe: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Card_widget(
                size: size,
                startHour: "15",
                startMin: "00",
                finishHour: "16",
                finishMin: "30",
                member1: "DEN",
                member2: "NANA",
                member3: "MARK",
                member4: "",
                event1: "WEEKLY",
                event2: "PLANNING",
                cardBgColor: const Color(0xffbcee4b),
                isMe: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card_widget extends StatelessWidget {
  final String event1,
      event2,
      startHour,
      startMin,
      finishHour,
      finishMin,
      member1,
      member2,
      member3,
      member4;
  final Color cardBgColor;
  final bool isMe;

  const Card_widget({
    super.key,
    required this.size,
    required this.cardBgColor,
    required this.startHour,
    required this.startMin,
    required this.finishHour,
    required this.finishMin,
    required this.event1,
    required this.event2,
    required this.member1,
    required this.member2,
    required this.member3,
    required this.member4,
    required this.isMe,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      width: size.width * 1,
      height: 190,
      decoration: BoxDecoration(
        color: cardBgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              Column(
                children: [
                  Transform.translate(
                    offset: const Offset(3, 0),
                    child: Text(
                      startHour,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(3, -10),
                    child: Text(
                      startMin,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(3, -16),
                    child: const Text(
                      "|",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(3, -20),
                    child: Text(
                      finishHour,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(3, -30),
                    child: Text(
                      finishMin,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event1,
                style: const TextStyle(fontSize: 60),
              ),
              Transform.scale(
                scale: 4,
                child: Transform.translate(
                  offset: const Offset(23, 0),
                  child: Text(
                    event2,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    member1,
                    style: TextStyle(
                        color:
                            isMe ? Colors.black : Colors.black.withOpacity(0.5),
                        fontWeight: isMe ? null : FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    member2,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    member3,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    member4,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
