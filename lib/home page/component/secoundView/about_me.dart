

import '../../../const/export/export.dart';

class AboutMee extends StatelessWidget {
  const AboutMee({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        style: Theme.of(context).textTheme.displayMedium, maxLines: 1);
  }
}