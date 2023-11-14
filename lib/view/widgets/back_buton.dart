

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoleni/exports/globle_exports.dart';
import 'package:zoleni/view/widgets/appbar.dart';


import '../../constant/appcolors.dart';



class BackButon extends StatelessWidget {
  final VoidCallback onTap;
  const BackButon({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.deepOrange),
        onPressed: onTap
    );
  }
}
