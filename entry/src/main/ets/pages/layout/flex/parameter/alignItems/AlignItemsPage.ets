// 交叉轴对⻬⽅式（alignItems）
// alignItems 参数的作⽤同Column/Row容器的 alignItems() 相同，也是⽤于设置⼦元素
// 在交叉轴的对⻬⽅式。但该参数的类型与Column/Row容器的 alignItems() ⽅法不同，为 I
// temAlign ，可选的枚举值有：
//  Start 启始端对⻬
// Center 居中对⻬
//  End 结束端对⻬
//  Stretch 拉伸到容器尺⼨
//  BaseLine 沿⽂本基线对⻬（限于Text⽂本组件）

@Entry
@Component
struct Test {
  build() {
    Column({ space: 50 }) {
      Flex({
        direction: FlexDirection.Row,
        alignItems: ItemAlign.Start
      }) {
        Text('Beyond')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('章')
          .width(100)
          .height(200)
          .itemTextStyle()
        Text('章')
          .width(100)
          .height(150)
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