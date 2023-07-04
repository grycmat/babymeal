class TempFeedingLogModel {
  BreastSide breastSide;
  Duration time;

  TempFeedingLogModel({required this.breastSide, required this.time});
}

enum BreastSide { left, right, none }
