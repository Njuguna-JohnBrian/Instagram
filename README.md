
# PostIt - A Flutter Picture/Video Sharing App

PostIt is a Flutter Instagram clone that allows users to share photos, connect with friends, and enjoy a social media experience. This project utilizes Firebase for backend services and provides a foundation for building a social media app using Flutter.

![PostIt App Screenshot](assets/logo.jpg)

## Features

- **Authentication**: Users can sign up and log in using their email or through social authentication providers like Google.
- **Profile Customization**: Users can create and customize their profiles, including profile pictures and bios.
- **Feed**: The main feed displays posts from followed users, allowing users to like, comment, and share posts.
- **Photo Sharing**: Users can upload and share photos with captions.
- **Real-time Notifications**: Users receive real-time notifications for likes, comments, and follows.
- **User Search**: Users can search for other users and follow them.
- **Direct Messaging**: Communicate with friends through private messages.

## Getting Started

To get started with PostIt, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Njuguna-JohnBrian/PostIt.git
   ```

2. Make sure you have Flutter and Dart installed on your system.

3. Install project dependencies by running:

   ```bash
   flutter pub get
   ```

4. Configure Firebase for your project. You'll need to create a Firebase project and set up authentication, Firestore, and Storage services. Update the configuration in your Flutter app.

5. Run the app on your preferred emulator or physical device:

   ```bash
   flutter run
   ```

## Dependencies

Here are some of the major dependencies used in this project:

- `cloud_firestore`: Firebase Firestore is used for real-time data storage.
- `firebase_auth`: Firebase Authentication for user sign-in and registration.
- `firebase_storage`: Firebase Storage for storing user-uploaded photos.
- `flutter_staggered_grid_view`: Provides the staggered grid view for the user feed.
- `flutter_svg`: Allows for rendering SVG images.
- `image_picker`: Used for selecting and capturing photos.
- `intl`: Provides internationalization support for date formatting.
- `provider`: A state management library for handling app state.
- `transparent_image`: Caches and displays transparent images efficiently.
- `uuid`: Generates unique identifiers.

## Contributing

We welcome contributions to make PostIt even better! Whether it's bug fixes, new features, or improvements to the documentation, your contributions are highly appreciated. Please follow the [contribution guidelines](CONTRIBUTING.md) for this project.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, feel free to contact the project owner:

- **Name**: John Brian Njuguna
- **Email**:  njugunajb96@gmail.com

We hope you enjoy using PostIt as a learning resource or as a foundation for your social media app. Happy coding!