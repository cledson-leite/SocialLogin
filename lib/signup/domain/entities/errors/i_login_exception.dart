abstract class ILoginException implements Exception {
  final String message = '';
}

class MissingParameterException implements ILoginException {
  @override
  String get message => 'Parameter not found';
}
