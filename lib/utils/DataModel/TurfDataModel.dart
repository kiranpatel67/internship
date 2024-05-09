class TurfDataModel {
  List<Datum> data;
  bool success;
  int status;

  TurfDataModel({
    required this.data,
    required this.success,
    required this.status,
  });

}

class Datum {
  int id;
  String name;
  String cover;
  dynamic extraField;
  int status;

  Datum({
    required this.id,
    required this.name,
    required this.cover,
    required this.extraField,
    required this.status,
  });

}
