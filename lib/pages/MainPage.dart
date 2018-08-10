import 'package:flutter/material.dart';

class XzqApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _XzqAppState();
  }

}

class _XzqAppState extends State<XzqApp> {

  GlobalKey<ScaffoldState> scaffoldKey;

  @override
  void initState() {
    super.initState();
    scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new MaterialApp(
      //切到后台任务列表，app显示的名称
      title: '后台任务标题',

      //切到后台任务列表，appBar显示的颜色
      color: new Color(0xFFFF9000),

      home: new Scaffold(

        key: scaffoldKey,

        body: new Center(
          child: new Text('Hello World'),
        ),

        appBar: new AppBar(
          //页面标题
          title: new Text('title'),
          //领先的小标题
          leading: new Text('leading'),
          //默认值是true
          //如果是false，并且leading为null的时候，把空间留给title
          //当leading不为null的时候automaticallyImplyLeading不管是true还是false都不起作用
          automaticallyImplyLeading: false,
          //右上角图标，通常是一个IconButton
          actions: <Widget>[new IconButton(
            //1、图标资源，必须设置的属性
              icon: new Icon(Icons.android),
              //2、图标大小，默认是24.0，这里设置20.0,对应Android单位dp
              iconSize: 20.toDouble(),

              //3、内边距，默认值是8.0，这里设置5.0
              padding: EdgeInsets.all(5.0),
              //只设置左右边距5.0
              //padding: EdgeInsets.only(left: 5.0, right: 5.0),

              //4、对齐方式，默认中间对齐
              alignment: Alignment.center,

              //5、onPressed不为null的时候icon的颜色
              color: Colors.red,

              //6、onPressed为null的时候icon的颜色
              disabledColor: Colors.amber,

              //7、ripple,水波纹颜色，onPressed按下时的显示颜色
              highlightColor: Colors.black12,

              //8、按钮长按的提示文字
              tooltip: '长按提示',

              onPressed: () {
                _showMessage("点击了机器人");
              })
          ],

          //状态栏属性，高度根状态栏一样
          flexibleSpace: new Text("哈哈，我在状态栏里面", textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),),

          //底部属性
          bottom: new PreferredSize(
            preferredSize: Size(0.0, 20.0), child: Text("底部"),),

        ),
      ),

    );
  }

  void _showMessage(String msg) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(msg)));
  }

}
