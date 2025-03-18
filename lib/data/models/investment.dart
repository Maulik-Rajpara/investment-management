import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';
part 'investment.g.dart';

@freezed
class Investment with _$Investment {
  const factory Investment({
    required int id,
    required String title,
    required String description,
    required String pdfUrl,
  }) = _Investment;

  factory Investment.fromJson(Map<String, dynamic> json) => _$InvestmentFromJson(json);
}
