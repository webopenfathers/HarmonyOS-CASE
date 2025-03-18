// list组件的参数定义如下，下面逐一介绍每个参数：

// 列表项间距：
// space 参数⽤于设置列表项的间距

// 列表滚动控制器
// scroller 参数⽤于绑定列表滚动控制器（Scroller），Scroller可以控制列表的滚动，例如令列表返回顶部
// scrollToIndex()传入列表的索引即可，注意列表的索引是从0开始的
// scrollEdge() 参数为Edge的枚举值

@Entry
@Component
struct ScrollerPage {
  data: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
  scroller: Scroller = new Scroller();

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      List({ space: 20, scroller: this.scroller }) {
        ForEach(this.data, (item: number) => {
          ListItem() {
            Text(item.toString())
              .itemTextStyle()
          }
        })
      }.listStyle()
      .height('100%')
      .width('100%')

      Button({ type: ButtonType.Circle }) {
        Image($r('app.media.icon_top'))
          .width(40)
          .height(40)
      }
      .width(60)
      .height(60)
      .backgroundColor(Color.Orange)
      .offset({ x: -20, y: -100 })
      .onClick(() => {
        // this.scroller.scrollToIndex(0)
        this.scroller.scrollEdge(Edge.Top)
      })
    }
  }
}

@Extend(Text)
function itemTextStyle() {
  .height(80)
  .width('100%')
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
  .padding(20)
}