@Entry
@Component
struct ProgressParameterPage {
  @State value: number = 30
  @State total: number = 100

  build() {
    // Progress组件有三个参数：
    // 参数一：value 指定当前进度值
    // 参数二：total 指定进度总长
    // 参数三：type 指定进度条类型
    Column({ space: 50 }) {
      Progress({ value: this.value, total: this.total, type: ProgressType.Linear }).width(200)
      Progress({ value: this.value, total: this.total, type: ProgressType.Ring })
      Progress({ value: this.value, total: this.total, type: ProgressType.Eclipse })
      Progress({ value: this.value, total: this.total, type: ProgressType.ScaleRing })
      Progress({ value: this.value, total: this.total, type: ProgressType.Capsule })
        .height(80)
        .width(200)

      // 分割线
      Divider()
        .vertical(false)
        .color(Color.Red)
        .strokeWidth(1)
        .lineCap(LineCapStyle.Square)
        .width('90%')

      Row({ space: 50 }) {
        Button('进度-1').onClick(() => {
          this.value -= 1
        })
        Button('进度+1').onClick(() => {
          this.value += 1
        })
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}