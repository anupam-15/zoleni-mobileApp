


import '../../exports/globle_exports.dart';

class CustomTab extends StatelessWidget {
  final String text;

  //final int index;
  //final bool isSelected;
  //const CustomTab({super.key});
  CustomTab({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        //color: Colors.transparent,
      ),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Text(
        text,
        style: TextStyle(
            // color: Colors.deepOrange,
       ),
      ),
    );
  }
}
