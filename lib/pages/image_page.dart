import 'package:flutter/material.dart';

void main() { 
  
  runApp(const ImagePage());
}
  
class ImagePage extends StatelessWidget {
  const ImagePage({super.key});  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageDemo(),
    );
  }
}  
//
class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  String imageUrl = "https://picsum.photos/400/300";
  bool retry = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Network Image Demo")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// IMAGE WITH LOADING + ERROR HANDLING
            SizedBox(
              width: 300,
              height: 200,
              child: Image.network(
                imageUrl,

                fit: BoxFit.cover,

                /// LOADING BUILDER
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;

                  return const Center(child: CircularProgressIndicator());
                },

                /// ERROR BUILDER
                errorBuilder: (context, error, stackTrace) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.broken_image, size: 50),
                      const SizedBox(height: 10),
                      const Text("Failed to load image"),

                      const SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            retry = !retry; // rebuild
                          });
                        },
                        child: const Text("Retry"),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            /// LOAD NEW IMAGE BUTTON
            ElevatedButton(
              onPressed: () {
                setState(() {
                  imageUrl =
                      "https://picsum.photos/400/30${DateTime.now().second}";
                });
              },
              child: const Text("Load New Image"),
            ),
          ],
        ),
      ),
    );
  }
}
