@Entry
@Component
struct Index {
  @State message: string = 'Hello ArkTs';

  build() {
    Row() {
 Column(){
   Text(this.message).fontSize(50).fontWeight(FontWeight.Bold)
 }.width('50%')
      Column(){
        Text(this.message).fontSize(50).fontWeight(FontWeight.Bold)
      }.width('50%')
    }

    .height('100%')
  }
}