import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Constants.dart';
import '../model/ExpensePlannerModel.dart';

final String endpoint = Constants.SERVICE_URL + "/expense-planner";

class ExpensePlannerService {
  Future<List<ExpensePlannerModel>> getData() async {
    http.Response response = await http.get(endpoint);
    List<dynamic> body = jsonDecode(response.body) ?? [];
    List<ExpensePlannerModel> list = List<ExpensePlannerModel>();
    body.forEach((item) {
      list.add(ExpensePlannerModel(
          id: item['id'],
          title: item['title'],
          value: item['value'],
          time: DateTime.fromMillisecondsSinceEpoch(item['createdAt'])));
    });
    return list;
  }

  Future<ExpensePlannerModel> create(ExpensePlannerModel payload) async {
    http.Response response = await http.post(endpoint,
        headers: {"content-type": "application/json"},
        body: jsonEncode({"title": payload.title.trim(), "value": payload.value}));
    if (response.statusCode == 201) {
      dynamic newItem = jsonDecode(response.body) ?? null;
      return ExpensePlannerModel(id: newItem['id'], title: newItem['title'], value: newItem['value'], time: DateTime.now());
    }
    return null;
  }
}
