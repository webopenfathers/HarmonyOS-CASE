@Entry
@Component
struct ExtendPage {
  build() {
    Column() {
      Row({ space: 20 }) {
        Button('确认')
          .buttonExtendStyle(Color.Green, () => console.log('确认'))

        Button('取消')
          .buttonExtendStyle(Color.Gray, () => console.log('取消'))
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

// @Extend装饰器注意事项:
// 1.@Extend方法只能定义在全局，适用范围目前仅限于当前的.ets文件
// 2.@Extend方法用于特定类型的组件，因此可包含该组件的 专有属性方法和专有事件方法
// 3.@Extend方法支持参数


@Extend(Button)
function buttonExtendStyle(color: Color, callback: () => void) {
  .width(100)
  .height(40)
  .borderRadius(10)
  .type(ButtonType.Normal)
  .backgroundColor(color)
  .onClick(callback)
}