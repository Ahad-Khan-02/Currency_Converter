Flutter Currency Converter App
-----------------------------

This is a simple Currency Converter App built using Flutter. It includes two interfaces:

A Material Design version for Android-style UI

A Cupertino version for iOS-style UI

The app currently converts between:

USD to PKR

PKR to USD



Features
-----------------------------

-Convert USD to PKR and vice versa

-Select conversion type from a popup menu (Material version)

-Responsive & clean UI

-Built with Flutter’s Material and Cupertino libraries

-Supports decimal input

-------------------------------

Technologies Used
-----------------------------

-Flutter (Dart)

-Material & Cupertino widgets

-Stateful widgets & state management via setState

-Text input & controllers

-------------------------------

Project Structure
-----------------------------

lib/

 ├── main.dart                       # Entry point (runs Material version)
 
 ├── currency_converter_material_page.dart
 
 └── currency_converter_cupertino_page.dart

 -----------------------------------
 
Getting Started
------------------

 Prerequisites
 -
  Flutter installed (>=3.0)
  
  Android Studio / VS Code or any preferred IDE

 Running the app
 ----------------
  flutter pub get
  flutter run
  By default, main.dart loads the Material UI.
  If you want to try the Cupertino version, 
  
  change:

    home: CurrencyConverterMaterialPage()

  to

    home: CurrencyConverterCupertinoPage() 
    in main.dart.

    
-------------------------------------------------------

How it Works
---------------
  Material App:

    AppBar has a popup menu to choose between USD to PKR or PKR to USD.
    
    Text input accepts amount, Convert button multiplies by selected formula.

  Cupertino App:

  Simple iOS-styled interface with a single USD to PKR conversion.

------------------------------------------------------  

Todo / Future improvements
--------------------------

 Add more currencies (EUR, GBP, AED, etc.)

 Fetch real-time exchange rates from an API

 Improve error handling for invalid input

 Unit tests
 
--------------------------------

Contributing
--------------------------------
PRs are welcome!
If you find bugs or want to add features, feel free to fork & open a pull request.

--------------------------------

Credits
--------------------------------
Developed by 'Ahad Khan' as a practice project to explore Flutter’s Material and Cupertino widgets.

--------------------------------
Happy Coding!
--------------------------------

