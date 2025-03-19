// @State
// @State ⽤于装饰当前组件的状态变量， @State 装饰的变量发⽣变化时会驱动当前组件的视图刷新。
// 注意： @State 装饰的变量必须进⾏本地初始化。

@Entry
@Component
struct StatePage {
  @State count: number = 1; // 变量必须进⾏本地初始化。

  build() {
    Column({ space: 50 }) {

      Row({ space: 10 }) {
        Text('@State').textStyle()
        //计数器组件
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
      .width('100%')
      .backgroundColor("#CCE3CB")
      .padding(10)
      .borderRadius(20)
      .justifyContent(FlexAlign.Center)

    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .padding(10)

  }
}


@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}
