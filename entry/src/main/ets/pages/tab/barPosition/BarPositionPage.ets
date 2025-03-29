// 导航栏的位置可通过
// vertical() 和 barPosition() 进⾏设置
// vertical() ⽤于设置导航栏是否垂直排列，其参数为 boolean 类型，默认值为 false
// barPosition() ⽤于设置导航栏的位置，参数为枚举类型 BarPosition ，
// 可选的枚举值有 BarPosition.Start 和 BarPosition.End 。两个⽅法配合使⽤，可实现如下各种效果

@Entry
@Component
struct BarPositionPage {
  build() {
    Tabs() {
      TabContent() {
        Text('首页内容')
      }
      .tabBar('首页')

      TabContent() {
        Text('发现内容')
      }
      .tabBar('发现')

      TabContent() {
        Text('我的内容')
      }
      .tabBar("我的")
    }.vertical(false)
    .barPosition(BarPosition.End)
  }
}