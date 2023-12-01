import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

FutureOr<Response> onRequest(RequestContext context, String chatRoomId) async{
  switch (context.request.method){
    case HttpMethod.get:
      return _get(context, chatRoomId);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response(statusCode: HttpStatus.methodNotAllowed);
    //   break;
    //
    // default:
  }
}

FutureOr<Response> _get(RequestContext context, String chatRoomId) async{

  try{

  } catch(err){
    return Response.json(
     body: {'error': err.toString()},
      statusCode: HttpStatus.internalServerError,
    );
  }

  return Response(body: 'Welcome to Dart Frog');
}

