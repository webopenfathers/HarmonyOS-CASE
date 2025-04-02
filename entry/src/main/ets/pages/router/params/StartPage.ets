// 传递数据
// 在进⾏⻚⾯跳转时，如果需要传递⼀些数据给⽬标⻚⾯，可以在调⽤上述⽅式时，
// 添加⼀个 params 属性，并指定⼀个对象作为参数
// ⽬标⻚⾯可通过 router.getParams() ⽅法获取参数

import router from '@ohos.router'

@Entry
@Component
struct StartPage {
  build() {
    Column({ space: 50 }) {
      Text('SourcePage')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
      Blank()
      Row({ space: 50 }) {
        Button('pushUrl')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/router/params/EndPage',
              params: { // 传递数据
                id: 10,
                name: 'zhangsan',
                age: '20'
              }
            })
          })
      }
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding({
      top: 200,
      bottom: 200
    })
  }
}