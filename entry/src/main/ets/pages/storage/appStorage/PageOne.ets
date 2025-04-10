import router from '@ohos.router';

// AppStorage:
// AppStorage⽤于存储应⽤级的状态数据，位于AppStorage中的状态数据可以在【整个应⽤的所有组件中】共享
// ArkTs提供了两个装饰器⽤于访问AppStorage实例
// @StorageProp可以和AppStorage实现单向同步
// @StorageLink可以和AppStorage实现双向同步

// 第⼀步：初始化状态变量
AppStorage.SetOrCreate('count', 0)

@Entry
@Component
struct PageOne {
  // 第⼆步：在整个应⽤内的组件中访问AppStorage
  // @StorageLink可以和AppStorage实现双向同步
  @StorageLink('count') count: number = 0;

  build() {
    Column({ space: 50 }) {
      Column({ space: 20 }) {
        Text('PageOne(Link)')
          .pageOneTextStyle()
        Row({ space: 20 }) {
          Text('count')
            .pageOneTextStyle()
          Counter() {
            Text(this.count.toString())
              .pageOneTextStyle()
          }
          .onInc(() => this.count++)
          .onDec(() => this.count--)
        }
      }.width('90%')
      .padding(20)
      .backgroundColor('#f2f2f2')
      .borderRadius(10)

      Row({ space: 50 }) {
        Button('PageTwo')
          .backgroundColor('#dae8fc')
          .fontColor(Color.Black)
          .onClick(() => {
            router.pushUrl({ url: 'pages/storage/appStorage/PageTwo' })
          })
        Button('PageThree')
          .backgroundColor('#d5e8d4')
          .fontColor(Color.Black)
          .onClick(() => {
            router.pushUrl({ url: 'pages/storage/appStorage/PageThree' })
          })

      }

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


@Extend(Text)
function pageOneTextStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}