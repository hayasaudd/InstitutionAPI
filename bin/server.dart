import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> args) async{
 
//ip
final ip = InternetAddress.anyIPv4;

//port
final int port = int.parse(Platform.environment["PORT"] ?? "8080");

//EndPoint
final router = Router()
..get('/homePage', (Request req) {
  return Response.ok('welcome to home page');
})
..post('/settings', (Request req){
  return Response.ok('Setting');
})
..get('/profile', (Request req){
  return Response.ok('Profile');
});
 
 final Server = await serve(router, ip, port);
 print("server is working at http://${Server.address.host}:${Server.port}");

}