// 交叉轴对⻬⽅式:
// 使⽤ alignListItem() ⽅法可以设置⼦组件在交叉轴⽅向的对⻬⽅式，其参数类型为枚举类型 ListItemAlign ，可选的枚举值有:
//  ListItemAlign.Start 交叉轴起始端对⻬
//  ListItemAlign.Center 交叉轴居中对⻬
//  ListItemAlign.End 交叉轴末端对⻬

@Entry
@Component
struct AlignPage {
  data: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

  build() {
    List({ space: 20 }) {
      ForEach(this.data, (item: number) => {
        ListItem() {
          Text(item.toString())
            .height(80)
            .width(320)
            .itemTextStyle()
        }
      })
    }.listStyle()
    .height('100%')
    .width('100%')
    .alignListItem(ListItemAlign.Center) // 设置交叉轴对⻬⽅式

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