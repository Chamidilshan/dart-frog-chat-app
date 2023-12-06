import 'package:chat_app/main.dart';
import 'package:chat_app/models/lib/models.dart';
import 'package:chat_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatefulWidget {
  final ChatRoom chatRoom;
  const ChatRoomScreen({
    super.key,
    required this.chatRoom
  });

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    final currentParticipant = widget.chatRoom.participants.firstWhere(
            (user)=> user.id == userId1
    );
    final otherParticipant = widget.chatRoom.participants.firstWhere(
           (user)=> user.id != currentParticipant.id
    );

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar(
              imageUrl: otherParticipant.avatarUrl,
              radius: 18,
            ), 
            SizedBox(height: 2.0,),
            Text(
              otherParticipant.username,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}


