import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset("assets/icons/search.svg"),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Search here ...",
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ))
        ],
      ),
    );
  }
}
