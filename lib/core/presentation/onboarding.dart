import 'package:expense_bud/config/constants.dart';
import 'package:expense_bud/config/theme.dart';
import 'package:expense_bud/core/presentation/choose_currency.dart';
import 'package:expense_bud/core/utils/extensions.dart';
import 'package:expense_bud/core/widgets/button.dart';
import 'package:expense_bud/core/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(Insets.lg),
        // mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: Insets.lg),
          Image.asset(AppImages.logo, height: 24),
          const SizedBox(height: Insets.lg),
          const Info(
            'Add entries',
            'Keep track of your income and expenses',
            PhosphorIcons.tray,
          ),
          const SizedBox(height: Insets.lg),
          const Info(
            'Check insights',
            'Detailed weekly and monthly charts based on your entries',
            PhosphorIcons.lightning,
          ),
          const SizedBox(height: Insets.lg),
          const Info(
            'Make right decisions',
            'Control your money flow and stay on top of your game',
            PhosphorIcons.medal,
          ),
          const SizedBox(height: Insets.md),
          Button(
            "GET STARTED",
            onTap: () => context.push(const ChooseCurrencyPage()),
          ),
          Expanded(child: SizedBox.shrink())
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  const Info(this.title, this.subtitle, this.icon, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: IconSizes.lg,
        ),
        Gap.md,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.subtitle1,
              ),
              Gap.sm,
              Text(
                subtitle,
                style: context.textTheme.subtitle1!
                    .copyWith(color: AppColors.kGrey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
