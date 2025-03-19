import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../core/localization/translation_service.dart';

class PDFViewerScreen extends ConsumerStatefulWidget {
  final String pdfUrl;

  const PDFViewerScreen({super.key, required this.pdfUrl});

  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends ConsumerState<PDFViewerScreen> {
  final ValueNotifier<bool> _isLoading = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    final translationService = ref.watch(translationServiceProvider);

    return Scaffold(
      appBar: AppBar(title: Text(translationService.translate('pdfViewer'))),
      body: Stack(
        children: [
          SfPdfViewer.network(
            widget.pdfUrl,
            onDocumentLoadFailed: (details) {
              print("Error: ${details.description}");
            },
            onDocumentLoaded: (details) {
              _isLoading.value = false; // Use ValueNotifier instead of setState
            },
          ),
          ValueListenableBuilder<bool>(
            valueListenable: _isLoading,
            builder: (context, isLoading, child) {
              return isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _isLoading.dispose();
    super.dispose();
  }
}
