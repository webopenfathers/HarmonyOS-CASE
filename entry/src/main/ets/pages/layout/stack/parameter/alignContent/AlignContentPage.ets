// alignContent参数：
// { alignContent?: Alignment }，alignContent ⽤于设置⼦组件的对⻬⽅式，
// 该属性可通过枚举类型 Alignment 进⾏设置
// TopStart：左上对齐
// Top：顶部对齐
// TopEnd：右上对齐
// Start：左对齐
// Center：居中对齐
// End：右对齐
// BottomStart：左下对齐
// Bottom：底部对齐
// BottomEnd：右下对齐

@Entry
@Component
struct AlignmentContentPage {
  build() {
    Column() {
      Stack({ alignContent: Alignment.BottomEnd }) { // 右下对齐
        Image($r('app.media.img_avatar'))
          .width('100%')
          .height('100%')
        Image($r('app.media.icon_v'))
          .width(60)
          .height(60)
      }
      .width(200)
      .height(200)

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}