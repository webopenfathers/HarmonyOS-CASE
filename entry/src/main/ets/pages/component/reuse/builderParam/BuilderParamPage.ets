// @BuilderParam
// @BuilderParam ⽤于装饰⾃定义组件（struct）中的属性，其装饰的属性可作为⼀个UI结构的
// 占位符，待创建该组件时，可通过参数为其传⼊具体的内容。（其作⽤类似于Vue框架中的slot）。
// 参数：类型是一个函数 且为 UI结构-------> @Builder方法


@Entry
@Component
struct BuilderParamPage {
  build() {
    Column({ space: 20 }) {

      // 一：创建卡片组件（传参）
      Card({ content: imageBuilder })

      // 二：创建卡片组件（子组件形式）
      // 注意：此方式只适用于组件中只定义了一个@BuilderParam属性，此时可直接通过 “子组件” 的方式传入具体的UI结构
      Card() {
        Column({ space: 10 }) {
          Text('鸿蒙操作系统')
            .fontSize(25)
            .fontWeight(FontWeight.Bolder)

          Text('鸿蒙操作系统是一款由华为公司开发的多设备统一操作系统，致力于实现无缝连接和协同工作。其采用分布式架构，支持多终端智能互联，提供高效、安全、流畅的用户体验。')
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


@Builder
function imageBuilder() {
  Column({ space: 10 }) {
    Image($r('app.media.img_harmony'))
      .width(300)
      .height(150)
    Text('鸿蒙操作系统')
  }
  .width('100%')
  .justifyContent(FlexAlign.Center)
}


@Builder
function builderFunction(): void {
}


@Component
struct Card { // 卡片组件
  @BuilderParam content: () => void = builderFunction

  build() {
    Column() {
      this.content() // UI结构占位符
    }
    .width('90%')
    .padding(10)
    .borderRadius(10)
    .shadow({ radius: 20 })
  }
}