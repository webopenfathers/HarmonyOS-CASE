// ⻚⾯路由:
// ⻚⾯跳转:
// router模块提供了两种跳转模式，分别是 router.pushUrl() 和 router.replaceUrl()
// 这两种模式的区别在于是否保留当前⻚的状态。
//  pushUrl() 会将当前⻚⾯压⼊历史⻚⾯栈，因此使⽤该⽅法跳转到⽬标⻚⾯之后，还可以再返回。
//  replaceUrl() ，会直接销毁当前⻚⾯并释放资源，然后⽤⽬标⻚替换当前⻚，因此使⽤该⽅法跳转到⽬标⻚⾯后，不能返回。

// 第⼀步：注册⻚⾯
// 在src/main/resources/base/profile/main_pages.json ⽂件增加配置即可
// 第⼆步：导⼊router模块
// import router from '@ohos.router'

import router from '@ohos.router'

@Entry
@Component
struct SourcePage {
  build() {
    Column({ space: 50 }) {
      Text('SourcePage')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
      Blank()
      Row({ space: 50 }) {
        Button('push')
          .onClick(() => {
            //todo:pushUrl
            router.pushUrl({ url: 'pages/router/pushAndReplace/TargetPage' })
          })
        Button('replace')
          .onClick(() => {
            //todo:replaceUrl
            router.replaceUrl({ url: 'pages/router/pushAndReplace/TargetPage' })
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