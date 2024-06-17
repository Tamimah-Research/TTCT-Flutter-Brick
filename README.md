# TTCT Flutter Template Using Mason
## How to Use 🦀

### Activate Mason Globally
```dart
dart pub gobal activate mason_cli
```

### Add Path to environment

#### In windows
```dart
C:\Users\{your_user}\AppData\Local\Pub\Cache\bin
```

### Add Path to environment

#### Go to the root of your project 
```sh
mason init
```
#### Add this dependency in Mason.yaml
```sh
  ttct_flutter:
    git:
      url: https://github.com/Tamimah-Research/TTCT-Flutter-Brick
```
#### To fetch dependency 

```sh
mason get
```

#### To Generate Code

```sh
mason make ttct_flutter
```


## Output 📦

```sh

--project_name app
├── app_ui
│   ├── assets
│   │   └── fonts
│   │   │   └── .ttfs
│   ├── lib
│   │   ├── core
│   │   │   ├── constants
│   │   │   │   ├── constants.dart
│   │   │   ├── exception
│   │   │   ├── extension
│   │   │   ├── functions
│   │   │   │   ├── date_fns.dart
│   │   │   │   ├── validations.dart
│   │   │   │   ├── constants.dart
│   │   │   ├── network
│   │   │   │   ├── client_config.dart
│   │   │   │   ├── end_points.dart
│   │   │   │   ├── network_services.dart
│   │   │   │   ├── response_wrapper.dart
│   │   │   ├── routes
│   │   │   ├── shared_widgets
│   │   ├── features
│   │   ├── service_collection
│   │   │   ├── di.dart
│   │   ├── src
│   │   │   ├── layout
│   │   │   │   ├── breakpoints.dart
│   │   │   │   └── layout.dart
│   │   │   ├── typography
│   │   │   │   ├── font_weights.dart
│   │   │   │   ├── text_styles.dart
│   │   │   │   └── typography.dart
│   │   │   ├── widgets
│   │   │   │   ├── responsive_layout_builder.dart
│   │   │   │   └── widgets.dart
│   │   │   ├── colors.dart
│   │   │   └── theme.dart
│   │   └── app_ui.dart
│   └──
└── ...
```
