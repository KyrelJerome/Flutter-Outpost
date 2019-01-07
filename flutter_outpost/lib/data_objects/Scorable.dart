abstract class Scorable {
  DataType dataType;
  String data; // In json if data is a list.
  String labelName;
  DateTime lastUpdate;
  Scorable fromJson();
  String toJson();
  bool setData(String value);

  getValue(){
    return data;
  }
  
  void updateTime() {}
}

enum DataType { STRING, SET, NUMBER, INTEGER, BOOLEAN }
