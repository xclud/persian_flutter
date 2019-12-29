import 'package:flutter/material.dart';
import 'package:persian/persian.dart';
import 'package:shamsi_date/shamsi_date.dart';

class PersianMaterialLocalizations extends DefaultMaterialLocalizations {
  static const _singleton = PersianMaterialLocalizations._();

  const PersianMaterialLocalizations._();

  factory PersianMaterialLocalizations() {
    return _singleton;
  }

  static const _monthNames = [
    'فروردین',
    'اردیبهشت',
    'خرداد',
    'تیر',
    'مرداد',
    'شهریور',
    'مهر',
    'آبان',
    'آذر',
    'دی',
    'بهمن',
    'اسفند'
  ];
  static const weekDays = [
    'شنبه',
    'یکشنبه',
    'دوشنبه',
    'سه‌شنبه',
    'چهارشنبه',
    'پنج شنبه',
    'آدینه'
  ];

  @override
  String formatYear(DateTime date) {
    final pd = Jalali.fromDateTime(date);
    return toPersian(pd.year.toString());
  }

  @override
  String formatHour(TimeOfDay timeOfDay, {bool alwaysUse24HourFormat = false}) {
    return toPersian(super
        .formatHour(timeOfDay, alwaysUse24HourFormat: alwaysUse24HourFormat));
  }

  @override
  String formatMinute(TimeOfDay timeOfDay) {
    return toPersian(super.formatMinute(timeOfDay));
  }

  @override
  String formatTimeOfDay(TimeOfDay timeOfDay,
      {bool alwaysUse24HourFormat = false}) {
    return toPersian(super.formatTimeOfDay(timeOfDay,
        alwaysUse24HourFormat: alwaysUse24HourFormat));
  }

  @override
  String formatMonthYear(DateTime date) {
    final pd = Jalali.fromDateTime(date);
    return toPersian('${_monthNames[pd.month - 1]} ${pd.year}');
  }

  @override
  String formatFullDate(DateTime date) {
    final pd = Jalali.fromDateTime(date);
    return toPersian('${pd.year}/${pd.month}/${pd.day}');
  }

  @override
  String formatMediumDate(DateTime date) {
    final pd = Jalali.fromDateTime(date);
    final weekday = weekDays[(date.weekday + 1) % 7];
    final month = _monthNames[pd.month - 1];
    return toPersian('$weekday، ${pd.day} $month');
  }

  @override
  String formatDecimal(int number) {
    return toPersian(super.formatDecimal(number));
  }

  @override
  List<String> get narrowWeekdays => ['ی', 'د', 'س', 'چ', 'پ', 'آ', 'ش'];

  @override
  String get okButtonLabel => 'تایید';

  @override
  String get cancelButtonLabel => 'انصراف';

  @override
  int get firstDayOfWeekIndex => 6;

  @override
  String get anteMeridiemAbbreviation => 'ق. ظهر';

  @override
  String get postMeridiemAbbreviation => 'ب. ظهر';
}
