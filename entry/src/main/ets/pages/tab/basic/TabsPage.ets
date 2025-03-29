// Tabs组件的基本⽤法如下
// TabContent() 组件表示每个标签⻚的内容，
// 其属性 tabBar 表示其对应的⻚签

@Entry
@Component
struct TabsPage {
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
    }
  }
}