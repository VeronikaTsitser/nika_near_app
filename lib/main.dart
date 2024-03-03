import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CheckBoxList(),
  ));
}

class CheckBoxList extends StatelessWidget {
  const CheckBoxList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CheckBoxItem(
                    title:
                        'Task $index Task Task $index Task Task $index Task Task $index Task Task $index Task Task $index Task Task $index Task Task $index Task ',
                    isDone: index.isEven,
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CheckBoxItem extends StatelessWidget {
  const CheckBoxItem({super.key, required this.title, required this.isDone});
  final String title;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
            constraints: BoxConstraints(maxWidth: width * 0.8), child: Text(title, overflow: TextOverflow.ellipsis)),
        Expanded(child: Text('-----------------------------------------------', maxLines: 1)),
        Checkbox(value: isDone, onChanged: (value) {}),
      ],
    );
  }
}
