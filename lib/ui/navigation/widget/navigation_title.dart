import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../my_app.dart';
import '../../home/view/home_view.dart';

class NavigationTitle extends StatelessWidget {
  const NavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // SelectionAreaの影響でポインター表示にならないのでdisabledで例外対応
    // ref. https://github.com/flutter/flutter/issues/104595#issuecomment-1378549493
    return SelectionContainer.disabled(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => context.go(HomeView.path),
          child: Text(
            MyApp.title,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
