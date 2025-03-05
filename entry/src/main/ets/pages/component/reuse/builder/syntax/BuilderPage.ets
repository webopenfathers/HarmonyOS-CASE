// 组件内@Builder方法和全局Builder方法的区别：
// 组件内@Builder方法可通过this访问当前组件的属性和方法，而全局的@Builder方法则不能
// 组件内@Builder方法只能用于当前组件，全局的@Builder方法导出（export）后，可用于整个应用


@Entry
@Component
struct BuilderPage {
  build() {
    Column() {
      Row({ space: 50 }) {
        // Button() {
        //   Row({ space: 10 }) {
        //     Image($r('app.media.icon_edit'))
        //       .width(25)
        //       .height(25)
        //     Text('编辑')
        //       .fontColor(Color.White)
        //       .fontSize(25)
        //   }
        // }
        // .width(120)
        // .height(50)
        // .onClick(() => {
        //   console.log('编辑')
        // })
        this.compButtonBuilder($r('app.media.icon_edit'), '编辑', () => console.log('编辑'))

        // Button() {
        //   Row({ space: 10 }) {
        //     Image($r('app.media.icon_send'))
        //       .width(25)
        //       .height(25)
        //     Text('发送')
        //       .fontColor(Color.White)
        //       .fontSize(25)
        //   }
        // }
        // .width(120)
        // .height(50)
        // .onClick(() => {
        //   console.log('发送')
        // })
        globalButtonBuilder($r('app.media.icon_send'), '发送', () => console.log('发送'))
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  num: number = 10

  // 组件内 @Builder方法：
  @Builder
  compButtonBuilder(icon: Resource, text: string, callback: () => void) {
    Button() {
      Row({ space: this.num }) {
        Image(icon)
          .width(25)
          .height(25)
        Text(text)
          .fontColor(Color.White)
          .fontSize(25)
      }
    }
    .width(120)
    .height(50)
    .onClick(callback)
  }
}


// 全局 @Builder方法
@Builder
export function globalButtonBuilder(icon: Resource, text: string, callback: () => void) {
  Button() {
    Row({ space: 10 }) {
      Image(icon)
        .width(25)
        .height(25)
      Text(text)
        .fontColor(Color.White)
        .fontSize(25)
    }
  }
  .width(120)
  .height(50)
  .onClick(callback)
}



