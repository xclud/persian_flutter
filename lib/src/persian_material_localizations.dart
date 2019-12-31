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

  @override
  String get previousMonthTooltip => 'ماه قبل';

  @override
  String get nextMonthTooltip => 'ماه بعد';

  @override
  String get previousPageTooltip => 'صفحه قبل';

  @override
  String get nextPageTooltip => 'صفحه بعد';

  @override
  String get backButtonTooltip => 'بازگشت';

  @override
  String get closeButtonLabel => 'بستن';

  @override
  String get closeButtonTooltip => 'بستن';

  @override
  String get continueButtonLabel => 'ادامه';

  @override
  String get deleteButtonTooltip => 'پاک کردن';

  @override
  String get drawerLabel => 'منوی کنار';

  @override
  String get rowsPerPageTitle => 'تعداد سطر در صفحه';

  @override
  String get reorderItemDown => 'انتقال به پایین';

  @override
  String get reorderItemUp => 'انتقال به بالا';

  @override
  String get reorderItemLeft => 'انتقال به چپ';

  @override
  String get reorderItemRight => 'انتقال به راست';

  @override
  String get reorderItemToStart => 'انتقال به ابتدا';

  @override
  String get reorderItemToEnd => 'انتقال به انتها';

  @override
  String get refreshIndicatorSemanticLabel => 'رفرش';

  @override
  String get searchFieldLabel => 'جستجو';

  @override
  String selectedRowCountTitle(int selectedRowCount) {
    switch (selectedRowCount) {
      case 0:
        return 'هیچ آیتمی انتخاب نشده';
      default:
        return toPersian('$selectedRowCount آیتم انتخاب شده');
    }
  }

  @override
  String pageRowsInfoTitle(
      int firstRow, int lastRow, int rowCount, bool rowCountIsApproximate) {
    return rowCountIsApproximate
        ? toPersian('$firstRow–$lastRow از حدود $rowCount')
        : toPersian('$firstRow–$lastRow از $rowCount');
  }

  @override
  String remainingTextFieldCharacterCount(int remaining) {
    switch (remaining) {
      case 0:
        return 'پر شد';
      default:
        return '$remaining حرف مانده';
    }
  }
}
