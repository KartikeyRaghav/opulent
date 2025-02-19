# Opulent - Flutter E-Commerce App

Opulent is a beautifully designed e-commerce application built using Flutter. The app features a complete UI for seamless shopping experiences but currently lacks functionality due to time constraints.

## Features

- Onboarding Screens - A smooth introduction to the app.
- Authentication - Login and Signup screens for user access.
- Home Screen - Displays featured products and categories.
- Store Screen - Browse products by categories.
- Wishlist - Save favorite products for later.
- Product Detail Screen - View detailed information about a product.
- Cart Screen - Add and manage products before checkout.
- Profile & Settings - Manage user details and preferences.

## Tech Stack

- Flutter - For cross platform UI development using the same code.
  Different add-on like cupertino_icons, iconsax, etc have been used for better UI.
- Firebase - Firebase has been used to provide auth functionality(Not yet completed) and to fetch data from the firebase to the app in future.

## Folder Structure

The app follows a folder structure.
- All the images have been added in the assets folder. There are sub-folders in the assets folder based on the categories of images.
- The lib folder contains all the code. There are sub-folders for better placement of code.
  - The widgets common to some screens have been placed in the common folder.
  - The features folder contains different screens.
  - The utils folder contains theme of the app, all constant and other utility items and functions.

## Installation

- Clone the repository:
  git clone https://github.com/KartikeyRaghav/opulent.git

- Navigate to the project folder:
  cd opulent

- Install dependencies:
  flutter pub get

- Run the app:
  flutter run

## Screenshots

Screenshots have been added in the screenshot folder. Some of them are shown below

- ![image](/screenshots/Screenshot_2025-02-16-23-47-45-232_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-47-49-856_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-48-12-086_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-48-21-552_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-48-41-184_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-48-43-943_com.kartikeyraghav.opulent.jpg)
- ![image](/screenshots/Screenshot_2025-02-16-23-48-55-190_com.kartikeyraghav.opulent.jpg)

## Future Enhancements

- Implement backend functionality for authentication and data management.
- Integrate payment gateway for seamless transactions.
- Add push notifications and user engagement features.
