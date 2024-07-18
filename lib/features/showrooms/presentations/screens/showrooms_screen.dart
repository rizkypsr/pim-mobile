import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/widgets/base_text_field.dart';
import 'package:pim_mobile/core/widgets/error_box.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/features/showrooms/domain/params/showroom_filter_params.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_filter_provider.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_provider.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/showroom_list_item.dart';

class ShowroomsScreen extends ConsumerWidget {
  const ShowroomsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showroomRef = ref.watch(getShowroomsProvider);

    return Scaffold(
      appBar: const MainAppBar.light(title: "Daftar Showroom"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          //   child: ChipButton(
          //     child: const Icon(
          //       Icons.filter_alt_outlined,
          //       color: UIColor.darkGrey,
          //     ),
          //     onPressed: () {
          //       showBarModalBottomSheet(
          //         context: context,
          //         builder: (context) => SingleChildScrollView(
          //           controller: ModalScrollController.of(context),
          //           child: SafeArea(
          //             child: Padding(
          //               padding: const EdgeInsets.all(16),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   const Text(
          //                     'Filter',
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   const SizedBox(height: 16),
          //                   const Text(
          //                     'Harga',
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   SizedBox(
          //                     height: 48,
          //                     child: Row(
          //                       children: [
          //                         Expanded(
          //                           child: TextFormField(
          //                             keyboardType: TextInputType.number,
          //                             decoration: const InputDecoration(
          //                               hintText: 'Min',
          //                             ),
          //                           ),
          //                         ),
          //                         const SizedBox(width: 8),
          //                         Expanded(
          //                           child: TextFormField(
          //                             keyboardType: TextInputType.number,
          //                             decoration: const InputDecoration(
          //                               hintText: 'Max',
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                   const SizedBox(height: 16),
          //                   const Text(
          //                     'Merk',
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   TextFormField(),
          //                   const SizedBox(height: 16),
          //                   const Text(
          //                     'Tahun',
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                   const SizedBox(height: 8),
          //                   ChipButton(
          //                     child: const Text('Pilih Tahun'),
          //                     onPressed: () {
          //                       showDialog(
          //                         context: context,
          //                         builder: (BuildContext context) {
          //                           return AlertDialog(
          //                             title: const Text("Pilih Tahun"),
          //                             content: SizedBox(
          //                               width: 300,
          //                               height: 300,
          //                               child: YearPicker(
          //                                 firstDate: DateTime(
          //                                     DateTime.now().year - 100, 1),
          //                                 lastDate:
          //                                     DateTime(DateTime.now().year),
          //                                 selectedDate: DateTime.now(),
          //                                 onChanged: (DateTime dateTime) {
          //                                   // close the dialog when year is selected.
          //                                   Navigator.pop(context);

          //                                   // Do something with the dateTime selected.
          //                                   // Remember that you need to use dateTime.year to get the year
          //                                 },
          //                               ),
          //                             ),
          //                           );
          //                         },
          //                       );
          //                     },
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: BaseTextField(
              name: 'search',
              hint: 'Cari showroom...',
              prefixIcon: const Icon(Icons.search),
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                ref.read(showroomFilterProvider.notifier).update(
                      ShowroomFilterParams(showroomName: value),
                    );
              },
            ),
          ),
          Expanded(
            child: showroomRef.when(
              data: (showrooms) {
                if (showrooms.isEmpty) {
                  return const Center(child: Text('Tidak ada data showroom'));
                }

                return GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: showrooms.length,
                  itemBuilder: (context, index) {
                    final showroom = showrooms[index];
                    return ShowroomListItem(showroom: showroom);
                  },
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stackTrace) {
                return ErrorBox(message: (error as Failure).message);
              },
            ),
          ),
        ],
      ),
    );
  }
}
