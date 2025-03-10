// Blank组件使用技巧：
// Blank可作为Column和Row容器的⼦组件，该组件不显示任何内容，并且会始终充满容器主轴⽅向上的剩余空间

@Entry
@Component
struct BlankPage {
  build() {
    Column({ space: 50 }) {
      Row() {
        Image($r('app.media.icon_bluetooth'))
          .width(30)
          .height(30)
        Text('蓝牙')
          .fontSize(20)
          .margin({ left: 5 })
        Blank() // 充满容器主轴⽅向上的剩余空间
        Toggle({ type: ToggleType.Switch })
      }
      .width('90%')
      .height(60)
      .backgroundColor(Color.White)
      .padding({ left: 10, right: 10 })
      .borderRadius(15)
      .shadow({ radius: 10 })
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#f2f2f2')
  }
}