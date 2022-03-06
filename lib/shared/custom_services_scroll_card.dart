import 'package:app_muritec/theme/theme.dart';
import 'package:app_muritec/views/views.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/gestures.dart';

class CustomServicesScrollCard extends StatelessWidget {
  const CustomServicesScrollCard({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutView widget;

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Container(
      padding: MainTheme.mainPadding,
      width: double.infinity,
      height: widget.height * 0.7,
      color: Colors.white,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: ListView.builder(
          controller: controller,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              width: 305,
              height: 50,
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
