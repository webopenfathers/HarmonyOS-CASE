// ⻚⾯返回：
// 返回⻚⾯使⽤ router.back() ⽅法即可，直接调⽤ router.back() 将返回上⼀⻚⾯，
// 除此之外该⽅法也⽀持返回指定⻚⾯，例如 router.back({url:'pages/Index'})
// 注意：
// 若指定的⻚⾯不在历史⻚⾯栈中，也就是⽤户并未浏览过指定⻚⾯或者通过replaceUrl跳转的页面，那么将⽆法回到指定⻚⾯(和vue、uni app、微信小程序不同)。

import router from '@ohos.router'

@Entry
@Component
struct ToPage {
  build() {
    Column() {
      Row() {
        Image($r('app.media.icon_back'))
          .width(30)
          .height(30)
        Text('返回')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }.alignSelf(ItemAlign.Start)
      .padding(20)
      .onClick(() => {
        router.back()
      })

      Text('ToPage')
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 130 })
      Blank()
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}