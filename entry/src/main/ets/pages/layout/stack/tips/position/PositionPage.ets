// position()属性(⼦组件精确定位)：
// Stack容器的⼦组件可使⽤ position() ⽅法进⾏更精确的定位，
// 该⽅法可设置⼦组件左上⻆相对于Stack容器左上⻆的偏移量


@Entry
@Component
struct PositionPage {
  build() {
    Column() {
      Stack() {
        Image($r('app.media.img_avatar'))
          .width('100%')
          .height('100%')
        Image($r('app.media.icon_v'))
          .width(60)
          .height(60)
          .position({ x: 140, y: 140 })
      }
      .width(200)
      .height(200)

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}