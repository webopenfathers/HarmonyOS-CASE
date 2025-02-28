@Entry
@Component
struct FruitPage {
  @State options: string[] = ['苹果', '桃子', '香蕉', '橘子']
  @State answer: string = '_____?'

  build() {
    Column({ space: 20 }) {
      Row() {
        Text('你最喜欢的水果是')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Text(this.answer)
          .fontSize(25)
          .fontColor(Color.Green)
      }


      // ForEach 鸿蒙循环渲染列表
      // 参数一：arr 需要进行渲染的数据源，必须为数组类型
      // 参数二：itemGenerator 组件生成函数 用于为arr数组中的每个元素创建对应的组件
      // 该函数可接收两个参数，分别是 item arr数组中的数据项 index(可选)arr数组中的数据项索引
      // 参数三：keyGenerator(可选) key生成函数 用于为arr数组中的每个数据项生成唯一的key
      // 在需要重新渲染组件列表时，他会尽量复用原来的组件对象，而不是为每个元素都重新创建组件对象
      // ForEach(
      // arr: any[],
      // itemGenerator: (item: any, index?: number) => void,
      // keyGenerator?: (item: any, index?: number) => string
      // )
      ForEach(this.options, (item: string) => {
        Button(item)
          .width(100)
          .backgroundColor(Color.Green)
          .onClick(() => {
            this.answer = item
          })
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)

  }
}