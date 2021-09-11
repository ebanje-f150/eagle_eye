class Failiure {
  final String? message;
  final String? code;

  const Failiure({this.code, this.message});
  @override
  String toString() {
    return '{message :$message,code:$code}';
  }
}
