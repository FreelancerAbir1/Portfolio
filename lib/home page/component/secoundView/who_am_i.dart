
import '../../../const/export/export.dart';

class WhoAmI extends StatelessWidget {
  const WhoAmI({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: appColor.kPrimaryColor),
      maxLines: 1,
    );
  }
}