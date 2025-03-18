import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/localization/translation_service.dart';
import '../../providers/investment_provider.dart';

class FeatureScreen extends ConsumerWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translationService = ref.watch(translationServiceProvider);

    final investments = ref.watch(investmentProvider);

    return Scaffold(
      appBar: AppBar(title:  Text(translationService.translate('investment'))),
      body: investments.when(
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 4),
              child: InkWell(
                onTap: (){
                  GoRouter.of(context).push('/pdfviewer',
                      extra: list[index].pdfUrl);

                },
                child: ListTile(
                  key: Key(list[index].id.toString()),
                  title: Text(list[index].title),
                  subtitle: Text(list[index].description),
                ),
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
