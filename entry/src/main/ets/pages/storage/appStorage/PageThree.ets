@Entry
@Component
struct PageThree {
  // 第⼆步：在整个应⽤内的组件中访问AppStorage
  // @StorageProp可以和AppStorage实现单向同步
  @StorageProp('count') count: number = 0;

  build() {
    Column() {
      Column({ space: 20 }) {
        Text('PageThree(Prop)')
          .pageThreeTextStyle()
        Row({ space: 20 }) {
          Text('count')
            .pageThreeTextStyle()
          Counter() {
            Text(this.count.toString())
              .pageThreeTextStyle()
          }
          .onInc(() => this.count++)
          .onDec(() => this.count--)
        }
      }.width('90%')
      .padding(20)
      .backgroundColor('#d5e8d4')
      .borderRadius(10)
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


@Extend(Text)
function pageThreeTextStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}