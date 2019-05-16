import 'package:flutter_outpost/template_objects/ReportTemplate.dart';
import 'dart:ui';

//Outposts act like Git repositories, but held in admin data sections.
class Outpost {
  //Initially defined
  String name;
  String label;
  String description;
  String organisation;
  String uniqueHash;
  
  List<ReportTemplate> templates;
  Image icon;
  String dataPath;
  List<String> members;
  String memberIDs;
  String host;
}