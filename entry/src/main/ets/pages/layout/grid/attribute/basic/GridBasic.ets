// ⽹格布局的容器组件为 Grid，⼦组件为 GridItem，具体语法如下:


// Grid组件⽀持⾃定义⾏数和列数以及每⾏和每列的尺⼨⼤⼩，
// 上述内容需要使⽤ rowsTemplate() ⽅法和 columnsTemplate() ⽅法进⾏设置，具体⽤法如下:

// 说明：
// fr 为 fraction(⽐例、分数) 的缩写。
// fr 的个数表示⽹格布局的⾏数或列数，
// fr 前⾯的数值⼤⼩，表示该⾏或列的尺⼨占⽐。



@Entry
@Component
struct GridBasic {
  build() {
    Column() {
      Grid() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9], (item: number) => {
          GridItem() {
            Text(item.toString())
              .itemTextStyle()
          }
        })
      }
      .width(320)
      .height(240)
      .rowsTemplate('1fr 1fr 1fr') // 3个fr代表 3行
      .columnsTemplate('1fr 2fr 1fr') // 3个fr代表3列，且第二列占2份
      .gridStyle()
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function itemTextStyle() {
  .height('100%')
  .width('100%')
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderWidth(1)
}

@Extend(Grid)
function gridStyle() {
  .backgroundColor('#f5f5f5')
  .borderWidth(1)
}