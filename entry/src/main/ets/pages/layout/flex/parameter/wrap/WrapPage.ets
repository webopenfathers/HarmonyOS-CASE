// 布局换⾏（列）（wrap）:
// 默认情况下，Flex容器的⼦组件，都排在⼀条线（主轴）上。当⼦组件在主轴⽅向的尺⼨之和⼤
// 于Flex容器时，为适应容器尺⼨，所有⼦组件的尺⼨都会⾃动收缩。如果需要保持⼦组件的尺⼨
// 不收缩，也可选择令⼦组件换⾏（列）显示



// wrap 属性的作⽤就是控制如何换⾏，该属性的类型 FlexWrap 为枚举类型，可选的枚举值如下:
//  NoWrap 不换⾏
//  Wrap 换⾏，每⼀⾏⼦组件按照主轴⽅向排列
//  WrapReverse 换⾏，每⼀⾏⼦元素按照主轴反⽅向排列


@Entry
@Component
struct WrapPage {
  build() {
    Column({ space: 50 }) {
      Flex({
        direction: FlexDirection.Row,
        wrap: FlexWrap.WrapReverse
      }) {
        Text('1')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('2')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('3')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('4')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('5')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('6')
          .width(100)
          .height(100)
          .itemTextStyle()
      }.height(350)
      .width(350)
      .flexStyle()

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function itemTextStyle() {
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderWidth(1)
}

@Extend(Flex)
function flexStyle() {
  .backgroundColor('#f5f5f5')
  .borderWidth(1)
}