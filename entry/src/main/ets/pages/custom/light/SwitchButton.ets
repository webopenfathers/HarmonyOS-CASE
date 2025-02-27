  // @Component 自定义组件装饰器 (必须)
@Component
  // export 关键字导出自定义组件 (必须)
  // struct 关键字 (必须)
  // SwitchButton 自定义组件名称 (必须)
export struct SwitchButton {
  // color 自定义组件属性
  color: Color = Color.Blue

  // build方法 自定义组件UI (必须)
  build() {
    Button({ type: ButtonType.Circle }) {
      Image('pages/custom/light/images/icon_switch.png')
        .width(30)
        .height(30)
    }
    .width(50)
    .backgroundColor(this.color)
    .height(50)
  }
}