# persian_flutter
Persian date picker, time picker and localization for flutter.

## Getting Started

A simple example on how to display a Persian datepicker.

**Import the package**

```dart
import 'package:persian_flutter/persian_flutter.dart';
```

**Call the picker**

```dart
RaisedButton(onPressed: () async {
    final date = await showPersianDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().add(
      Duration(days: -1),
      ),
      lastDate: DateTime.now().add(
      Duration(days: 90),
      ),
    );
    
    if(date != null)
    {
      // Do simething.
    }
  },
  child: Text('Show date picker'),
);
```
