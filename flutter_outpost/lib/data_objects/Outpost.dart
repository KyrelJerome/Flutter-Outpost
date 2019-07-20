import 'dart:convert';

import 'package:flutter_outpost/template_objects/ReportTemplate.dart';
import 'dart:ui';

//Outposts act like Git repositories, but held in admin data sections.
class Outpost {
  //Initially defined
  String name;// load init
  String label;// 5 character code, loadable
  String description;// 25^5
  String deviceUniqueHash;
  List<String> templateLabels;
  List<ReportTemplate> templates;
  Image icon;
  String iconPath;
  String dataPath;
  Map<String,String> memberRoles;
  List<String> members;
  bool isHost;

  Map<String,dynamic> toJson(){
    if(isHost){
    return     {
      'name': name,
      'label': label,
      'description': description,
      'deviceUniqueHash': deviceUniqueHash,
      'templates': templates,
      'iconPath': iconPath,
      'dataPath': dataPath,
      'memberRoles': memberRoles,
      'members': members,
      'isHost': isHost,  
    };
    }

  }

  Outpost(Map<String, dynamic> map){
    iconPath = map['iconPath'];
    dataPath = map['dataPath'];
    members = map['members'];
    name = map['name'];
    label = map['label'];
    deviceUniqueHash = map['deviceUniqueHash'];
    templateLabels = map['deviceUniqueHash'];
    isHost = 
  }

  Outpost fromJson(String json){
    Map<String,dynamic> decoded = jsonDecode(json);
    return Outpost(decoded);
  }
}
