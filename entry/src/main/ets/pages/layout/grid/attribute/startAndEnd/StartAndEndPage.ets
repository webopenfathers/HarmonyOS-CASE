// ⼦组件所占⾏列数：
// GridItem组件⽀持横跨⼏⾏或者⼏列

// 可以使⽤ columnStart() 、 columnEnd() 、 rowStart() 和 rowEnd() ⽅法设置
// GridItem 组件所占的单元格，其中 rowStart 和 rowEnd 属性表示当前⼦组件的起始⾏号和
// 终点⾏号， columnStart 和 columnEnd 属性表示指定当前⼦组件的起始列号和终点列号。

// 说明：
// Grid容器中的⾏号和列号均从0开始。


@Entry
@Component
struct StartAndEndPage {
  build() {
    Column() {
      Grid() {
        GridItem() {
          Text('1')
            .itemTextStyle()
        }.rowStart(0).rowEnd(1).columnStart(0).columnEnd(1)

        GridItem() {
          Text('2')
            .itemTextStyle()
        }

        GridItem() {
          Text('3')
            .itemTextStyle()
        }

        GridItem() {
          Text('4')
            .itemTextStyle()
        }

        GridItem() {
          Text('5')
            .itemTextStyle()
        }.columnStart(1).columnEnd(2)
      }
      .width(320)
      .height(240)
      .rowsTemplate('1fr 1fr 1fr')
      .columnsTemplate('1fr 2fr 1fr')
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