import 'package:equatable/equatable.dart';

import '../../domain/models/vacancy_model.dart';

class MapPoint extends Equatable {
  const MapPoint({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.vacancy,
  });

  final String name;
  final VacancyModel vacancy;
  final double latitude;

  final double longitude;

  @override
  List<Object?> get props => [name, latitude, longitude];
}
