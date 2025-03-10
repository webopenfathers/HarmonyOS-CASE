// justifyContent：子元素沿主轴方向的排列方式
// Start：头部对⻬
// Center：居中对⻬
// End：尾部对⻬
// SpaceBetween：均匀分布，⾸尾两项两端对⻬，中间元素等间距分布
// SpaceAround：均匀分布， 所有⼦元素两侧都留有相同的空间
// SpaceEvenly：均匀分布，所有⼦元素之间以及⾸尾两元素到两端的距离都相等


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
    .justifyContent(FlexAlign.SpaceEvenly)
  }
}