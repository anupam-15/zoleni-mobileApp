import 'package:zoleni/view/login_signup/log_in_module.dart';
import 'package:zoleni/view/login_signup/sign_up_module.dart';

import '../../exports/globle_exports.dart';

class SelectModule extends StatefulWidget {
  final String type;
  const SelectModule({super.key, required this.type});

  @override
  State<SelectModule> createState() => _SelectModuleState();
}

class _SelectModuleState extends State<SelectModule> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type){
      case 'logIn':
        return LogInModule();
      case 'signUp':
        return SignUpModule();
      default:
        return Container();
    }

  }
}
