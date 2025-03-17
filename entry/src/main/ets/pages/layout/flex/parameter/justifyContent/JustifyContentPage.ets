// 主轴排列⽅式（justifyContent）
// justifyContent 参数的作⽤同Column/Row容器的 justifyContent() 完全相同，也是
// ⽤于设置⼦元素在主轴⽅向的排列⽅式，其类型同样为 FlexAlign ，可选的枚举值如下
//  Start 分布在起始端
//  Center 居中
//  End 分布在结束端
//  SpaceBetween 均匀分布，⾸尾两项两端对⻬，中间元素等间距分布
//  SpaceAround 均匀分布，所有⼦元素两侧都留有相同的空间
//  SpaceEvenly 均匀分布，所有⼦元素之间以及⾸尾两元素到两端的距离都相等


@Entry
@Component
struct JustifyContentPage {
  build() {
    Column({ space: 50 }) {
      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Start
      }) {
        Text('1')
          .width(50)
          .height(50)
          .itemTextStyle()
        Text('2')
          .width(50)
          .height(50)
          .itemTextStyle()
        Text('3')
          .width(50)
          .height(50)
          .itemTextStyle()
      }.height(50)
      .width(300)
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