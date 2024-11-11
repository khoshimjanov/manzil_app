import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel {
  const factory RequestModel({
     @JsonKey(defaultValue: 0, name: 'id') required int id,
     @JsonKey(defaultValue: '', name: 'name') 
    required String name,
     @JsonKey(defaultValue: '', name: 'last_name') 
    required String surname,
     @JsonKey(defaultValue: 0, name: 'phone') 
    required int phone,
     @JsonKey(defaultValue: 0, name: 'rating') 
    required int rating,
     @JsonKey(defaultValue: null, name: 'cancelled_at') 
     String? cancelled,
     @JsonKey(defaultValue: null, name: 'accepted_at') 
     String? accepted,
  }) = _RequestModel;
  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);
}

    //  "id": 11,
    //         "trip_id": 100006,
    //         "account_id": 5,
    //         "account_type": 0,
    //         "system": "iOS",
    //         "status": 1,
    //         "created_at": "2024-09-16 18:53:18",
    //         "accepted_at": null,
    //         "cancelled_at": null,
    //         "name": "dovud",
    //         "last_name": "hoshimjanov",
    //         "phone": 998994095360,
    //         "rating": 0