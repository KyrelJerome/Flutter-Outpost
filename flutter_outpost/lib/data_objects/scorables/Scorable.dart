abstract class Scorable {
  DataType dataType;
  String data; // In json if data is a list.
  String labelName;
  DateTime lastUpdate;
  Scorable fromJson();
  String toJson();
  bool setData(String value);

  bool equals(dynamic d){
      return d is Scorable && d.dataType == this.dataType && d.labelName == this.labelName;
  }
  
  void updateTime() {}
}

enum DataType { TIME, INTEGER, BOOLEAN, TEXTUAL, WEIGHTED_ORDINAL, NOMINAL, ORDINAL}
