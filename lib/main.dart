import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/vodafon_app.dart';

import 'core/services/setup_services_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(VodafonApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  StreamSubscription? _intentSub;
  final _sharedFiles = <SharedMediaFile>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initSharing();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    log("🔄 App lifecycle state: $state");

    // When app comes to foreground, check for new shared content
    if (state == AppLifecycleState.resumed) {
      _checkForSharedContent();
    }
  }

  Future<void> _checkForSharedContent() async {
    try {
      final initial = await ReceiveSharingIntent.instance.getInitialMedia();
      if (initial.isNotEmpty) {
        log("📦 Found shared content on resume: ${initial.length} files");
        setState(() {
          _sharedFiles
            ..clear()
            ..addAll(initial);
        });
        ReceiveSharingIntent.instance.reset();
      }
    } catch (e) {
      log("❌ Error checking shared content: $e");
    }
  }

  Future<void> _initSharing() async {
    try {
      // Handle initial shared content
      final initial = await ReceiveSharingIntent.instance.getInitialMedia();
      log("📦 Initial media count: ${initial.length}");

      if (initial.isNotEmpty) {
        log("📦 Initial media: ${initial.map((f) => f.path)}");
        setState(() {
          _sharedFiles
            ..clear()
            ..addAll(initial);
        });
        ReceiveSharingIntent.instance.reset();
      }

      // Listen for new shares while app is running
      _intentSub = ReceiveSharingIntent.instance.getMediaStream().listen((
        value,
      ) {
        log("📩 Stream received: ${value.length} files");

        if (value.isNotEmpty) {
          log("📩 Files: ${value.map((f) => f.path)}");
          setState(() {
            _sharedFiles
              ..clear()
              ..addAll(value);
          });
          log("✅ UI updated with ${value.length} files");
        }
      }, onError: (err) => log("❌ Stream error: $err"));

      log("✅ Sharing initialized");
    } catch (e) {
      log("❌ Init error: $e");
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _intentSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Received Media'),
          actions: [
            if (_sharedFiles.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => setState(() => _sharedFiles.clear()),
              ),
          ],
        ),
        body: _sharedFiles.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text("No images shared yet"),
                    SizedBox(height: 8),
                    Text(
                      "Share an image from gallery or WhatsApp",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              )
            : 
        // : ListView.builder(
        //     padding: const EdgeInsets.all(8),
        //     itemCount: _sharedFiles.length,
        //     itemBuilder: (context, index) {
        //       final file = _sharedFiles[index];

        //       return Card(
        //         margin: const EdgeInsets.only(bottom: 8),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             if (file.type == SharedMediaType.image)
        //               Image.file(
        //                 File(file.path),
        //                 height: 300,
        //                 width: double.infinity,
        //                 fit: BoxFit.cover,
        //                 errorBuilder: (context, error, stackTrace) {
        //                   log("❌ Image load error: $error");
        //                   return Container(
        //                     height: 200,
        //                     color: Colors.grey[300],
        //                     child: Center(child: Text("Error: $error")),
        //                   );
        //                 },
        //               ),
        //             Padding(
        //               padding: const EdgeInsets.all(8),
        //               child: Text(
        //                 file.path.split('/').last,
        //                 style: const TextStyle(fontSize: 12),
        //               ),
        //             ),
        //           ],
        //         ),
        //       );
        //     },
        //   ),
      ),
    );
  }
}
