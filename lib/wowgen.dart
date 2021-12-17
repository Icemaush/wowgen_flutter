import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/CharacterModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Future<CharacterModel?> generateCharacter() async {
  print('generating character...');
  final apiUrl =
      Uri.parse("https://chargen-server.herokuapp.com/wow/generate-character");

  final response = await http.get(apiUrl);
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return characterModelFromJson(responseString);
  } else {
    return null;
  }
}

class _HomePageState extends State<HomePage> {
  CharacterModel? _character;
  final TextEditingController factionController = TextEditingController();
  final TextEditingController raceController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController specController = TextEditingController();

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
          padding: const EdgeInsets.only(top: 20),
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _character == null
                                  ? Container()
                                  : Text(
                                      "${_character?.faction}",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _character == null
                                  ? Container()
                                  : Text(
                                      "${_character?.race}",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: _character == null
                                    ? Container()
                                    : Text(
                                        "${_character?.gender}",
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                              ))
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _character == null
                                  ? Container()
                                  : Text(
                                      "${_character?.className}",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
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
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: _character == null
                                  ? Container()
                                  : Text(
                                      "${_character?.spec}",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _character == null
                  ? Container()
                  : Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.red)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "${_character?.previewImageUrl}",
                          height: 380,
                          width: 343,
                        ),
                      )),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: () async {
                    // print('Generating character...');
                    final CharacterModel? character = await generateCharacter();
                    print(character);
                    setState(() {
                      _character = character;
                    });
                  },
                  child: const Text(
                    'Generate Character',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    fixedSize: const Size(200, 65),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
