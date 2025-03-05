@Entry
@Component
  // @Styles装饰器注意事项：
  // 1.该装饰的方法中只能包含通用属性方法和通用事件方法
  // 2.该装饰器方法不支持参数
struct StylesPage {
  build() {
    Column() {
      Row({ space: 50 }) {
        Button('确认')
          .globalButtonStyle()
          .type(ButtonType.Normal)
          .backgroundColor(Color.Green)
          .onClick(() => {
            console.log('确认')
          })

        Button('取消')
          .globalButtonStyle()
          .type(ButtonType.Normal)
          .backgroundColor(Color.Gray)
          .onClick(() => {
            console.log('取消')
          })
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  // 组件内的@styles方法：
  // 只能在当前struct中使用
  // 不需要使用function关键字
  @Styles
  compButtonStyle() {
    .width(100)
    .height(40)
    .borderRadius(10)
  }
}


// 全局@Styles方法：
// 只允许在当前的.ets文件中使用
// 需要使用function关键字
@Styles
function globalButtonStyle() {
  .width(100)
  .height(40)
  .borderRadius(10)
}

