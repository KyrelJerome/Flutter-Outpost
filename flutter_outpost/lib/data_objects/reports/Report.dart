import 'package:flutter_outpost/data_objects/scorables/Scorable.dart';
import 'package:flutter_outpost/template_objects/ReportTemplate.dart';
import 'package:flutter_outpost/data_objects/scorables/Note.dart';
///The report class ensures we cannot have duplicate
///duplicate scorable names in a list of Scorables.
///A report encapsulates data for a given match.
class Report{
  ReportTemplate template;
  /// Key is different depending on report type.
  String key;
  String name;
  List<Scorable> scorables;
  List<Note> notes;
  bool updateScorable(Scorable scorable){
    int i = 0;
    while(i < scorables.length){
      if(scorable.labelName == scorables[i].labelName){
        return scorables[i].setData(scorable.data);
      }
    }
    addScorable(scorable);
    return true;
  }
    bool addScorable(Scorable scoreable) {
    scorables.forEach((f) {
      if (f.equals(scoreable)) {
        return false;
      }
    });
    scorables.add(scoreable);
    return true;
  }

}