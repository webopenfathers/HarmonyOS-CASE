@Entry
@Component
struct DeleteButtonPage {
  build() {
    Column(){
      Button(){
        Image('pages/delete/images/ic_delete.png')
          .width(25)
          .height(25)
      }
      .backgroundColor(Color.Red)
      .width(50)
      .height(50)
      .type(ButtonType.Circle)
      .onClick(()=>{
        console.log('删除')
      })
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}