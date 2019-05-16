import 'package:flutter_outpost/data_objects/scorables/Scorable.dart';
import 'package:flutter_outpost/template_objects/ReportTemplate.dart';
import 'package:flutter_outpost/data_objects/scorables/Note.dart';

///The report class ensures we cannot have duplicate
///duplicate scorable names in a list of Scorables.
///A report encapsulates data for a given experiment.
class Report {
  ReportTemplate template; // Lo
  /// Key is different depending on report type and data contained.
  String key;
  String name;
  List labelNames;
  Map<String, Scorable> scorables;

  List<Note> notes;
  bool update(Scorable scorable) {
    if (scorables.containsKey(scorable.labelName)) {
      scorables[scorable.labelName].updateData(scorable.data);
      return true;
    }
    return _addScorable(scorable);
  }

  bool _addScorable(Scorable scoreable) {
    /*scorables.forEach((f) {
      if (f.equals(scoreable)) {
        return false;
      }
    });
    scorables.add(scoreable);*/
    return true;
  }
}
