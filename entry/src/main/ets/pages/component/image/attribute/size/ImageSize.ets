@Entry
@Component
struct ImageSizePage {
  build() {
    Column({ space: 20 }) {
      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.img_harmony'))
            .width('450px')// 像素px单位
            .height('450px')
          Text('宽高：450px')
        }

        Column() {
          Image($r('app.media.img_harmony'))
            .width('150vp')// 虚拟像素vp单位
            .height('150vp')
          Text('宽高：150vp')
        }
      }

      Row({ space: 20 }) {
        Column() {
          Image($r('app.media.img_harmony'))
            .width(150)// number类型---默认vp为单位
            .height(150)
          Text('宽高：150')
        }

        Column() {
          Image($r('app.media.img_harmony'))
            .width($r('app.integer.width')) // 引用resource目录下element目录下定义的json文件
            .height($r('app.integer.height'))
          Text('宽高：150')
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


// vp计算公式：
// DPI或PPI为像素密度
// vp 虚拟像素
// px 物理像素
// 1vp=(DPI/160)px

