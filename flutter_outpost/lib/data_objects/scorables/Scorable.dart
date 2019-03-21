abstract class Scorable {
  DataType dataType;
  String data; // In json if data is a list.
  String labelName;
  DateTime lastUpdate;
  Scorable fromJson();
  String toJson();
  bool setData(String value);

  bool operator== (dynamic d){
      return d.dataType == this.dataType && d.labelName == this.labelName;
  }
  getValue(){
    return data;
  }
  
  void updateTime() {}
}

enum DataType { TIME, INTEGER, BOOLEAN, TEXTUAL, WEIGHTED_ORDINAL, NOMINAL, ORDINAL}
