import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能，如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多，足够满足适应需求，核心样式由style属性控制。', '/text'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件，可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造，有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('SingleChildScrollView', '使一个组件具有滑动的效果，可指定滑动的方向、是否反向、滑动控制器等属性。',
      '/singlechildscrollview'),
  ContainerInfo(
      'PageView', '容纳多个组件的页面，可对它们进行滑动切换，指定滑动方向、是否反向、滑动控制器等属性。', '/pageview'),
  ContainerInfo(
      'CircleAvatar', '可将一张图片变成圆形，中间可以放置一个组件。可指定半径、前景色、背景色等。', '/circleavatar'),
  ContainerInfo('Chip', '一个横向的圆边小条，可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。', '/chip'),
  ContainerInfo('InputChip', '和Chip组件类似，集成了点击、删除、选择事件为一体，注意：点击事件和选择事件不能同时存在。',
      '/inputchip'),
  ContainerInfo('FilterChip', '和Chip组件类似，具有选中与否的属性和选中事件，当选中时左侧组件上层会被 √ 遮罩',
      '/filterchip'),
  ContainerInfo(
      'ChoiceChip', '和Chip组件类似，有一些选择的属性，可以指定选中时的颜色，阴影色和选择事件。', '/choicechip'),
  ContainerInfo(
      'ActionChip', '和Chip组件类似，有一些点击的熟悉，可以指定点击时的阴影深浅、点击事件。', '/actionchip'),
  ContainerInfo(
      'Theme', '可通过Theme.of获取ThemeData对象，也可以指定主题应用于Theme的后代组件', '/theme'),
  ContainerInfo('GestureDetector', '组件手势事件的检测器，可接受长按、双击、按下、松开、移动等事件，并可获取触点信息',
      '/gesturedetector'),
  ContainerInfo(
      'UserAccountDrawerHeader',
      'Flutter提供的一个通用展示结构，相应位置可插入组件，很方便地对特定条目，常用于Drawer中',
      '/useraccountdrawerheader'),
  ContainerInfo('ButtonWidget', '各类Button组件', '/button'),
  ContainerInfo('CardWidget', '卡片组件，基于Material组件实现，用于将单个组件卡片化。', '/card'),
  ContainerInfo(
      'VisiblityWidget', '显隐组件，控制一个组件显示或隐藏，可设置隐藏后的占位组件。', '/visiblity'),
  ContainerInfo('AboutListTileWidget',
      '一个点击条目，点击时可以弹出应用相关信息，可指定应用图标、应用名、应用版本号等信息和内部的子组件列表。', '/aboutlisttile'),
  ContainerInfo('AlertDialogWidget',
      '一个通用的对话框结构，可指定头、中、尾处的组件。拥有标题、内容的文字样式和边距、影深、形状等属性。', '/alertdialog'),
  ContainerInfo(
      'CheckboxListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个CheckBox。相应位置可插入组件，可以很方便的应对特定的条目。',
      '/checkboxlisttile'),
  ContainerInfo(
      'GridTileWidget', 'Flutter提供的一个通用列表条目结构，可指定头、尾、子组件，常用于网格列表', '/gridtile'),
  ContainerInfo('ListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中右结构。相应位置可插入组件，可以很方便的应对特定的条目。', '/listtile'),
  ContainerInfo(
      'RadioListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Radio，相应位置可插入组件，可以很方便地应对特定的条目',
      '/radiolisttile'),
  ContainerInfo(
      'SpaceWidget',
      '只能用于Row、Column和Flex布局中，可利用剩余空间进行占位，使用flex属性可以给多个Spacer按比例分配空间。',
      '/space'),
  ContainerInfo(
      'SwitchListTileWidget',
      'Flutter提供的一个通用列表条目结构，为左中结构，尾部是一个Switch，相应位置可插入组件，可以很方便地应对特定的条目',
      '/switchlisttile'),
  ContainerInfo(
      "AboutDialogWidget",
      " 应用的简介对话框，可指定应用图标、应用名、应用版本号等信息 和内部的子组件列表，点击左侧按钮可以跳转到证书页",
      "/aboutdialog"),
  ContainerInfo(
      "DialogWidget", " 最简易的对话框面板，包含一个内容组件，可指定影深、背景色、形状等属性", "/dialog"),
  ContainerInfo("SimpleDialogWidget",
      " 简单的对话框，可指定头、中部的组件。拥有标题、内容的样式文字和边距、影深、形状等属性", "/simpledialog"),
  ContainerInfo("DayPicker", "日期选择组件，可指定当前日期、选中日期、展示月份等，接收日期选中事件", "/picker"),
  ContainerInfo(
      "SafeArea", "通过添加内边距，来适配一些手机本身特殊性（圆角、刘海屏等）而所造成等布局问题", "/safearea"),
  ContainerInfo("MaterialBanner", " 简单的对话框，可指定头、中部的组件。拥有标题、内容的样式文字和边距、影深、形状等属性",
      "/materialbanner"),
  ContainerInfo(
      "NavigationToolbar",
      "左中右模式等通用结构组件，可指定中间组件距左侧边距及是否居中。源码在AppBar等导航条结构中有使用它",
      "/navigationtoolbar"),
  ContainerInfo("Placeholder", "一个矩形和叉叉等占位组件，可指定颜色、线宽、宽高等属性", "/placeholder"),
  ContainerInfo("Icon", "用于图标显示的组件，可指定图标资源、大小、颜色简单实用", "/icon"),
  ContainerInfo(
      "Divider", "水平分割线，可指定颜色、高度、粗细、左右边距等信息，常用列表的item分割线", "/divider"),
  ContainerInfo("Other", "杂七杂八的各种实用组件", "/mypreferredsize"),
  ContainerInfo("Cupertino", "Cupertino风格", "/cupertino"),
];

