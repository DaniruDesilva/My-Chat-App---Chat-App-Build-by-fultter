import 'package:flutter/material.dart';
import 'package:my_chat/screens/chat/chat_screen.dart';
import 'package:my_chat/utils/navigation/custom_navigation.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "My Chat",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?cs=srgb&dl=pexels-george-dolgikh-551816-1310522.jpg&fm=jpg"),
                )
              ],
            ),
            const Divider(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      CustomNavigation.nextPage(context, const ChatScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        title: const Text(
                          "Daniru De Silva",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "this is new message",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                        leading: const CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?cs=srgb&dl=pexels-george-dolgikh-551816-1310522.jpg&fm=jpg"),
                        ),
                        trailing: const Text("18:55"),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
