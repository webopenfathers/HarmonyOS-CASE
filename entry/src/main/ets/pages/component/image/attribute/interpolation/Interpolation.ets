@Entry
@Component
struct InterpolationPage {
  build() {
    Column({ space: 50 }) {
      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.img_flower'))
            .width('500px')
            .height('500px')
            .interpolation(ImageInterpolation.None)
          Text('None') // 不使用插值
        }

        Column() {
          Image($r('app.media.img_flower'))
            .width('500px')
            .height('500px')
            .interpolation(ImageInterpolation.Low)
          Text('Low') // 低等质量插值
        }
      }


      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.img_flower'))
            .width('500px')
            .height('500px')
            .interpolation(ImageInterpolation.Medium)
          Text('Medium') // 中等质量插值

        }

        Column() {
          Image($r('app.media.img_flower'))
            .width('500px')
            .height('500px')
            .interpolation(ImageInterpolation.High)
          Text('High') // 高质量插值，可能会影响图片渲染的速度
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


// 图片插值：
// 当原图片分辨率较低并且需要放大显示时，图片会模糊并出现锯齿
// 这时可以使用 interpolation() 方法对图片进行插值，使图片显得更清晰
// 该方法参数为 ImageInterpolation 枚举类型
