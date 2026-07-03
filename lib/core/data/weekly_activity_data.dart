import 'package:bank_dashboard/core/model/weekly_activity_model.dart';

abstract class WeeklyActivityData {
  static List<WeeklyActivityModel> data = [
    WeeklyActivityModel(day: 'Sat', deposit: 480, withdraw: 250),
    WeeklyActivityModel(day: 'Sun', deposit: 350, withdraw: 130),
    WeeklyActivityModel(day: 'Mon', deposit: 330, withdraw: 260),
    WeeklyActivityModel(day: 'Tue', deposit: 480, withdraw: 370),
    WeeklyActivityModel(day: 'Wed', deposit: 150, withdraw: 250),
    WeeklyActivityModel(day: 'Thu', deposit: 390, withdraw: 250),
    WeeklyActivityModel(day: 'Fri', deposit: 400, withdraw: 340),
  ];
}
