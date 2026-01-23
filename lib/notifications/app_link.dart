enum AppDestination {
  home,
  login,
}

class AppLink {
  const AppLink._(
    this.destination, {
    this.requiresAuth = false,
    this.reason,
  });

  final AppDestination destination;
  final bool requiresAuth;
  final String? reason;

  const AppLink.home() : this._(AppDestination.home, requiresAuth: true);

  const AppLink.login([String? reason])
      : this._(AppDestination.login, reason: reason);
}
