// 滚动条样式：
// 使⽤ scrollBar() ⽅法可以设置滚动条状态，该⽅法的参数类型为枚举类型 BarState ，可选的枚举值如下：
// BarState.Off 不显示
// BarState.On 常驻显示
// BarState.Auto 按需显示(触摸时显示，2s后消失)

@Entry
@Component
struct ScrollBarPage {
  data: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

  build() {
    List({ space: 20 }) {
      ForEach(this.data, (item:number) => {
        ListItem() {
          Text(item.toString())
            .height(80)
            .width(320)
            .itemTextStyle()
        }
      })
    }
    .listStyle()
    .height('100%')
    .width('100%')
    .alignListItem(ListItemAlign.Center)
    .scrollBar(BarState.Auto) // 设置滚动条样式

  }
}

@Extend(Text)
function itemTextStyle() {
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderRadius(10)
}

@Extend(List)
function listStyle() {
  .backgroundColor(Color.White)
  .padding({ top: 20, bottom: 20 })
}