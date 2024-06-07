// بشار حسن

enum ApiClientExceptionType { network, other }

class ApiClientException implements Exception {
  final ApiClientExceptionType type;

  ApiClientException({required this.type});
}
