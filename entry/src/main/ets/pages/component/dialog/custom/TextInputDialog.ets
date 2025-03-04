@Component
@CustomDialog
export struct TextInputDialogCpm {
  controller: CustomDialogController = new CustomDialogController({
    builder: TextInputDialogCpm() // 要控制的弹窗
  })
  confirm: (value: string) => void = () => { // 自定义回调函数
  }
  value: string = ''

  build() {
    Column({ space: 20 }) {
      Text('请输入你的答案')
      TextInput({ placeholder: '请输入数字' })
        .type(InputType.Number)
        .onChange((value) => {
          this.value = value
        })


      Row({ space: 50 }) {
        Button('取消')
          .onClick(() => {
            this.controller.close()
          })
        Button('确认')
          .onClick(() => {
            this.confirm(this.value)
            this.controller.close()
          })
      }
    }
    .padding(20)
  }
}