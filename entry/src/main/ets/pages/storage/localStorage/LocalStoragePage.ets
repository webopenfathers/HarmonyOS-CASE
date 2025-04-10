// 应⽤级状态管理
// 一：LocalStorage
// LocalStorage⽤于存储⻚⾯级的状态数据，位于LocalStorage中的状态数据可以在【⼀个⻚⾯内的所有组件】中共享

interface Count {
  count: number
}

// 第⼀步：创建LocalStorage实例，并初始化状态变量
let storage = new LocalStorage({ count: 0 } as Count);

// 第⼆步：将LocalStorage实例绑定到⻚⾯的⼊⼝组件
@Entry(storage)
@Component
struct Parent {
  // 第三步：在⻚⾯内的组件访问LocalStorage
  //  @LocalStorageLink可以和LocalStorage实现双向同步
  @LocalStorageLink('count') count: number = 0;

  build() {
    Column({ space: 50 }) {
      Column({ space: 20 }) {
        Text('Entry')
          .textStyle()
        Row({ space: 20 }) {
          Text('count')
            .textStyle()
          Counter() {
            Text(this.count.toString())
              .textStyle()
          }
          .onInc(() => this.count++)
          .onDec(() => this.count--)
        }

        LinkChild()

        PropChild()

      }.width('90%')
      .padding(20)
      .backgroundColor('#f2f2f2')
      .borderRadius(10)
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Component
struct LinkChild {
  // 第三步：在⻚⾯内的组件访问LocalStorage
  //  @LocalStorageLink可以和LocalStorage实现双向同步
  @LocalStorageLink('count') count: number = 0;

  build() {
    Column({ space: 20 }) {
      Text('LinkChild')
        .textStyle()
      Row({ space: 20 }) {
        Text('count')
          .textStyle()
        Counter() {
          Text(this.count.toString())
            .textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
    }.width('90%')
    .padding(20)
    .backgroundColor('#d5e8d4')
    .borderRadius(10)
  }
}

@Component
struct PropChild {
  // 第三步：在⻚⾯内的组件访问LocalStorage
  //  @LocalStorageLink可以和LocalStorage实现单向同步
  @LocalStorageProp('count') count: number = 0;

  build() {
    Column({ space: 20 }) {
      Text('PropChild')
        .textStyle()
      Row({ space: 20 }) {
        Text('count')
          .textStyle()
        Counter() {
          Text(this.count.toString())
            .textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
    }.width('90%')
    .padding(20)
    .backgroundColor('#dae8fc')
    .borderRadius(10)
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}