import 'package:dblp/domain/api_client/network_client.dart';
import 'package:dblp/domain/entities/publications.dart';

class PublicationApiClient {
  final _networkClient = NetworkClient();

  Future<Publications> searchPublication(
    int page,
    String query,
  ) async {
    Publications parser(dynamic json) {
      final jsonMap = json as Map<String, dynamic>;
      final response = Publications.fromJson(jsonMap);
      return response;
    }

    final result = _networkClient.get('', parser, <String, dynamic>{
      'q': query,
      'format': 'json',
      'f': '${(page - 1) * 30}',
    });
    return result;
  }
}
