@Entry
@Component
struct FontColorPage { // 文字颜色
  build() {
    Column({ space: 50 }) {
      Text('Color.Green')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Green) // Color类型  枚举类型

      Text('rgb(0, 128, 0)')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .fontColor('rgba(59, 171, 59, 0.33)') // string类型

      Text('#008000')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .fontColor('#008000') // string类型

      Text('0x008000')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .fontColor(0x008000) // number类型  用于16进制的数字设置

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}