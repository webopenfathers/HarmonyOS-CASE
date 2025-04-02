// 组件转场动画
// 组件转场效果需要通过 transition() 属性和 animateTo() ⽅法来实现。
// transition() 属性⽅法来设置组件的转场效果：
// 平移、透明度、旋转、缩放等
// animateTo() ⽤于触发上述的组件转场动画效果

// transition() ⽅法的参数类型为 TransitionOptions ，其包含的属性有：
// type：⽤于声明动画效果⽤于组件出现还是消失，可选值有 Insert 、 Delete 和 All
// opacity：⽤于设置透明度变化效果。为出现动画起点的透明度或消失动画终点的透明度。
// translate：⽤于设置平移效果，为出现动画起点的偏移量和消失动画终点的偏移量。
// scale：⽤于设置缩放效果，为出现动画起点的缩放倍数和消失动画终点的缩放倍数。
// rotate：⽤于设置旋转效果。为出现动画起点的旋转⻆度和消失动画终点的旋转⻆度。


@Entry
@Component
struct TransitionPage {
  @State flag: boolean = false;

  build() {
    Column() {
      if (this.flag) {
        Image($r('app.media.img_atguigu'))
          .width(150)
          .height(150)//透明度
            // .transition({ type: TransitionType.All, opacity: 0 })
            //平移
            // .transition({ type: TransitionType.All, translate: { x: 100 } })
            //缩放
            // .transition({ type: TransitionType.All, scale: { x: 0, y: 0 } })
            //旋转
          .transition({
            type: TransitionType.All,
            rotate: {
              x: 0,
              y: 0,
              z: 1,
              angle: 90,
              centerY: 0,
              centerX: 0
            },
            opacity: 0
          })
      }

      Blank()

      Row({ space: 50 }) {
        Button('消失')
          .backgroundColor(Color.Orange)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.flag = false;
            })
          })

        Button('出现')
          .backgroundColor(Color.Green)
          .onClick(() => {
            animateTo({ duration: 500 }, () => {
              this.flag = true;
            })
          })
      }

    }
    .padding({ top: 200, bottom: 200 })
    .width('100%')
    .height('100%')
  }
}