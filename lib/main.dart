import 'package:chat_app/models/lib/models.dart';
import 'package:chat_app/screens/chat_room_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Frog Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChatRoomScreen(chatRoom: chatRoom,)
    );
  }
}
 
const userId1 = '33f771e2-311b-4d4f-9b14-d1e1c59936d3';
const userId2 = '94a6b01e-319e-494e-b454-98f22ab0d109';

final chatRoom = ChatRoom(
  id: '8d162274-6cb8-4776-815a-8e721ebfb76d',
  participants: const [
    User(
      id: userId1,
      username: 'User 1',
      phone: '1234512345',
      email: 'user1@email.com',
      avatarUrl:
      'https://images.unsplash.com/photo-1700493624764-f7524969037d?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      status: 'online',
    ),
    User(
      id: userId2,
      username: 'User 2',
      phone: '5432154321',
      email: 'user2@email.com',
      avatarUrl:
      'https://images.unsplash.com/photo-1700469880511-3ef0cee47985?q=80&w=3672&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      status: 'online',
    ),
  ],
  lastMessage: Message(
    id: 'de120f3a-dbca-4330-9e2e-18b55a2fb9e5',
    chatRoomId: '8d162274-6cb8-4776-815a-8e721ebfb76d',
    senderUserId: userId1,
    receiverUserId: userId2,
    content: 'Hey! I am good, thanks.',
    createdAt: DateTime(2023, 12, 1, 1, 0, 0),
  ),
  unreadCount: 0,
);

final messages = [
  Message(
    id: 'de120f3a-dbca-4330-9e2e-18b55a2fb9e5',
    chatRoomId: '8d162274-6cb8-4776-815a-8e721ebfb76d',
    senderUserId: userId1,
    receiverUserId: userId2,
    content: 'Hey! I am good, thanks.',
    createdAt: DateTime(2023, 12, 1, 1, 0, 10),
  ),
  Message(
    id: '29829a84-30b9-47e9-b6df-518519843f7d',
    chatRoomId: '8d162274-6cb8-4776-815a-8e721ebfb76d',
    senderUserId: userId2,
    receiverUserId: userId1,
    content: 'Hey! How are you?',
    createdAt: DateTime(2023, 12, 1, 1, 0, 0),
  ),
];

// [{
//   chat_room_id: 8baf5ca2-e254-49e6-ac97-70e40559574d,
//   participant_id: a6d06c87-a657-4473-b223-d5d53e895e15,
//   users: {
//     id: a6d06c87-a657-4473-b223-d5d53e895e15,
//     updated_at: null, username: null,
//     email: null, phone: 971583060255, avatar_url: null}
//   }
// ],

