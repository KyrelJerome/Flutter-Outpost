import 'Event.dart';
import 'Team.dart';
import 'package:flutter_outpost/data_objects/reports/TeamReport.dart';
import 'package:flutter_outpost/data_objects/reports/MatchReport.dart';
//import 'MatchReport.dart';
class Match{
  List<Team> blueAlliance;
  List<Team> redAlliance;
  List<TeamReport> blueReports;
  List<TeamReport> redReports;
  MatchReport matchReport;
  Event event; 


}