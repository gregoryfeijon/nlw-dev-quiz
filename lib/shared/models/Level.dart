enum Level {
  FACIL,
  MEDIO,
  DIFICIL,
  PERITO,
}

extension LevelExtension on Level {
  String get name {
    switch (this) {
      case Level.FACIL:
        return "FACIL";
      case Level.MEDIO:
        return "MEDIO";
      case Level.DIFICIL:
        return "DIFICIL";
      case Level.PERITO:
        return "PERITO";
    }
  }

  String get textoTela {
    switch (this) {
      case Level.FACIL:
        return "Fácil";
      case Level.MEDIO:
        return "Médio";
      case Level.DIFICIL:
        return "Difícil";
      case Level.PERITO:
        return "Perito";
    }
  }
}
