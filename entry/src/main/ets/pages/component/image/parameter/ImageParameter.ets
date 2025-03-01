@Entry
@Component
struct ImageParameter {
  build() {
    Column({ space: 20 }) {
      // 本地图片，位于ets目录
      Image('pages/component/image/parameter/images/img_phone.png')
        .width(150)
        .height(150)


      //网络图片
      Image('https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/0417/4-1-1115-1.png')
        .width(150)
        .height(150)


      //本地图片，位于resource/*/media目录下
      Image($r('app.media.img_phone'))
        .width(150)
        .height(150)

      //本地图片，位于resource/rawfile目录下
      Image($rawfile('img_phone.png'))
        .width(150)
        .height(150)
    }
    .width('100%')
    .height('100%')
  }
}