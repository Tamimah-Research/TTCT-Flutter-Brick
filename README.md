# TTCT Flutter Template Using Mason

## How to Use 🦀

### Activate Mason Globally
```sh
dart pub global activate mason_cli
```

### Add Path to Environment

#### On Windows
Add the following path to your environment variables:
```sh
C:\Users\{your_user}\AppData\Local\Pub\Cache\bin
```

#### On Mac
Add the following path to your `~/.zshrc` or `~/.bash_profile` (depending on your shell):
```sh
export PATH="$PATH":"$HOME/.pub-cache/bin"
```
Then, run the following command to update your environment:
```sh
source ~/.zshrc
# or
source ~/.bash_profile
```

### Initialize Mason in Your Project

#### Go to the root of your project and run:
```sh
mason init
```

### Add the TTCT Flutter Dependency

#### In `mason.yaml`, add the following:
```yaml
  ttct_flutter:
    git:
      url: https://github.com/Tamimah-Research/TTCT-Flutter-Brick
```

### Fetch Dependencies
```sh
mason get
```

### Generate Code
```sh
mason make ttct_flutter
```

## Output 📦

After running the code generation, you will get the following structure:

```
--project_name app
├── app_ui
│   ├── assets
│   │   └── fonts
│   │       └── .ttfs
│   ├── lib
│   │   ├── core
│   │   │   ├── constants
│   │   │   │   └── constants.dart
│   │   │   ├── exception
│   │   │   ├── extension
│   │   │   ├── functions
│   │   │   │   ├── date_fns.dart
│   │   │   │   ├── validations.dart
│   │   │   │   └── constants.dart
│   │   │   ├── network
│   │   │   │   ├── client_config.dart
│   │   │   │   ├── end_points.dart
│   │   │   │   ├── network_services.dart
│   │   │   │   └── response_wrapper.dart
│   │   │   ├── routes
│   │   │   ├── shared_widgets
│   │   ├── features
│   │   ├── service_collection
│   │   │   └── di.dart
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
└── ...
```

This detailed structure ensures you have a well-organized and modular Flutter project setup.
