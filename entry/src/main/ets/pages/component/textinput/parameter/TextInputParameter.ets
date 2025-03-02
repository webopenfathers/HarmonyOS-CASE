@Entry
@Component
struct TextInputParameterPage {
  build() {
    // TextInput 有一个参数 options对象
    // placeholder 用于设置输入提示信息
    // text 输入显示的内容
    Column({ space: 50 }) {
      TextInput({ placeholder: '请输入用户名' }).width('70%')

      TextInput({ text: '当前内容' }).width('70%')

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)

  }
}