import 'package:flutter_outpost/template_objects/ReportTemplate.dart';
import 'dart:ui';

//Outposts act like Git repositories, but held in admin data sections.
class Outpost {
  //Initially defined
  String name;// load init
  String label;// 5 character code, loadable
  String description;// 25^5
  String organisation;
  String deviceUniqueHash;
  
  List<ReportTemplate> templates;
  Image icon;
  String dataPath;
  List<String> members;
  String memberIDs;
  String host;
}