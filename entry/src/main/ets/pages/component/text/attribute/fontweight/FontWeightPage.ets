@Entry
@Component
struct FontWeightPage {
  build() {
    Column({ space: 50 }) {

      //默认粗细
      Text('你好,鸿蒙')
        .fontSize(50)

      // number类型
      // 取值范围为[100,900] ,取值间隔为100,默认为400,取值越大字体越粗
      Text('你好,鸿蒙')
        .fontSize(50)
        .fontWeight(600)

      // FontWeight类型 枚举类型
      Text('你好,鸿蒙')
        .fontSize(50)
        .fontWeight(FontWeight.Lighter)

      // string类型
      // string类型的参数仅支持number类型和FontWeight类型参数的字符串形式
      // 例如 '100' 和 'bold'
      Text('你好,鸿蒙')
        .fontSize(50)
        .fontWeight('800')

      // string类型
      // string类型的参数仅支持number类型和FontWeight类型参数的字符串形式
      // 例如 '100' 和 'bold'
      Text('你好,鸿蒙')
        .fontSize(50)
        .fontWeight('bold')

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}