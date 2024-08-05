import 'package:flutter/material.dart';
import 'package:flutter_videpcall_app/call_page.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: SizedBox(
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: "Enter Call Id join",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CallPage(callID: textEditingController.text),
                    ));
              },
              child: const Text(
                "Join a Call",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
