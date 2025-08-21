local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("dart", {
  -- Stateless Widget
  s("statelessW", {
    t({ "class " }),
    i(1, "name"),
    t({ " extends StatelessWidget {", "  const " }),
    i(1, "name"),
    t({
      "({super.key});",
      "",
      "  @override",
      "  Widget build(BuildContext context) {",
      "    return Container();",
      "  }",
      "}",
    }),
  }),

  -- Stateful Widget
  s("statefulW", {
    t({ "class " }),
    i(1, "name"),
    t({ " extends StatefulWidget {", "  const " }),
    i(1, "name"),
    t({ "({super.key});", "", "  @override", "  State<" }),
    i(1, "name"),
    t({ "> createState() => _" }),
    i(1, "name"),
    t({ "State();", "}", "", "class _" }),
    i(1, "name"),
    t({ "State extends State<" }),
    i(1, "name"),
    t({ "> {", "  @override", "  Widget build(BuildContext context) {", "    return Container();", "  }", "}" }),
  }),

  -- Build Method
  s("build", {
    t({ "@override", "Widget build(BuildContext context) {", "  return " }),
    i(0),
    t({ ";", "}" }),
  }),

  -- Custom Painter
  s("customPainter", {
    t({ "class " }),
    i(0, "name"),
    t({
      "Painter extends CustomPainter {",
      "",
      "  @override",
      "  void paint(Canvas canvas, Size size) {",
      "  }",
      "",
      "  @override",
      "  bool shouldRepaint(",
    }),
    i(0, "name"),
    t({ "Painter oldDelegate) => false;", "", "  @override", "  bool shouldRebuildSemantics(" }),
    i(0, "name"),
    t({ "Painter oldDelegate) => false;", "}" }),
  }),

  -- Custom Clipper
  s("customClipper", {
    t({ "class " }),
    i(0, "name"),
    t({
      "Clipper extends CustomClipper<Path> {",
      "",
      "  @override",
      "  Path getClip(Size size) {",
      "  }",
      "",
      "  @override",
      "  bool shouldReclip(CustomClipper<Path> oldClipper) => false;",
      "}",
    }),
  }),

  -- InitState
  s("initS", {
    t({ "@override", "void initState() {", "  super.initState();", "  " }),
    i(0),
    t({ "", "}" }),
  }),

  -- Dispose
  s("dis", {
    t({ "@override", "void dispose() {", "  " }),
    i(0),
    t({ "", "  super.dispose();", "}" }),
  }),

  -- Reassemble
  s("reassemble", {
    t({ "@override", "void reassemble() {", "  super.reassemble();", "  " }),
    i(0),
    t({ "", "}" }),
  }),

  -- didChangeDependencies
  s("didChangeD", {
    t({ "@override", "void didChangeDependencies() {", "  super.didChangeDependencies();", "  " }),
    i(0),
    t({ "", "}" }),
  }),

  -- didUpdateWidget
  s("didUpdateW", {
    t({ "@override", "void didUpdateWidget(" }),
    i(1, "Type"),
    t({ " " }),
    i(2, "oldWidget"),
    t({ ") {", "  super.didUpdateWidget(" }),
    i(2, "oldWidget"),
    t({ ");", "  " }),
    i(0),
    t({ "", "}" }),
  }),

  -- ListView.Builder
  s("listViewB", {
    t({ "ListView.builder(", "  itemCount: " }),
    i(1, "1"),
    t({ ",", "  itemBuilder: (BuildContext context, int index) {", "    return " }),
    i(2),
    t({ ";", "  },", ")," }),
  }),

  -- ListView.Separated
  s("listViewS", {
    t({ "ListView.separated(", "  itemCount: " }),
    i(1, "1"),
    t({ ",", "  separatorBuilder: (BuildContext context, int index) {", "    return " }),
    i(2),
    t({ ";", "  },", "  itemBuilder: (BuildContext context, int index) {", "    return " }),
    i(3),
    t({ ";", "  },", ")," }),
  }),

  -- GridView.Builder
  s("gridViewB", {
    t({
      "GridView.builder(",
      "  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(",
      "    crossAxisCount: ",
    }),
    i(1, "2"),
    t({ ",", "  ),", "  itemCount: " }),
    i(2, "2"),
    t({ ",", "  itemBuilder: (BuildContext context, int index) {", "    return " }),
    i(3),
    t({ ";", "  },", ")," }),
  }),

  -- GridView.Count
  s("gridViewC", {
    t({ "GridView.count(", "  crossAxisSpacing: " }),
    i(1, "1"),
    t({ ",", "  mainAxisSpacing: " }),
    i(2, "2"),
    t({ ",", "  crossAxisCount: " }),
    i(3, "2"),
    t({ ",", "  children: <Widget> [", "    " }),
    i(4),
    t({ "", "  ],", ")," }),
  }),

  -- GridView.Extent
  s("gridViewE", {
    t({ "GridView.extent(", "  maxCrossAxisExtent: " }),
    i(1, "2"),
    t({ ",", "  children: <Widget> [", "    " }),
    i(2),
    t({ "", "  ],", ")," }),
  }),

  -- Custom Scroll View
  s("customScrollV", {
    t({ "CustomScrollView(", "  slivers: <Widget>[", "    " }),
    i(0),
    t({ "", "  ],", ")," }),
  }),

  -- Stream Builder
  s("streamBldr", {
    t({ "StreamBuilder(", "  stream: " }),
    i(1, "stream"),
    t({ ",", "  initialData: " }),
    i(2, "initialData"),
    t({ ",", "  builder: (BuildContext context, AsyncSnapshot snapshot) {", "    return Container(", "      child: " }),
    i(3, "child"),
    t({ ",", "    );", "  },", ")," }),
  }),

  -- Animated Builder
  s("animatedBldr", {
    t({ "AnimatedBuilder(", "  animation: " }),
    i(1, "animation"),
    t({ ",", "  child: " }),
    i(2, "child"),
    t({ ",", "  builder: (BuildContext context, Widget? child) {", "    return " }),
    i(3),
    t({ ";", "  },", ")," }),
  }),

  -- Stateful Builder
  s("statefulBldr", {
    t({ "StatefulBuilder(", "  builder: (BuildContext context, setState) {", "    return " }),
    i(0),
    t({ ";", "  },", ")," }),
  }),

  -- Orientation Builder
  s("orientationBldr", {
    t({
      "OrientationBuilder(",
      "  builder: (BuildContext context, Orientation orientation) {",
      "    return Container(",
      "      child: ",
    }),
    i(3, "child"),
    t({ ",", "    );", "  },", ")," }),
  }),

  -- Layout Builder
  s("layoutBldr", {
    t({ "LayoutBuilder(", "  builder: (BuildContext context, BoxConstraints constraints) {", "    return " }),
    i(0),
    t({ ";", "  },", ")," }),
  }),

  -- Single Child ScrollView
  s("singleChildSV", {
    t({ "SingleChildScrollView(", "  controller: " }),
    i(1, "controller"),
    t({ ",", "  child: Column(", "    " }),
    i(0),
    t({ "", "  ),", ")," }),
  }),

  -- Future Builder
  s("futureBldr", {
    t({ "FutureBuilder(", "  future: " }),
    i(1, "Future"),
    t({ ",", "  initialData: " }),
    i(2, "InitialData"),
    t({ ",", "  builder: (BuildContext context, AsyncSnapshot snapshot) {", "    return " }),
    i(3),
    t({ ";", "  },", ")," }),
  }),

  -- No Such Method
  s("nosm", {
    t({ "@override", "dynamic noSuchMethod(Invocation invocation) {", "  " }),
    i(1),
    t({ "", "}" }),
  }),

  -- Inherited Widget
  s("inheritedW", {
    t({ "class " }),
    i(1, "Name"),
    t({ " extends InheritedWidget {", "  const " }),
    i(1, "Name"),
    t({ "({super.key, required this.child}) : super(child: child);", "", "  final Widget child;", "", "  static " }),
    i(1, "Name"),
    t({ "? of(BuildContext context) {", "    return context.dependOnInheritedWidgetOfExactType<" }),
    i(1, "Name"),
    t({ ">();", "  }", "", "  @override", "  bool updateShouldNotify(" }),
    i(1, "Name"),
    t({ " oldWidget) {", "    return " }),
    i(2, "true"),
    t({ ";", "  }", "}" }),
  }),

  -- Mounted
  s("mounted", {
    t({ "@override", "bool get mounted {", "  " }),
    i(0),
    t({ "", "}" }),
  }),

  -- Sink
  s("snk", {
    t({ "Sink<" }),
    i(1, "type"),
    t({ "> get " }),
    i(2, "name"),
    t({ " => _" }),
    i(2, "name"),
    t({ "Controller.sink;", "final _" }),
    i(2, "name"),
    t({ "Controller = StreamController<" }),
    i(1, "type"),
    t({ ">();" }),
  }),

  -- Stream
  s("strm", {
    t({ "Stream<" }),
    i(1, "type"),
    t({ "> get " }),
    i(2, "name"),
    t({ " => _" }),
    i(2, "name"),
    t({ "Controller.stream;", "final _" }),
    i(2, "name"),
    t({ "Controller = StreamController<" }),
    i(1, "type"),
    t({ ">();" }),
  }),

  -- Subject
  s("subj", {
    t({ "Stream<" }),
    i(1, "type"),
    t({ "> get " }),
    i(2, "name"),
    t({ " => _" }),
    i(2, "name"),
    t({ "Subject.stream;", "final _" }),
    i(2, "name"),
    t({ "Subject = BehaviorSubject<" }),
    i(1, "type"),
    t({ ">();" }),
  }),

  -- toString
  s("toStr", {
    t({ "@override", "String toString() => " }),
    i(1, "toString"),
    t({ ";" }),
  }),

  -- debugPrint
  s("debugP", {
    t({ "debugPrint(" }),
    i(1, "statement"),
    t({ ");" }),
  }),

  -- Material Package
  s("importM", {
    t({ "import 'package:flutter/material.dart';" }),
  }),

  -- Cupertino Package
  s("importC", {
    t({ "import 'package:flutter/cupertino.dart';" }),
  }),

  -- flutter_test Package
  s("importFT", {
    t({ "import 'package:flutter_test/flutter_test.dart';" }),
  }),

  -- app_localizations Package
  s("importAL", {
    t({ "import 'package:flutter_gen/gen_l10n/app_localizations.dart';" }),
  }),

  -- Material App
  s("mateapp", {
    t({
      "import 'package:flutter/material.dart';",
      "",
      "void main() => runApp(const MyApp());",
      "",
      "class MyApp extends StatelessWidget {",
      "  const MyApp({super.key});",
      "",
      "  @override",
      "  Widget build(BuildContext context) {",
      "    return MaterialApp(",
      "      title: 'Material App',",
      "      home: Scaffold(",
      "        appBar: AppBar(",
      "          title: const Text('Material App Bar'),",
      "        ),",
      "        body: const Center(",
      "          child: Text('Hello World'),",
      "        ),",
      "      ),",
      "    );",
      "  }",
      "}",
    }),
  }),

  -- Cupertino App
  s("cupeapp", {
    t({
      "import 'package:flutter/cupertino.dart';",
      "",
      "void main() => runApp(const MyApp());",
      "",
      "class MyApp extends StatelessWidget {",
      "  const MyApp({super.key});",
      "",
      "  @override",
      "  Widget build(BuildContext context) {",
      "    return const CupertinoApp(",
      "      title: 'Cupertino App',",
      "      home: CupertinoPageScaffold(",
      "        navigationBar: CupertinoNavigationBar(",
      "          middle: Text('Cupertino App Bar'),",
      "        ),",
      "        child: Center(",
      "          child: Text('Hello World'),",
      "        ),",
      "      ),",
      "    );",
      "  }",
      "}",
    }),
  }),

  -- Tween Animation Builder
  s("tweenAnimationBuilder", {
    t({ "TweenAnimationBuilder(", "  duration: " }),
    i(1, "const Duration()"),
    t({ ",", "  tween: " }),
    i(2, "Tween()"),
    t({ ",", "  builder: (BuildContext context, " }),
    i(3, "dynamic"),
    t({ " value, Widget? child) {", "    return " }),
    i(4, "Container()"),
    t({ ";", "  },", ")," }),
  }),

  -- Value Listenable Builder
  s("valueListenableBuilder", {
    t({ "ValueListenableBuilder(", "  valueListenable: " }),
    i(1, "null"),
    t({ ",", "  builder: (BuildContext context, " }),
    i(2, "dynamic"),
    t({ " value, Widget? child) {", "    return " }),
    i(3, "Container()"),
    t({ ";", "  },", ")," }),
  }),

  -- Test
  s("f-test", {
    t({ "test(", '  "' }),
    i(1, "test description"),
    t({ '",', "  () {},", ");" }),
  }),

  -- Group
  s("f-group", {
    t({ "group(", '  "' }),
    i(1, "group description"),
    t({ '",', "  () {},", ");" }),
  }),

  -- Test Widgets
  s("f-testWidgets", {
    t({ "testWidgets(", '  "' }),
    i(1, "test description"),
    t({ '",', "  (WidgetTester tester) async {},", ");" }),
  }),
})