final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片，可以从文件、内存、网络、资源里加载，可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      'SliverAppBar', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/sliverappbar'),
  ContainerInfo(
      'AnimatedBuilder',
      '通过 builder 使动⾯对应的节点变为局部更新，且可避免⼦组件刷新，减少构建的时问，提⾼动画性能。',
      '/animatedbuilder'),
  ContainerInfo(
      'AnimatedContainer',
      '集alignment、padding、color、decoration、width、height、constraints、margin、transform于⼀身，这些属性皆可动画，可指定动画的时⻓和曲线，有动画结束事件。',
      '/animatedcontainer'),
  ContainerInfo('AnimatedEffect', '各种动画效果', '/animatedeffect'),
  ContainerInfo('AnimatedList', '强化版的ListView,可以对item进⾏动画处理，⽐如在添加、删除item时的动画。',
      '/animatedlist'),
  ContainerInfo('AnimatedSwitcher', '子组件变化动画', '/animatedswitche'),
  ContainerInfo('FutureBuilder', '异步构造器', '/futurebuilder'),
  ContainerInfo('Hero', '共享动画', '/hero'),
  ContainerInfo('Material', '材质组件', '/material'),
  ContainerInfo('MaterialApp', 'Material应用', '/materialapp'),
  ContainerInfo('WillPopScope', '返回拦截', '/willpopscope'),
  ContainerInfo(
      'Overlay',
      'Overlay是⼀个Stack的widget，可以将overlay entry插⼊到overlay中，使独⽴的child窗⼝悬浮于其他widget之上。',
      '/overlay'),
  ContainerInfo(
      'Stepper', '可指定⼀步步的操作，可⾃定义步骤的内容，确认和返回的按钮以及步骤排列的⽅向。', '/stepper'),
  ContainerInfo('CheckboxRadio', '复选框组件，常⽤于配置的切换，可指定颜⾊，接收状态变化回调，也可指定三态。',
      '/checkboxradio'),
  ContainerInfo('Slider', '滑块组件，可以在指定的最⼤值和最⼩值之间拖动选择。可指定颜⾊、分段数及显示的标签，接收进度条变化回调。',
      '/slider'),
  ContainerInfo('RangeSlider',
      '范围滑块组件，⽀持在两点之间滑动，获取之间的范围。可指定颜⾊、分段数及显示的标签，接收进度条变化回调', '/rangeslider'),
  ContainerInfo('SnackBar', '信息提示条,从底部弹出的消息条，可指定形状、影深、背景⾊等。', '/snackbar'),
  ContainerInfo(
      'RefreshIndicator',
      '刷新指示器,内部嵌套可滑动区域，下拉时会显示刷新图标，松⼿后可以执⾏指定的异步⽅法。可指定颜⾊、到顶端的距离等属性。',
      '/refreshindicator'),
  ContainerInfo('DraggableWidget',
      '可以让组件在界⾯上任意拖拽，可存放⼀个泛型T的数据。通常和DragTarget组合使⽤，来完成拖拽效果。', '/draggable'),
  ContainerInfo('BottomSheetWidget', '可以从底部弹出的⼀个简单的结构组件，可指定形状、影深、背景⾊、内部组件构造器等。',
      '/bottomsheet'),
  ContainerInfo('RecorderableListViewWidget',
      '可进⾏⻓按排序的ListView，可指定滑动⽅向、是否反向、滑动控制器等属性。', '/recorderablelistview'),
  ContainerInfo('ListWheelScrollViewWidget',
      '精妙的柱⾯滑动列表，可指定item⾼度、透视、挤压等属性，接收滑动时的选中事件。', '/listwheelscrollview'),
  ContainerInfo(
      'FormWidget',
      '表单组件，可以接收其下的FormField组件的变化回调，通过onWillPop拦截⻚⾯返回，通过FormState对表单字段进⾏保存或校验。',
      '/form'),
  ContainerInfo('TextFieldWidget',
      '拥有丰富的属性，可指定控制器、⽂字样式、装饰线、⾏数限制、游标样式等，可以接收输⼊变化、完成输⼊等事件。', '/texfield'),
  ContainerInfo('EexpansionWidget',
      '⼀个通⽤的展开栏，可在指定的部位安放组件，点击时会折叠/显隐下⽅组件，接收折叠事件。', '/expansion'),
  ContainerInfo(
      'ValueListenableBuilderWidget',
      '可以监听⼀个值，当期变化时通过builder回调能重建界⾯，避免使⽤setState刷新。',
      '/valuelistenablebuilder'),
  ContainerInfo(
      'ScaffoldWidget', '⼀个通⽤的APP结构，包括上、下、左、右、中、浮动按钮，对应位置可放置组件。', '/scaffold'),
  ContainerInfo('InkWidget', '⽔波纹组件，⽤于绘制图像或其他装饰的Material组件。', '/ink'),
  ContainerInfo(
      'ProgressIndicatorWidget', '圆形的进度显示和直线型的进度显示。', '/progressindicator'),
  ContainerInfo('SelectableTextWidget',
      '可选择的⽂字，可以选择、复制。可指定浮标的颜⾊、⼤⼩、⽂字样式、对⻬⽅式等。', '/selectabletext'),
];
