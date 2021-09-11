
import 'dart:convert';

List<Demandmodel> demandmodelFromMap(String str) => List<Demandmodel>.from(json.decode(str).map((x) => Demandmodel.fromMap(x)));

String demandmodelToMap(List<Demandmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Demandmodel {
    Demandmodel({
        this.dId,
        this.dLocation,
        this.dDate,
        this.userId,
    });

    int? dId;
    String? dLocation;
    DateTime? dDate;
    dynamic  userId;

    factory Demandmodel.fromMap(Map<String, dynamic> json) => Demandmodel(
        dId: json["d_id"],
        dLocation: json["d_location"] == null ? null : json["d_location"],
        dDate: json["d_date"] == null ? null : DateTime.parse(json["d_date"]),
        userId: json["user_id"],
    );

    Map<String, dynamic> toMap() => {
        "d_id": dId,
        "d_location": dLocation == null ? null : dLocation,
        "d_date": dDate == null ? null : dDate!.toIso8601String(),
        "user_id": userId,
    };
}
