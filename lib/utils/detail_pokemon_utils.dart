import 'package:pokefy/domain/entity/gender/gender_ratio_entity.dart';

String formatKilograms(int? hectograms) {
  if (hectograms == null) return '-';
  final kilograms = hectograms / 10;
  return '${formatNumber(kilograms)} kg';
}

String formatMeters(int? decimeters) {
  if (decimeters == null) return '-';
  final meters = decimeters / 10;
  return '${formatNumber(meters)} m';
}

String formatNumber(double value) {
  return value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(1);
}

GenderRatioEntity getGenderRatio(int? genderRate) {
  if (genderRate == null) {
    return const GenderRatioEntity(male: 0, female: 0, genderless: false);
  }

  if (genderRate == -1) {
    return const GenderRatioEntity(male: 0, female: 0, genderless: true);
  }

  final double female = (genderRate / 8.0) * 100;
  final double male = 100 - female;

  return GenderRatioEntity(male: male, female: female, genderless: false);
}

int calculateEggSteps(int hatchCounter) {
  return (hatchCounter + 1) * 255;
}

double clamp(double value, double min, double max) => value.clamp(min, max).toDouble();