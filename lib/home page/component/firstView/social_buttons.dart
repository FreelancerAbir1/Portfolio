
import '../../../const/export/export.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var width = SizedBox(width: Responsive.isDesktop(context) ? 2.w : 0);
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HoverBuilder(
            builder: (isHover) => SignInButton(
              Buttons.email,
              mini: true,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 02,
                  color: isHover
                      ? appColor.kPrimaryColor
                      : appColor.kTransparentColor,
                ),
              ),
            ),
          ),
          width,
          HoverBuilder(
            builder: (isHover) => SignInButton(
              Buttons.facebook,
              mini: true,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 02,
                  color: isHover
                      ? appColor.kPrimaryColor
                      : appColor.kTransparentColor,
                ),
              ),
            ),
          ),
          width,
          HoverBuilder(
            builder: (isHover) => SignInButton(
              Buttons.linkedIn,
              mini: true,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 02,
                  color: isHover
                      ? appColor.kPrimaryColor
                      : appColor.kTransparentColor,
                ),
              ),
            ),
          ),
          width,
          HoverBuilder(
            builder: (isHover) => SignInButton(
              Buttons.tumblr,
              mini: true,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 02,
                  color: isHover
                      ? appColor.kPrimaryColor
                      : appColor.kTransparentColor,
                ),
              ),
            ),
          ),
          width,
          HoverBuilder(
            builder: (isHover) => SignInButton(
              Buttons.gitHub,
              mini: true,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 02,
                  color: isHover
                      ? appColor.kPrimaryColor
                      : appColor.kTransparentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
