@Entry
@Component
struct TextInputEventPage {
  build() {
    // TextInput 事件
    // onChange事件：当输入框内容发生改变时触发 参数为value
    // onFocus事件：当输入框获得焦点时触发 无参数
    // onBlur事件：当输入框失去焦点时触发 无参数
    Column({ space: 50 }) {
      TextInput({ placeholder: '请输入用户名' })
        .type(InputType.Normal)
        .width('70%')
        .onChange((value) => {
          console.log(`用户名：${value}`)
        })
        .onFocus(() => {
          console.log('用户名输入框获得焦点')
        })
        .onBlur(() => {
          console.log('用户名输入框失去焦点')
        })


      TextInput({ placeholder: '请输入密码' })
        .type(InputType.Password)
        .width('70%')
        .onChange((value) => {
          console.log(`密码：${value}`)
        })
        .onFocus(() => {
          console.log('密码输入框获得焦点')
        })
        .onBlur(() => {
          console.log('密码输入框失去焦点')
        })

    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}