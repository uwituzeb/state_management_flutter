# Favorites Management App

A Flutter application that demonstrates how to manage a list of favorite items using the `Provider` package and `shared_preferences` for data persistence. Users can add items to their favorites, view them on a separate screen, and remove them if necessary. The app ensures that favorites persist across app restarts.

## Features

- **Add Items to Favorites:** Users can add products to their favorite list.
- **View Favorites:** Display favorite items on a separate screen.
- **Remove Items from Favorites:** Users can remove items from their favorites.
- **Data Persistence:** Favorite items are saved using `shared_preferences`, ensuring that favorites persist across app restarts.

## Prerequisites

- Flutter SDK installed on your system.
- Android Studio or Xcode for running the app on Android/iOS simulators/emulators.
- Internet connection for downloading dependencies.

## Installation

1. **Clone the Repository:**
   ```
   git clone https://github.com/uwituzeb/state_management_flutter.git`
   cd state_management_flutter
   ```

2. **Install Dependencies**
`flutter pub get`

3. **Run the app**
`flutter run`

## Usage
- From the product list screen, tap on the heart icons to add items to your favorites.
- Navigate to the Favorites Screen from the floating action button on the product list screen.
- On the favorites screen, tap the trash icon to remove an item from the favorites list.