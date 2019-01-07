import 'Scorable.dart';
import 'Note.dart';
///The report class ensures we cannot have duplicate
///duplicate scorable names in a list of Scorables.
///A report encapsulates data for a given match.
abstract class Report{
  /// Key is different depending on report type.
  String key;
  String name;
  List<Scorable> _scorables;
  List<Note> _notes;
  bool updateScorable(Scorable scorable){
    int i = 0;
    while(i < _scorables.length){
      if(scorable.labelName == _scorables[i].labelName){
        return _scorables[i].setData(scorable.data);
      }
    }
    addScorable(scorable);
    return true;
  }
  bool addScorable(Scorable scoreable);
}