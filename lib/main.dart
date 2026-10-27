import 'package:flutter/material.dart'; // Imports Flutter's ready-made UI tools.

// This is where the app starts running.
void main() {
  runApp(const SaveSmartApp()); // Displays our main app widget.
}

// This widget sets up the whole SaveSmart application.
class SaveSmartApp extends StatelessWidget {
  const SaveSmartApp({super.key}); // Creates the app widget.

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the app's theme, title and first screen.
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner.
      title: 'SaveSmart', // Sets the app's name.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal, // Creates a teal colour theme.
        ),
        useMaterial3: true, // Uses Flutter's Material 3 design.
      ),
      home: const SavingsHomePage(), // Opens the savings screen first.
    );
  }
}

// This screen changes when the user adds savings,
// so we use StatefulWidget to manage changing data.
class SavingsHomePage extends StatefulWidget {
  const SavingsHomePage({super.key});

  @override
  State<SavingsHomePage> createState() => _SavingsHomePageState();
}

// This class stores the screen's data and builds its interface.
class _SavingsHomePageState extends State<SavingsHomePage> {
  final double savingsGoal = 5000; // The target amount in rand.
  double savedAmount = 1250; // The amount saved so far.

  @override
  Widget build(BuildContext context) {
    // Calculates how much money is still needed.
    double remaining = savingsGoal - savedAmount;

    // Calculates progress as a value between 0.0 and 1.0.
    // The clamp prevents progress from going below 0% or above 100%.
    double progress = (savedAmount / savingsGoal).clamp(0.0, 1.0);

    // Scaffold provides the basic page layout.
    return Scaffold(
      // The top bar displays the app name.
      appBar: AppBar(
        title: const Text('SaveSmart'),
        centerTitle: true, // Centres the title.
      ),

      // Padding creates space around the screen's content.
      body: Padding(
        padding: const EdgeInsets.all(24),

        // Column arranges its children vertically.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main heading.
            const Text(
              'My savings goal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8), // Adds vertical spacing.
            // Short description under the heading.
            const Text('Save towards something that matters to you.'),

            const SizedBox(height: 24),

            // Card groups related savings information together.
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                // Another Column arranges the card's contents vertically.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Holiday fund'), // Name of our sample goal.

                    const SizedBox(height: 8),

                    // Displays the current savings amount with two decimals.
                    Text(
                      'R${savedAmount.toStringAsFixed(2)} saved',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Displays the target savings amount.
                    Text('Goal: R${savingsGoal.toStringAsFixed(2)}'),

                    const SizedBox(height: 16),

                    // Shows progress towards the target.
                    LinearProgressIndicator(value: progress),

                    const SizedBox(height: 8),

                    // Converts progress into a percentage for display.
                    Text('${(progress * 100).toStringAsFixed(0)}% complete'),

                    const SizedBox(height: 12),

                    // Shows the amount still needed to reach the goal.
                    Text('R${remaining.toStringAsFixed(2)} left to save'),
                  ],
                ),
              ),
            ),

            const Spacer(), // Pushes the button towards the bottom.
            // Makes the button fill the available width.
            SizedBox(
              width: double.infinity,

              // FilledButton creates our savings button.
              child: FilledButton.icon(
                // Runs this function when the button is pressed.
                onPressed: () {
                  // setState tells Flutter to rebuild the screen
                  // because the saved amount has changed.
                  setState(() {
                    savedAmount += 100; // Adds R100 to the savings.
                  });
                },
                icon: const Icon(Icons.add), // Displays a plus icon.
                label: const Text('Add R100 savings'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
