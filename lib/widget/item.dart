import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exampless/provider/provider_function.dart';

class ItemShowcase extends StatelessWidget {
  const ItemShowcase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, data, child) {
        return Container(
          height: 50,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.size,
            itemBuilder: (context, index) {
              final item = data.item[index];
              return GestureDetector(
                onDoubleTap: () => data.removeItem(item),
                child: Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(item.item[0]),
                    ),
                    title: Row(
                      children: [
                        Text(
                          item.item,
                        ),
                        Checkbox(
                            value: item.complete,
                            onChanged: (c) => data.toggleItem(item)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
