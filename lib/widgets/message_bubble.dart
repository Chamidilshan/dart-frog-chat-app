import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';

import '../models/lib/models.dart';

class MessageBubbles extends StatelessWidget {
  final Message message;
  const MessageBubbles({
    super.key,
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final alignement = (message.senderUserId != userId1)
        ? Alignment.centerRight
        : Alignment.centerLeft;

    final color = (message.senderUserId == userId1)
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.secondary;

    final textColor = (message.senderUserId == userId1)
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.onSecondary;

    return Align(
      alignment: alignement,
      child: Container(
        constraints: BoxConstraints(maxWidth: size.width *0.66),
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text(
          message.content ?? '',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: textColor
          ),
        ),
      ),
    );
  }
}