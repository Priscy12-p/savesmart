# SaveSmart 

SaveSmart is a beginner-friendly savings goal app built using Flutter and Dart. The idea is to help people keep track of their savings and see how close they are to reaching a financial goal.

This is a learning project I am developing as part of my Mobile Development journey at WeThinkCode.

## About the Project

I wanted to build something practical that relates to everyday life. SaveSmart started as a simple idea: create an app that shows how much someone has saved, how much they still need, and their progress towards a savings target.

The current version is a working prototype that runs in Chrome.

## Current Features

- **Savings goal:** Displays a sample goal called *Holiday fund*.
- **Savings target:** The target is R5,000.
- **Current savings:** Starts at R1,250.
- **Progress bar:** Shows progress towards the savings goal.
- **Percentage complete:** Displays how much of the goal has been achieved.
- **Remaining balance:** Calculates how much is still needed.
- **Add savings:** A button adds R100 to the current savings.
- **Automatic updates:** The savings amount, progress percentage and remaining balance update when the button is pressed.

## Technologies Used

- Flutter — for building the application interface.
- Dart — for the application's logic.
- Visual Studio Code — for writing and editing code.
- Git — for version control.
- GitHub — for hosting and sharing the source code.

## Getting Started

### Prerequisites

Make sure Flutter and Git are installed on your computer.

Check your Flutter installation by running:

```bash
flutter --version
flutter doctor
```

### Running the App

1. Clone the repository:

   ```bash
   git clone https://github.com/Priscy12-p/savesmart.git
   ```

2. Open the project folder:

   ```bash
   cd savesmart
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application in Chrome:

   ```bash
   flutter run -d chrome
   ```

## Example Savings Goal

| Savings Information | Amount |
|---|---:|
| Goal name | Holiday fund |
| Target amount | R5,000 |
| Starting savings | R1,250 |
| Starting progress | 25% |
| Amount remaining | R3,750 |

When the user presses **Add R100 savings**, the saved amount increases to R1,350, progress updates to 27%, and the remaining amount decreases to R3,650.

## Project Structure

```text
savesmart/
├── lib/
│   └── main.dart
├── test/
│   └── widget_test.dart
├── pubspec.yaml
└── README.md
```
>verification code:WTC-NL4Y96YP

- `lib/main.dart` contains the main application and savings screen.
- `test/widget_test.dart` is the location for Flutter widget tests.
- `pubspec.yaml` contains the project configuration and dependencies.
- `README.md` explains the project.

**Note:** SaveSmart-specific automated tests have not yet been written or run.

## Current Limitations

- The savings goal is fixed.
- The starting savings amount is fixed.
- Users can only add R100 at a time.
- Users cannot create their own savings goals yet.
- Savings information is not permanently stored.
- Firebase Authentication has not yet been implemented.
- Automated tests still need to be written and run.

## Future Improvements

- Allow users to create their own savings goals.
- Allow users to enter custom savings amounts.
- Support multiple savings goals.
- Save progress between app sessions.
- Explore Firebase Authentication.
- Store savings information in a database.
- Keep a history of savings contributions.
- Write automated widget tests.

## Learning Objectives

Through SaveSmart, I am practising Flutter widgets, Dart programming, state management, basic financial calculations, Git version control and project documentation.

I also plan to explore testing and Firebase as I progress through my Mobile Development learning journey.

## Project Status

**Status:** Beginner prototype — in development.

The savings dashboard and Add R100 button have been implemented. Testing, data persistence, custom savings goals and Firebase integration remain future development tasks.
