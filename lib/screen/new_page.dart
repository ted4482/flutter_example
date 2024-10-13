import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to new page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Go to back')),
            TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPage2())),
                child: const Text('Go to New Page2')),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to New Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Back'),
            ),
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
