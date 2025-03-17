// 交叉轴多⾏排列⽅式（alignContent）:
// 当Flex容器中包含多⾏（列）时，可使⽤ alignContent 设置多⾏在交叉轴的排列⽅式，该属
// 性的类型为 FlexAlign ，可选的枚举值如下:
//  Start 分布在起始端
//  Center 居中
//  End 分布在终点端
//  SpaceBetween 均匀分布，⾸尾两项两端对⻬，中间元素等间距分布
//  SpaceAround 均匀分布，所有⼦元素两侧都留有相同的空间
//  SpaceEvenly 均匀分布，所有⼦元素之间以及⾸尾两元素到两端的距离都相等

@Entry
@Component
struct AlignContentPage {
  build() {
    Column({ space: 50 }) {
      Flex({
        direction: FlexDirection.Row,
        wrap: FlexWrap.Wrap,
        alignContent: FlexAlign.SpaceAround,
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

@Extend(Text) function itemTextStyle() {
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderWidth(1)
}

@Extend(Flex) function flexStyle() {
  .backgroundColor('#f5f5f5')
  .borderWidth(1)
}