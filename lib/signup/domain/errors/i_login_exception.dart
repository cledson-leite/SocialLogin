abstract class ILoginException implements Exception {
  final String message = '';
}

class MissingParameterException implements ILoginException {
  @override
  String get message => 'Parameter not found';
}

class ServerException {
  
  String get message => 'Unexpected failure.\nPlease try again soon...';
}
