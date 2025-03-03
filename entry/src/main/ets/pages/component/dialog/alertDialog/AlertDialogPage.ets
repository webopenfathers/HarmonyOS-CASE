@Entry
@Component
struct AlertDialogPage {
  build() {
    // AlertDialog:
    // 操作确认类弹出框，触发一个将产生严重后果的不可逆操作时，如删除、重置、取消编辑、停止等。
    Column() {
      Button('删除')
        .backgroundColor(Color.Red)
        .onClick(() => {
          AlertDialog.show({
            title: '删除该记录？', // 弹框标题
            message: '删除后无法恢复，您确认要删除吗？', // 弹框信息
            autoCancel: true, // 点击遮罩层时，是否关闭弹框
            alignment: DialogAlignment.Bottom, // 弹框位置
            offset: { dx: 0, dy: -20 }, // 相对于弹框位置的偏移量
            // 主要按钮，位于左侧
            primaryButton: {
              value: '确认', // 按钮内容
              fontColor: Color.Red, // 按钮字体颜色
              action: () => { // 点击回调
                console.log('确认删除')
              }
            },
            // 次要按钮，位于右侧
            secondaryButton: {
              value: '取消',
              action: () => { // 点击回调
                console.log('取消删除')
              }
            },

            // 点击遮罩层取消时的回调
            cancel: () => {
              console.log('Closed callbacks')
            }
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}