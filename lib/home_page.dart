import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _launchUrls(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception("No");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ShaderMask(
              blendMode: BlendMode.darken,
              shaderCallback: (bounds) {
                return const LinearGradient(
                  begin: Alignment(0, 1),
                  end: Alignment(0, 0.2),
                  colors: [Colors.black, Colors.transparent],
                ).createShader(bounds);
              },
              child: Image.asset('assets/profile.jpeg')),
          const Align(
              alignment: Alignment(0, 0.3),
              child: Text(
                'Shubhang CS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
          const Align(
            alignment: Alignment(0, 0.42),
            child: Text(
              "Flutter Developer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.67),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _launchUrls(Uri.parse('https://github.com/ShubhangCS'));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('assets/git.png'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrls(Uri.parse(
                        'https://www.instagram.com/code_with__shubh_'));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('assets/sta.jpg'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrls(Uri.parse(
                        'https://www.linkedin.com/in/shubhanga-cs-595858227'));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('assets/link.png'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrls(Uri.parse('https://discord.com',),);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage('assets/dis.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '10',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      ' Projects',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        ' Workshop',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        '5',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        ' languages',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.android,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Text(
                                      "Android",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.javascript,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Text(
                                      "NodeJS",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.energy_savings_leaf,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "MongoDB",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                          image: AssetImage('assets/dock.png'),
                                          width: 40),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Docker",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.terminal,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Bash",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/lin.png'),
                                        width: 50,
                                      ),
                                      Text(
                                        "Linux",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text(
                'View Skills',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
