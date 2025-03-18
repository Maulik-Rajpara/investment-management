import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:investment_app/core/utils/api_endpoint.dart';
import '../models/investment.dart';

class InvestmentRepository {

  static Future<List<Investment>> getInvestments() async {
    try {
      final response = await http.get(Uri.parse(ApiEndPoint.apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final List<dynamic> investments = jsonData['investments'] ?? [];

        return investments.map((e) => Investment.fromJson(e)).toList();
      } else {
        throw Exception("Failed to load investments. Status Code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching investment data: $e");
      return [];
    }
  }
}
