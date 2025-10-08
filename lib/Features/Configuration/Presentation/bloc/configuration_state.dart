sealed class ConfigurationState {}

class ConfigurationInitial extends ConfigurationState {}

class ConfigurationLoaded extends ConfigurationState {}

class ConfigurationError extends ConfigurationState {}
