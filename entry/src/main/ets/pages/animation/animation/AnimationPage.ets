// 布局更新动画---属性动画:
// animation() 是⼀个组件的属性⽅法，该⽅法同样可⽤于实现动画效果。
// 使⽤该⽅法实现动画效果时需要注意两点:
// 第⼀点是该⽅法的参数，其类型为 AnimateParam ，⽤于配置动画时⻓、动画曲线等参数。
// 第⼆点是该属性⽅法的位置，⽤于产⽣动画效果的属性⽅法必须位于 animation() 之前

@Entry
@Component
struct AnimationPage {
  @State length: number = 150;

  build() {
    Column() {
      Image($r('app.media.img_atguigu'))
        .width(this.length)
        .height(this.length)
        .animation({ duration: 500 })

      Blank()

      Row({ space: 50 }) {
        Button('缩小')
          .backgroundColor(Color.Orange)
          .onClick(() => {
            this.length = 150
          })

        Button('放大')
          .backgroundColor(Color.Green)
          .onClick(() => {
            this.length = 300
          })
      }

    }
    .padding({ top: 200, bottom: 200 })
    .width('100%')
    .height('100%')
  }
}