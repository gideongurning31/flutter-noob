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
    body.forEach((el) {
      list.add(ExpensePlannerModel(
          id: el['id'],
          title: el['title'],
          value: el['value'],
          time: DateTime.fromMillisecondsSinceEpoch(el['createdAt'])));
    });
    return list;
  }
}
