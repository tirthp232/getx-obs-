# Outfit Formulas
``
Simple and stylish outfit guides to make style easy. Shop our outfit  guides to make getting dressed the easiest thing you do all
``

# Flutter SDK Version
``
3.0.5
``

# Dart version
``
2.18
``
# How to Use
``
Step 1: 
Download or clone this repo by using the link below:
``

```sh
https://gitlab.com/iroid-flutter-team1/outfit-formula-flutter-app
```

``
Step 2: Go to project root and execute the following command in console to get the required dependencies:
``
```sh
flutter pub get 
```

``
Step 3: Open the main.dart file in the lib folder, F5 or Ctrl + F5 to run the project, and then you can start developing and debugging.
``

#### Figma link : 
```sh
https://www.figma.com/file/v75HmTXodCbH7u76AgIu5J/Avani-Task?node-id=0%3A1&t=Acpz4hIVcJcVvcqR-0
```
#### Swagger Link/Postman link :
```sh
https://www.figma.com/file/v75HmTXodCbH7u76AgIu5J/Avani-Task?node-id=0%3A1&t=Acpz4hIVcJcVvcqR-0
```
#### Admin panel link with email and password :
```sh
https://www.figma.com/file/v75HmTXodCbH7u76AgIu5J/Avani-Task?node-id=0%3A1&t=Acpz4hIVcJcVvcqR-0
```
#### Appstore link : 
```sh
https://www.figma.com/file/v75HmTXodCbH7u76AgIu5J/Avani-Task?node-id=0%3A1&t=Acpz4hIVcJcVvcqR-0
```
#### Playstore link : 
```sh
https://www.figma.com/file/v75HmTXodCbH7u76AgIu5J/Avani-Task?node-id=0%3A1&t=Acpz4hIVcJcVvcqR-0
```

# App Features:
- Login
- Sign Up
- Create My Closet feature
- Create Calendar
- Selfies:
- Favorites Folder:
- Create shareable QR Code
- Freebies/ Extras included in App
- Video Tutorials

# Folder Structure
##### Here is the core folder structure which flutter provides
flutter-app/
|- android
|- assets
|- build
|- ios
|- lib
|- test


##### Here is the folder structure we have been using in this project
lib/
|-api/ - Global Restful api requests, including interceptors, etc.
   |- interceptors - Interceptors, including auth, request, and response interceptors.
   |- api.dart - Restful api export file.
|- helper - Add any helper file here like in app purchase help, push notification         helper
|- lang - Internationalization, including translation files, translation service files, etc.
   |- lang.dart - Language export file.
|- models - Various structured entity classes, divided into request and response entities.
   |- models.dart - Entity class export file.
|- modules - Business module folder.
   |- auth - Login & Registration Module.
   |- home - Home module.
   |- splash - Splash module.
   |- modules.dart - Module export file.
|- routes - Routing module.
   |- app_pages.dart - Routing page configuration.
   |- app_routes.dart - Route names.
   |- routes.dart - Route export file.
|- Shared - Global shared folders, including static variables, global services, utils, global Widgets, etc.
   |- shared.dart - Global shared export file.
|- theme - Theme folder.
|- app_bindings.dart - Services started before the app runs, such as Restful api.
|- di.dart - Global dependency injection objects, such as SharedPreferences, etc.
|- main.dart - Main entry.
