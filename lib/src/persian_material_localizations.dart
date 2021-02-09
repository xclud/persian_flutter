import 'package:flutter/material.dart';
import 'package:persian/persian.dart';

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
    final pd = PersianDate.fromDateTime(date);
    return pd.year.toString().withPersianNumbers();
  }

  @override
  String formatHour(TimeOfDay timeOfDay, {bool alwaysUse24HourFormat = false}) {
    return super
        .formatHour(timeOfDay, alwaysUse24HourFormat: alwaysUse24HourFormat)
        .withPersianNumbers();
  }

  @override
  String formatMinute(TimeOfDay timeOfDay) {
    return super.formatMinute(timeOfDay).withPersianNumbers();
  }

  @override
  String formatTimeOfDay(TimeOfDay timeOfDay,
      {bool alwaysUse24HourFormat = false}) {
    return super
        .formatTimeOfDay(timeOfDay,
            alwaysUse24HourFormat: alwaysUse24HourFormat)
        .withPersianNumbers();
  }

  @override
  String formatMonthYear(DateTime date) {
    final pd = PersianDate.fromDateTime(date);
    return '${_monthNames[pd.month - 1]} ${pd.year}'.withPersianNumbers();
  }

  @override
  String formatFullDate(DateTime date) {
    final pd = PersianDate.fromDateTime(date);
    return '${pd.year}/${pd.month}/${pd.day}'.withPersianNumbers();
  }

  @override
  String formatMediumDate(DateTime date) {
    final pd = PersianDate.fromDateTime(date);
    final weekday = weekDays[(date.weekday + 1) % 7];
    final month = _monthNames[pd.month - 1];
    return '$weekday، ${pd.day} $month'.withPersianNumbers();
  }

  @override
  String formatDecimal(int number) {
    return super.formatDecimal(number).withPersianNumbers();
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
        return '$selectedRowCount آیتم انتخاب شده'.withPersianNumbers();
    }
  }

  @override
  String pageRowsInfoTitle(
      int firstRow, int lastRow, int rowCount, bool rowCountIsApproximate) {
    return rowCountIsApproximate
        ? '$firstRow–$lastRow از حدود $rowCount'.withPersianNumbers()
        : '$firstRow–$lastRow از $rowCount'.withPersianNumbers();
  }

  @override
  String remainingTextFieldCharacterCount(int remaining) {
    switch (remaining) {
      case 0:
        return 'پر شد';
      default:
        return '$remaining حرف مانده'.withPersianNumbers();
    }
  }
}
