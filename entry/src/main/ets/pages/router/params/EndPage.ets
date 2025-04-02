// ⽬标⻚⾯可通过 router.getParams() ⽅法获取参数

import router from '@ohos.router'

interface Params {
  id: number,
  name: string,
  age: string
}

@Entry
@Component
struct EndPage {
  build() {
    Column({ space: 50 }) {
      Text('EndPage')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
      Blank()
      Button('打印参数')
        .onClick(() => {
          let params = router.getParams() as Params // 获取参数
          console.log(`name:${params.name}`)
        })
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding({ top: 200, bottom: 200 })
  }
}