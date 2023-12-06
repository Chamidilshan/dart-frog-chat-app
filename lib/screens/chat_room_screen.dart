import 'package:chat_app/main.dart';
import 'package:chat_app/models/lib/models.dart';
import 'package:chat_app/widgets/avatar.dart';
import 'package:chat_app/widgets/message_bubble.dart';
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
  final messageController = TextEditingController();

  @override
  void dispose(){
    messageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final currentParticipant = widget.chatRoom.participants.firstWhere(
            (user)=> user.id == userId1
    );
    final otherParticipant = widget.chatRoom.participants.firstWhere(
           (user)=> user.id != currentParticipant.id
    );

    final viewInserts = MediaQuery.viewInsetsOf(context);
        
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Avatar(
              imageUrl: otherParticipant.avatarUrl,
              radius: 18,
            ),
            const SizedBox(height: 2.0,),
            Text(
              otherParticipant.username,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert)
          ),
          const SizedBox(
            width: 8.0,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 8.0,
            bottom: viewInserts.bottom > 0 ? 8.0 : 0
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                    itemBuilder: (context, index){
                    final message = messages[index];
                      return MessageBubbles(
                        message: message,
                      );
                    }
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                      },
                      icon: Icon( Icons.attach_file)
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: messageController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary.withAlpha(100),
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




