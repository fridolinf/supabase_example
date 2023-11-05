# Simple CRUD Notes with Authentication & Authentication

## Tech Stack

[![SUPABASE](https://getlogo.net/wp-content/uploads/2020/11/supabase-logo-vector.png)](https://supabase.com/)

[![FLUTTER](https://www.vectorlogo.zone/logos/flutterio/flutterio-ar21.png)](https://flutter.dev/)

[![GETX](https://blog.kakaocdn.net/dn/tTJsy/btraPuKSP5Y/34aELwuQ5eWBta1trRneU1/img.png)](https://pub.dev/packages/get)

## Features

- CRUD Notes (title, description)
- Foreign key from **users** table in **notes** table
- Authentication & Authorization
- Fully Getx cli pattern implementation
- Automatic logout based on time **after login**

## Environment Variables

To run this project, you will need to add the following environment variables to your **.env** file
or change **.env.example** to **.env** and don't forget to set the environment key

`SUPABASE_URL`= "Your Supabase URL"

`SUPABASE_ANONKEY`= "Your Supabase anonKey"

## Run Locally

Clone the project

```bash
  git clone https://github.com/fridolinf/supabase_example.git
```

Go to the project directory

```bash
  cd supabase_example
```

Install getx cli globally

```bash
  pub global activate get_cli
```

see full implementation:
https://pub.dev/packages/get_cli

Install dependencies

- using flutter cli and vscode

```bash
  flutter pub get
```

## DB Schema
- Table

![image](https://github.com/fridolinf/supabase_example/assets/50565864/95a57658-32d1-4118-b7be-2d63e814fe30)

- Notes Table

![image](https://github.com/fridolinf/supabase_example/assets/50565864/7c6ee9d6-d3e0-4f29-9abc-387dfc99cbc2)

- Users Table

![image](https://github.com/fridolinf/supabase_example/assets/50565864/147414ab-e3c9-456c-a51a-a25a1ad2b9fd)


Run without debug

- Windows user

```bash
  ctrl + f5
```

## Related

Here are some related projects

- Build and release flutter project

[macOS](https://docs.flutter.dev/deployment/macos)

[Windows](https://docs.flutter.dev/deployment/windows)

- Install flutter plugin for vscode
  [Flutter plugin](https://docs.flutter.dev/get-started/editor#:~:text=Install%20the%20Flutter%20and%20Dart,the%20list%2C%20and%20click%20Install.)

## Screenshots

[App Screenshot](https://drive.google.com/drive/folders/1cUHcP7KOGkT36TGOdDVEchq4PXQx_ex5)

## Authors

[@fridolinf](https://github.com/fridolinf)
