import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/heart.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/single/ColorFiltered.dart';
import 'package:flutter_demo/widget/single/custom_paint_widget.dart';
import 'package:flutter_demo/widget/stateful/bottomsheet_widget.dart';
import 'package:flutter_demo/widget/stateful/draggable_widget.dart';
import 'package:flutter_demo/widget/stateful/expansion_widget.dart';
import 'package:flutter_demo/widget/stateful/form_widget.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/ink_widget.dart';
import 'package:flutter_demo/widget/stateful/listwheelscrollview_widget.dart';
import 'package:flutter_demo/widget/stateful/pageviewcontrol.dart';
import 'package:flutter_demo/widget/stateful/progressindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/recorderablelistview_widget.dart';
import 'package:flutter_demo/widget/stateful/scaffold_widget.dart';
import 'package:flutter_demo/widget/stateful/selectabletext_widget.dart';
import 'package:flutter_demo/widget/stateful/silverappbar_widget.dart';
import 'package:flutter_demo/widget/stateful/texfield_widget.dart';
import 'package:flutter_demo/widget/stateful/valuelistenablebuilder_widget.dart';
import 'package:flutter_demo/widget/stateless/actionchip_widget.dart';
import 'package:flutter_demo/widget/stateless/button_widget.dart';
import 'package:flutter_demo/widget/stateless/card_widget.dart';
import 'package:flutter_demo/widget/stateless/chip_widget.dart';
import 'package:flutter_demo/widget/stateless/choicechip_widget.dart';
import 'package:flutter_demo/widget/stateless/circleavatar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/filterchip.dart';
import 'package:flutter_demo/widget/stateless/gesturedetector_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/inputchip_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/pageview_widget.dart';
import 'package:flutter_demo/widget/stateless/singlechildscrollview_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';
import 'package:flutter_demo/widget/stateless/theme_widget.dart';
import 'package:flutter_demo/widget/stateless/useraccountdrawerheader_widget.dart';
import 'package:flutter_demo/widget/stateless/visiblity_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/alertdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/checkoutlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/gridtile_widget.dart';
import 'package:flutter_demo/widget/stateless/listtile_widget.dart';
import 'package:flutter_demo/widget/stateless/radiolisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/space_widget.dart';
import 'package:flutter_demo/widget/stateless/switchlisttile_widget.dart';
import 'package:flutter_demo/widget/stateless/aboutdialog_widget.dart';
import 'package:flutter_demo/widget/stateless/day_picker_widget.dart';
import 'package:flutter_demo/widget/stateless/dialog_widget.dart';
import 'package:flutter_demo/widget/stateless/materialBanner_widget.dart';
import 'package:flutter_demo/widget/stateless/navigationToolbar_widget.dart';
import 'package:flutter_demo/widget/stateless/placeholder_widget.dart';
import 'package:flutter_demo/widget/stateless/safe_area_widget.dart';
import 'package:flutter_demo/widget/stateless/simpledialog_widget.dart';
import 'package:flutter_demo/widget/stateless/cupertino_widget.dart';
import 'package:flutter_demo/widget/stateless/divider_widget.dart';
import 'package:flutter_demo/widget/stateless/icon_widget.dart';
import 'package:flutter_demo/widget/stateless/mypreferredsize_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedbuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedcontainer_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedeffect_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedlist_widget.dart';
import 'package:flutter_demo/widget/stateful/animatedswitche_widget.dart';
import 'package:flutter_demo/widget/stateful/futurebuilder_widget.dart';
import 'package:flutter_demo/widget/stateful/hero_widget.dart';
import 'package:flutter_demo/widget/stateful/material_widget.dart';
import 'package:flutter_demo/widget/stateful/materialapp_widget.dart';
import 'package:flutter_demo/widget/stateful/willpopscope_widget.dart';
import 'package:flutter_demo/widget/stateful/overlay_widget.dart';
import 'package:flutter_demo/widget/stateful/stepper_widget.dart';
import 'package:flutter_demo/widget/stateful/checkboxradio_widget.dart';
import 'package:flutter_demo/widget/stateful/rangeslider_widget.dart';
import 'package:flutter_demo/widget/stateful/refreshindicator_widget.dart';
import 'package:flutter_demo/widget/stateful/snackbar_widget.dart';
import 'package:flutter_demo/widget/stateful/slide_widget.dart';
import 'package:flutter_demo/widget/single/align_padding_widget.dart';
import 'package:flutter_demo/widget/single/box_widget.dart';
import 'package:flutter_demo/widget/single/clip_widget.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  // ?????????????????????
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/listview': (context) => const ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/singlechildscrollview': (context) => const SingleChildScrollViewWidget(),
  '/pageview': (context) => const PageViewWidget(),
  '/pageviewcontrol': (context) => const PageViewControl(),
  '/circleavatar': (context) => const CircleAvatarWidget(),
  '/chip': (context) => const ChipWidget(),
  '/inputchip': (context) => const InputChipWidget(),
  '/filterchip': (context) => const FilterChipWidget(),
  '/choicechip': (context) => const ChoiceChipWidget(),
  '/actionchip': (context) => const ActionChipWidget(),
  '/theme': (context) => const ThemeWidget(),
  '/gesturedetector': (context) => const GestureDetectorWidget(),
  '/useraccountdrawerheader': (context) =>
      const UserAccountDrawerHeaderWidget(),
  '/button': (context) => const ButtonWidget(),
  '/card': (context) => const CardWidget(),
  '/visiblity': (context) => const VisiblityWidget(),
  '/aboutlisttile': (context) => const AboutListTileWidget(),
  '/alertdialog': (context) => const AlertDialogWidget(),
  '/checkboxlisttile': (context) => const CheckboxListTileWidget(),
  '/gridtile': (context) => const GridTileWidget(),
  '/listtile': (context) => const ListTileWidget(),
  '/radiolisttile': (context) => const RadioListTileWidget(),
  '/space': (context) => const SpaceWidget(),
  '/switchlisttile': (context) => const SwitchListTileWidget(),
  "/aboutdialog": (context) => const AboutDialogWidget(),
  "/dialog": (context) => const DialogWidget(),
  "/simpledialog": (context) => const SimpleDialogWidget(),
  "/picker": (context) => const DayPickerWidget(),
  "/safearea": (context) => const SafeAreaWidget(),
  "/materialbanner": (context) => const MaterialBannerWidget(),
  "/navigationtoolbar": (context) => const NavigationToolbarWidget(),
  "/placeholder": (context) => const PlaceholderWidget(),
  "/cupertino": (context) => const CupertinoWidget(),
  "/icon": (context) => const IconWidget(),
  "/divider": (context) => const DividerWidget(),
  "/mypreferredsize": (context) => const MyPreferredSizeWidget(),
  // ?????????????????????
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SilverAppBarWidget(),
  '/animatedbuilder': (context) => const AnimatedBuilderWidget(),
  '/animatedcontainer': (context) => const AnimatedContainerWidget(),
  '/animatedeffect': (context) => const AnimatedEffectWidget(),
  '/animatedlist': (context) => const AnimatedListWidget(),
  '/animatedswitche': (context) => const AnimatedSwitcherWidget(),
  '/futurebuilder': (context) => const FutureBuilderWidget(),
  '/hero': (context) => const HeroWidget(),
  '/material': (context) => const MaterialWidget(),
  '/materialapp': (context) => const MaterialAppWidget(),
  '/willpopscope': (context) => const WillPopScopeWidget(),
  '/overlay': (context) => const OverlayWidget(),
  '/stepper': (context) => const StepperWidget(),
  '/checkboxradio': (context) => const CheckboxRadioWidget(),
  '/slider': (context) => const SliderWidget(),
  '/rangeslider': (context) => const RangeSliderWidget(),
  '/snackbar': (context) => const SnackBarWidget(),
  '/refreshindicator': (context) => const RefreshIndicatorWidget(),
  '/draggable': (context) => const DraggableWidget(),
  '/bottomsheet': (context) => const BottomSheetWidget(),
  '/recorderablelistview': (context) => const ReorderableListViewWidget(),
  '/listwheelscrollview': (context) => const ListWheelScrollViewWidget(),
  '/form': (context) => const FormWidget(),
  '/texfield': (context) => const TextFieldWidget(),
  '/expansion': (context) => const ExpansionWidget(),
  '/valuelistenablebuilder': (context) => const ValueListenableBuilderWidget(),
  '/scaffold': (context) => const ScaffoldWidget(),
  '/ink': (context) => const InkWidget(),
  '/progressindicator': (context) => const ProgressIndicatorWidget(),
  '/selectabletext': (context) => const SelectableTextWidget(),

  //?????????????????????
  '/clip': (context) => const ClipWidget(),
  '/box': (context) => const BoxWidget(),
  '/alignpadding': (context) => const AlignPaddingWidget(),
  '/custompaint': (context) => const CustomPaintWidget(),
  '/colorfiltered': (context) => const ColorFilteredWidget(),

  // ????????????
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
  '/heart': (context) => const Heart()
};
