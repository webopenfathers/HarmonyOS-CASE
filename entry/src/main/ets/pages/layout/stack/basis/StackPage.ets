// Stack层叠布局：
// 层叠布局是指将多个组件沿垂直于屏幕的⽅向堆叠在⼀起，类似于图层的叠加。
// 层叠布局可通过Stack容器组件实现，其⼦元素会按照其添加顺序依次叠加在⼀起，后添加的⼦元素位于先添加的⼦元素之上。

@Entry
@Component
struct StackPage {
  build() {
    Column() {
      Stack() { // Stack层叠布局：后添加的⼦元素位于先添加的⼦元素之上
        Row()
          .width(250)
          .height(250)
          .backgroundColor('#107B02')//绿色
          .shadow({ radius: 50 })

        Row()
          .width(200)
          .height(200)
          .backgroundColor('#E66826')//橙色
          .shadow({ radius: 50 })
        Row()
          .width(150)
          .height(150)
          .backgroundColor('#255FA7')//蓝色
          .shadow({ radius: 50 })
      }
      .width(300)
      .height(300)
      .backgroundColor('#E5E5E5') // 灰色

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}