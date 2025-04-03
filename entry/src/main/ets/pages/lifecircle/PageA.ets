// 组件⽣命周期钩⼦函数

// 一：⻚⾯⼊⼝组件(使⽤ @Entry 装饰的组件)⽣命周期函数⽣命周期函数函数如下五个：
// aboutToAppear() ：该函数会在组件出现之前被调⽤，具体时机为创建⾃定义组件的实例之后，执⾏ build() ⽅法之前。
// aboutToDisappear() ：该函数会在组件销毁之前被调⽤。
// onPageShow() ：⻚⾯每次显示时都会被调⽤⼀次，包括路由、应⽤从后台进⼊前台等场景。
// onPageHide() ：⻚⾯每次隐藏时都会被调⽤⼀次，包括路由、应⽤从前台进⼊后台等场景。
// onBackPress() ：当⽤后点击返回按钮时会被调⽤。

import router from '@ohos.router';

@Entry
@Component
struct Parent {
  @State flag: boolean = true;

  build() {
    Column({ space: 50 }) {
      Text('Page A')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      if (this.flag) {
        Child()
      }
      Blank()
      Row({ space: 50 }) {
        Button('Child消失')
          .backgroundColor(Color.Orange)
          .onClick(() => {
            this.flag = false;
          })

        Button('Child出现')
          .backgroundColor(Color.Green)
          .onClick(() => {
            this.flag = true;
          })
      }.margin({ bottom: 100 })

      Row({ space: 50 }) {
        Button('下一页(push)')
          .onClick(() => {
            router.pushUrl({ url: 'pages/lifecircle/PageB' })
          })

        Button('下一页(replace)')
          .onClick(() => {
            router.replaceUrl({ url: 'pages/lifecircle/PageB' })
          })
      }

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding({ top: 200, bottom: 20 })
  }

  // 该函数会在组件出现之前被调⽤，具体时机为创建⾃定义组件的实例之后，执⾏ build() ⽅法之前。
  aboutToAppear() {
    console.log('PageA Parent aboutToAppear')
  }

  // 该函数会在组件销毁之前被调⽤。
  aboutToDisappear() {
    console.log('PageA Parent aboutToDisappear');
  }

  // ⻚⾯每次显示时都会被调⽤⼀次，包括路由、应⽤从后台进⼊前台等场景。
  onPageShow() {
    console.log('PageA onPageShow')
  }

  // ⻚⾯每次隐藏时都会被调⽤⼀次，包括路由、应⽤从前台进⼊后台等场景。
  onPageHide() {
    console.log('PageA onPageHide')
  }

  // 当⽤后点击返回按钮时会被调⽤。
  onBackPress() {
    console.log('PageA onBackPress')
  }
}


// 二：普通组件(没有用@Entry装饰的组件)⽣命周期函数
// 普通组件的⽣命周期函数只有如下两个：
// aboutToAppear() ：该函数会在组件出现之前被调⽤，具体时机为创建⾃定义组件的实例之后，执⾏ build() ⽅法之前
// aboutToDisappear() ：该函数会在组件销毁之前被调⽤。
@Component
struct Child {
  build() {
    Text('Child')
      .fontSize(50)
      .fontWeight(FontWeight.Bold)
  }

  // 该函数会在组件出现之前被调⽤，具体时机为创建⾃定义组件的实例之后，执⾏ build() ⽅法之前
  aboutToAppear() {
    console.log('PageA Child aboutToAppear')
  }

  // 该函数会在组件销毁之前被调⽤。
  aboutToDisappear() {
    console.log('PageA Child aboutToDisappear')
  }
}