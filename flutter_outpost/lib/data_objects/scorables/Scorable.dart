abstract class Scorable {
  DataType dataType;
  String data; // In json if data is a list.
  String labelName;
  bool locked;
  DateTime lastUpdate;
  Scorable fromJson();
  String toJson();
  bool _updateData(String value);
  bool _updateLabel(String value);

  void updateData(String value){
    _updateData(value);
    _updateTimeChanged();
  }
  dynamic updateLabel(String value){
    _updateLabel(value);
    _updateTimeChanged();
  }
  void lock(){
    this.locked = true;
    _updateTimeChanged();
  }
  void unlock(){
    this.locked = false;  
    _updateTimeChanged();
  }
  bool equals(dynamic d){
      return d is Scorable && d.dataType == this.dataType && d.labelName == this.labelName;
  }
  void _updateTimeChanged(){
      lastUpdate = DateTime.now();
  }
}

enum DataType { TIME, INTEGER, BOOLEAN, TEXTUAL, WEIGHTED_ORDINAL, NOMINAL, ORDINAL, LINK}
