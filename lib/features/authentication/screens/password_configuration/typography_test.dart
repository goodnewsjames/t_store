import 'package:flutter/material.dart';

class TypographyTest extends StatelessWidget {
  const TypographyTest({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Display Large',
                style: textTheme.displayLarge,
              ),
              SizedBox(height: 16),
              Text(
                'Display Medium',
                style: textTheme.displayMedium,
              ),
              SizedBox(height: 16),

              Text(
                'Display Small',
                style: textTheme.displaySmall,
              ),
              SizedBox(height: 16),

              Text(
                'Headline Large',
                style: textTheme.headlineLarge,
              ),
              Text(
                'Headline Medium',
                style: textTheme.headlineMedium,
              ),
              SizedBox(height: 16),

              Text(
                'Headline Small',
                style: textTheme.headlineSmall,
              ),
              SizedBox(height: 16),

              Text(
                'Title Large',
                style: textTheme.titleLarge,
              ),
              SizedBox(height: 16),

              Text(
                'Title Medium',
                style: textTheme.titleMedium,
              ),
              SizedBox(height: 16),

              Text(
                'Title Small',
                style: textTheme.titleSmall,
              ),
              SizedBox(height: 16),

              Text(
                'Body Large',
                style: textTheme.bodyLarge,
              ),
              Text(
                'Body Medium',
                style: textTheme.bodyMedium,
              ),
              SizedBox(height: 16),
              Text(
                'Body Small',
                style: textTheme.bodySmall,
              ),
              SizedBox(height: 16),

              Text(
                'Label Large',
                style: textTheme.labelLarge,
              ),
              SizedBox(height: 16),

              Text(
                'Label Medium',
                style: textTheme.labelMedium,
              ),
              SizedBox(height: 16),

              Text(
                'Label Small',
                style: textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
