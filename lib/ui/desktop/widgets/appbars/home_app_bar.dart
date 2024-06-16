import 'package:flutter/material.dart';
import 'package:maid/ui/desktop/widgets/buttons/load_model_button.dart';
import 'package:maid/ui/shared/widgets/dropdowns/llm_dropdown.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: preferredSize.height,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LlmDropdown(),
          const Spacer(flex: 1),
          const Expanded(
            flex: 8,
            child: LoadModelButton(),
          ),
          const Spacer(flex: 1),
          IconButton(
            tooltip: 'About',
            icon: const Icon(Icons.info), 
            onPressed: () => openAbout(context)
          ),
        ],
      ),
    );
  }

  void openAbout(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/about'
    );
  }
}