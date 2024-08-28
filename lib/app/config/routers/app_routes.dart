// ignore_for_file: non_constant_identifier_names

enum AppRoutes {
  loginScreen,
  register,
  mainScreen,
  landingPage,
  homeScreen,
  gamesScreen,
  newAndHotScreen,
  fastLaughsScreen,
  downloadScreen,
  profileScreen,
}

extension AppRoutesExtention on AppRoutes {
  String get name {
    switch (this) {
      case AppRoutes.loginScreen:
        return '/login';
      case AppRoutes.register:
        return '/register';
      case AppRoutes.mainScreen:
        return '/main';
      case AppRoutes.landingPage:
        return '/landing-page';
      case AppRoutes.homeScreen:
        return '/home';
      case AppRoutes.gamesScreen:
        return '/game';
      case AppRoutes.newAndHotScreen:
        return '/new-and-hot';
      case AppRoutes.fastLaughsScreen:
        return '/fast-laughs';
      case AppRoutes.downloadScreen:
        return '/download';
      case AppRoutes.profileScreen:
        return '/profile';
    }
  }
}
