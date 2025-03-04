import { TextInputDialogCpm } from './TextInputDialog'


@Entry
@Component
struct CustomDialogPage {
  @State answer: string = '?'
  controller: CustomDialogController = new CustomDialogController({
    builder: TextInputDialogCpm({
      confirm: (value) => { // 接收自定义回调函数的值
        this.answer = value
      }
    }), // 要控制的弹窗
    alignment: DialogAlignment.Bottom, // 控制弹窗显示位置
    offset: { dx: 0, dy: -20 },
    autoCancel: false
  })

  build() {
    Column({ space: 50 }) {
      Row() {
        Text('1+1=')
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
        Text(this.answer)
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
      }

      Button('作答')
        .onClick(() => {
          // 自定义弹框
          this.controller.open()
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}
