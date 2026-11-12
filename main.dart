import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGenikApp());
}

class PhotoGenikApp extends StatelessWidget {
  const PhotoGenikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PhotoGenik AI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF10101A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PhotoGenik AI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Create Your Perfect Look',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Transform your photos with AI',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF673AB7),
                    Color(0xFF311B92),
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.add_a_photo,
                    size: 65,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Upload Your Photo',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Photo upload will be added next!'),
                        ),
                      );
                    },
                    child: const Text('Choose Photo'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Explore Features',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            featureCard(
              Icons.auto_awesome,
              'AI Photo Editing',
              'Create amazing photo styles',
            ),
            featureCard(
              Icons.accessibility_new,
              'AI Pose Coach',
              'Discover perfect photo poses',
            ),
            featureCard(
              Icons.face,
              'Face Preservation',
              'Keep your original facial identity',
            ),
            featureCard(
              Icons.palette,
              'Creative Styles',
              'Explore different photo looks',
            ),
          ],
        ),
      ),
    );
  }

  Widget featureCard(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      color: const Color(0xFF202033),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.deepPurpleAccent,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
