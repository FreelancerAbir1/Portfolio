

import '../../../const/export/export.dart';

class GetToKnowMe extends StatelessWidget {
  const GetToKnowMe({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        style: Theme.of(context).textTheme.bodyLarge, maxLines: 1);
  }
}