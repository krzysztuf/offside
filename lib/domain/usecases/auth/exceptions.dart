class AuthException implements Exception {
  @override
  String toString() {
    return 'Błąd autoryzacji';
  }
}

class UserNotFoundException implements AuthException {
  @override
  String toString() {
    return 'Nie znaleziono użytkownika';
  }
}

class WrongPasswordException implements AuthException {
  @override
  String toString() {
    return 'Nieprawidłowe hasło';
  }
}
