// alignItems：⼦元素沿交叉轴⽅向的对⻬⽅式
// Start：头部对⻬
// Center：居中对⻬
// End：尾部对⻬

@Entry
@Component
struct AlignItemsPage {
  build() {
    Column({ space: 2 }) {
      Row()
        .backgroundColor(Color.Green)
        .width('80%')
        .height(70)
      Row()
        .backgroundColor(Color.Green)
        .width('80%')
        .height(70)
      Row()
        .backgroundColor(Color.Green)
        .width('80%')
        .height(70)
    }.width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
  }
}