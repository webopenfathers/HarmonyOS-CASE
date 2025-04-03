@Entry
@Component
struct PageB {
  build() {
    Column() {
      Text('Page B')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  // ⻚⾯每次显示时都会被调⽤⼀次，包括路由、应⽤从后台进⼊前台等场景。
  onPageShow() {
    console.log('PageB onPageShow')
  }

  // ⻚⾯每次隐藏时都会被调⽤⼀次，包括路由、应⽤从前台进⼊后台等场景。
  onPageHide() {
    console.log('PageB onPageHide')
  }

  // 当⽤后点击返回按钮时会被调⽤。
  onBackPress() {
    console.log('PageB onBackPress')
  }

  // 该函数会在组件销毁之前被调⽤。
  aboutToDisappear() {
    console.log('PageB aboutToDisappear')
  }

  // 该函数会在组件出现之前被调⽤，具体时机为创建⾃定义组件的实例之后，执⾏ build() ⽅法之前。
  aboutToAppear() {
    console.log('PageB aboutToAppear')
  }
}