import 'dart:convert';

CharacterModel characterModelFromJson(String str) =>
    CharacterModel.fromJson(json.decode(str));

String characterModelToJson(CharacterModel data) => jsonEncode(data.toJson);

class CharacterModel {
  String faction;
  String race;
  String gender;
  String className;
  String spec;
  String factionIconUrl;
  String raceIconUrl;
  String classIconUrl;
  String specIconUrl;
  String previewImageUrl;

  CharacterModel({
    required this.faction,
    required this.race,
    required this.gender,
    required this.className,
    required this.spec,
    required this.factionIconUrl,
    required this.raceIconUrl,
    required this.classIconUrl,
    required this.specIconUrl,
    required this.previewImageUrl,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        faction: json['data']['faction'],
        race: json['data']['race'],
        gender: json['data']['gender'],
        className: json['data']['class'],
        spec: json['data']['spec'],
        factionIconUrl: json['data']['factionIconUrl'],
        raceIconUrl: json['data']['raceIconUrl'],
        classIconUrl: json['data']['classIconUrl'],
        specIconUrl: json['data']['specIconUrl'],
        previewImageUrl: json['data']['previewImageUrl'],
      );

  Map<String, dynamic> toJson() => {
        'faction': faction,
        'race': race,
        'gender': gender,
        'className': className,
        'spec': spec,
        'factionIconUrl': factionIconUrl,
        'raceIconUrl': raceIconUrl,
        'classIconUrl': classIconUrl,
        'specIconUrl': specIconUrl,
        'previewImageUrl': previewImageUrl,
      };
}
