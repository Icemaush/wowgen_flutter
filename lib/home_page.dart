import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WoWGen'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      backgroundColor: Colors.grey[900],
      body: Container(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Faction:",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "<factions>",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Race:",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "<race>",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Gender:",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "<gender>",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ))
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Class:",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "<class>",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Spec:",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "<spec>",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 300,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Generating character...');
                },
                child: const Text('Generate Character'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, fixedSize: const Size(200, 65)),
              ),
            ],
          )),
    );
  }
}
