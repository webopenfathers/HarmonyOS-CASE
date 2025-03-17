// 交叉轴对⻬（alignSelf）:
// Flex容器的⼦组件可以使⽤ alignSelf() ⽅法单独设置⾃⼰的交叉轴对⻬⽅式，并且其优先级
// ⾼于Flex容器 alignItems 。具体效果如下:


// 说明：
// alignSelf() 的参数类型和 alignItems() 相同，均为 ItemAlign 枚举类型，且各枚举值的含义也完全相同。


@Entry
@Component
struct AlignSelfPage {
  build() {
    Column({ space: 50 }) {
      Flex({
        direction: FlexDirection.Row,
        alignItems: ItemAlign.Start
      }) {
        Text('1')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('2')
          .width(100)
          .height(200)
          .itemTextStyle()
        Text('3')
          .width(100)
          .height(150)
          .itemTextStyle()
          .alignSelf(ItemAlign.End) // alignSelf() ⽅法单独设置⾃⼰的交叉轴对⻬⽅式，并且其优先级⾼于Flex容器 alignItems
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