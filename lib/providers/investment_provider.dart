import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/investment_repository.dart';
import '../data/models/investment.dart';

final investmentProvider = FutureProvider<List<Investment>>((ref) async {
  return InvestmentRepository.getInvestments();
});
