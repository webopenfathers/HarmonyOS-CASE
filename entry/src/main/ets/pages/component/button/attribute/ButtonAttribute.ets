@Entry
@Component
struct ButtonAttributePage { // 按钮属性
  build() {
    Column({ space: 50 }) {
      Button('绿色按钮')
        .fontSize(25)
        .width(150)
        .height(60)
        .backgroundColor(Color.Green) // 背景颜色 可以使用Color枚举  也可 使用字符串

      Button('圆角按钮', { type: ButtonType.Normal })
        .fontSize(25)
        .width(150)
        .height(60)
        .borderRadius(20) // 边框圆角

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}