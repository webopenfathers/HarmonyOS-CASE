@Entry
@Component
struct ToggleParameterPage {
  // Toggle 组件有两个参数
  // 参数一：type 设置组件的类型
  // 参数二：isOn 用于设置Toggle组件的状态
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Switch, isOn: false }) // Switch类型
        Toggle({ type: ToggleType.Switch, isOn: true })
      }


      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Checkbox, isOn: false }) // Checkbox类型
        Toggle({ type: ToggleType.Checkbox, isOn: true })
      }


      Row({ space: 20 }) {
        Toggle({ type: ToggleType.Button, isOn: false }) {  // Button类型
          Text('Button')
        }

        Toggle({ type: ToggleType.Button, isOn: true }) {
          Text('Button')
        }
      }

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}