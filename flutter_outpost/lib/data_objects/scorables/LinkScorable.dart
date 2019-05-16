import 'Scorable.dart';
class LinkScorable extends Scorable{
  String templatePath;
  
  @override
  Scorable fromJson() {
    //TODO: implement fromJson
    return null;
  }
  //Links by saving designated datapath, This scorable is only held in Templates, and must be filled out as a "complex link", where loops are possible, except for data searching.

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
    // TODO: implement type
    return DataType.LINK;
  }
    
}