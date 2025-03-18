import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewerScreen extends StatefulWidget {
  final String pdfUrl;

  const PDFViewerScreen({super.key, required this.pdfUrl});

  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("PDF Viewer")),
      body: Stack(
        children: [
          SfPdfViewer.network(
            widget.pdfUrl,
            onDocumentLoadFailed: (details) {
              print("Error: ${details.description}");
            },
            onDocumentLoaded: (details) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          if (_isLoading)
            const Center(child: CircularProgressIndicator()), // Show loader while fetching PDF
        ],
      ),
    );
  }
}
