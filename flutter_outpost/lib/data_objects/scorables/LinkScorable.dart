import 'package:flutter/material.dart';

import 'Scorable.dart';

class LinkScorable extends Scorable {
  String templatePath;

  @override
  Scorable fromJson() {
    //TODO: implement fromJson
    return null;
  }

  //Link Goals: Allow a report to show data generated from data another report.
  //Goal is to remove the need for data scientists, and allow a lower skill floor for data science.
  //Link to data, through functions.
  //Possibly Json functions akin to azure function parameter O.O.S
  //Links by saving designated datapath, This scorable is only held in Templates, and must be filled out as a "complex link", where loops are possible, except for data searching.
  //Links define the complete template type, then the data is List [linkType, recognizeString]
  //LinkTypes are as follows:
  //Embedded: Points to a general scorable, displaying through a scorabletemplate
  //
  bool setData(String value) {
    templatePath = value;
    return true;
  }

  @override
  String toJson() {
    return null;
  }

  @override
  DataType type() {
    return DataType.LINK;
  }

  @override
  bool typedUpdateData(dynamic value) {
    return null;
  }

  @override
  Widget getScorableDefiner() {
    // TODO: implement getScorableDefiner
    return null;
  }
}
