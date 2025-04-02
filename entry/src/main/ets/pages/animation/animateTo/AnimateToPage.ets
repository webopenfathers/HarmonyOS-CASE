// 在鸿蒙应⽤中，开发者可以为组件配置两类动画效果，
// ⼀是组件的布局相关属性（如尺⼨、位置等）发⽣变化时的布局更新动画，
// ⼆是组件出现或消失时的组件转场动画

// 布局更新动画：布局更新动画可通过两种⽅式实现，分别是显式动画和属性动画。

// ---------------------------------------------------------------------
// 布局更新动画---显式动画：
// animateTo() 是⼀个全局的动画函数，该函数可⽤于触发动画效果
// animateTo(value: AnimateParam, event: () => void): void
// 该函数共有两个参数，分别是
// 动画参数：该参数⽤于设置动画时⻓、属性值变化曲线等等，其类型为 AnimateParam
// 匿名函数：该函数⽤于修改组件的属性，由该函数导致的组件布局变化，都会产⽣动画效果。


@Entry
@Component
struct AnimateToPage {
  @State length: number = 150;

  build() {
    Column() {
      Image($r('app.media.img_atguigu'))
        .width(this.length)
        .height(this.length)

      Blank()

      Row({ space: 50 }) {
        Button('缩小')
          .backgroundColor(Color.Orange)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.length = 150
            })
          })

        Button('放大')
          .backgroundColor(Color.Green)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.length = 300
            })
          })
      }

    }
    .padding({ top: 200, bottom: 200 })
    .width('100%')
    .height('100%')
  }
}