@Entry
@Component
struct ProgressStylePage {
  // Progress组件属性：
  // 一：进度条的样式
  // strokeWidth：用于设置进度条的宽度，默认值4vp，该属性可以用于 Linear Ring ScaleRing三种类型
  // scaleCount：用于设置ScaleRing的总的刻度数，默认值120，值越小越稀疏
  // scaleWidth：用于设置ScaleRing的刻度线的宽度，默认值2vp
  build() {
    Column({ space: 50 }) {
      // 线形
      Progress({ value: 30, total: 100, type: ProgressType.Linear })
        .style({
          strokeWidth: 10
        })

      // 环形
      Progress({ value: 30, total: 100, type: ProgressType.Ring })
        .style({
          strokeWidth: 10
        })

      // 带有刻度的环形
      Progress({ value: 30, total: 100, type: ProgressType.ScaleRing })
        .style({
          strokeWidth: 10, // 进度条宽度
          scaleWidth: 3, // 刻度线的宽度
          scaleCount: 30 // 刻度数
        })
    }
  }
}