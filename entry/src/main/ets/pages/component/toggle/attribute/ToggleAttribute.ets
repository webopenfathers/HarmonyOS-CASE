@Entry
@Component
struct ToggleAttributePage {
  // Toggle组件常用属性：
  // selectedColor 设置选中状态的颜色
  // switchPointColor 设置圆形滑块的颜色
  build() {
    Column({ space: 50 }) {

      // selectedColor 设置选中状态的颜色
      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Switch, isOn: true })
          .selectedColor(Color.Green)

        Toggle({ type: ToggleType.Checkbox, isOn: true })
          .selectedColor(Color.Green)

        Toggle({ type: ToggleType.Button, isOn: true }) {
          Text('Button')
        }
        .selectedColor('#66008000')
      }


      //  switchPointColor 圆形滑块的颜色---只能用在Switch类型的组件
      Toggle({ type: ToggleType.Switch, isOn: true })
        .selectedColor(Color.Green)
        .switchPointColor(Color.Orange)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}