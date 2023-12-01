import 'package:supabase/supabase.dart';

class MessageRepository{
  final SupabaseClient dbClient;
  const MessageRepository({
    required this.dbClient
  });

  createMessage(){
    throw UnimplementedError();
  }

  Future<List<Map<String, dynamic>>> fetchMessages(String chatRoomId) async{
    try{

      final message =  await dbClient
          .from('messages')
          .select<PostgrestList>()
          .eq('chat_room_id', chatRoomId);

      return message;

    } catch(err){
      throw Exception(err);
    }
  }
  
}