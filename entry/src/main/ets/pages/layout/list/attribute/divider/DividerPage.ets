// 元素分割线
// 使⽤ divider({}) 属性可设置列表元素(每个ListItem)分割线样式，该⽅法的参数定义如下:
// strokeWidth 分割线线宽
// color 分割线颜⾊
// startMargin 分割线起始端到列表侧边距离
// endMargin 分割线末端到列表侧边距离


@Entry
@Component
struct DividerPage {
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
    }
    .listStyle()
    .height('100%')
    .width('100%')
    .alignListItem(ListItemAlign.Center)
    .divider({ // 设置列表元素(每个ListItem元素)分割线样式
      strokeWidth: 2,
      color: Color.Red,
      startMargin: 30,
      endMargin: 30
    })

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