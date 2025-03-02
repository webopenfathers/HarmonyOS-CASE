import { Font } from '@ohos.arkui.UIContext'

@Entry
@Component
struct TextInputAttributePage {
  build() {
    // TextInput属性：
    // type
    // caretColor
    // placeholderFont
    // placeholderColor
    // fontSize
    // fontWeight
    // fontColor
    // ...
    Column({ space: 50 }) {

      // TextInput
      // 属性一：type 用于设置输入框类型
      Column({ space: 20 }) {
        Text('输入框类型')
        TextInput({ placeholder: '请输入任意内容' })
          .width('70%')
          .type(InputType.Normal)

        TextInput({ placeholder: '请输入数字' })
          .width('70%')
          .type(InputType.Number)

        TextInput({ placeholder: '请输入密码' })
          .width('70%')
          .type(InputType.Password)
      }


      // TextInput
      // 属性二：caretColor 用于设置光标颜色
      Column({ space: 20 }) {
        Text('光标样式')
        TextInput()
          .width('70%')
          .caretColor(Color.Red)
      }


      // TextInput
      // 属性三：placeholderFont 用于设置placeholder的 字体：大小 粗细  style family
      // 属性四：placeholderColor 用于设置placeholder的 字体颜色
      Column({ space: 20 }) {
        Text('placeholder样式')
        TextInput({ placeholder: '请输入用户名' })
          .width('70%')
          .placeholderFont({ weight: 800, style: FontStyle.Italic, size: 20 })
          .placeholderColor('#66008000')
      }

      // TextInput
      // 等通用属性设置文本的样式
      Column({ space: 20 }) {
        Text('输入文本样式')
        TextInput({ text: '我是输入内容' })
          .width('70%')
          .fontSize(18)
          .fontWeight(800)
          .fontColor(Color.Red)
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)

  }
}