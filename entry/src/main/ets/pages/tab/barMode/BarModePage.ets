// 可滚动导航栏
// 当标签⻚较多时，屏幕的宽度可能⽆法容纳所有的所有的⻚签此时可以使⽤ barMode() ⽅法将导航栏设置为可滚动的。
// 该⽅法的参数为枚举类型 BarMode ，可选的枚举值有 BarMode.Scrollable 和 BarMode.Fixed

@Entry
@Component
struct BarModePage {
  build() {
    Tabs() {
      ForEach(["关注", "视频", "游戏", "数码", "科技", "体育", "影视", "人文", "艺术", "自然", "军事"],
        (item: string) => {
          TabContent() {
            Text(`${item}内容`)
          }.tabBar(item)
        })
    }.barMode(BarMode.Scrollable)
  }
}