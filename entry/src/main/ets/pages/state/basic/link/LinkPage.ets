// @Link
// @Link 也可⽤于装饰状态变量， @Link 装饰的变量发⽣变化时也会驱动当前组件的视图刷
// 新，除此之外， @Link 变量同样会同步⽗组件状态，并且能够双向同步。也就是⽗组件的变化
// 会同步到⼦组件，⼦组件的变化也会同步到⽗组件。

// 注意： @Link 装饰的变量不允许本地初始化，只能由⽗组件通过传参进⾏初始化，并且⽗组
// 件必须使⽤ $变量名 的⽅式传参，以表示传递的是变量的引⽤

@Entry
@Component
struct Parent {
  @State count: number = 1;

  build() {
    Column() {
      Column({ space: 10 }) {
        //父组件标题
        Text('父组件').textStyle()
        //父组件计数器
        Row({ space: 10 }) {
          Text('@State').textStyle()
          Counter() {
            Text(this.count.toString()).textStyle()
          }
          .onInc(() => this.count++)
          .onDec(() => this.count--)
        }

        //子组件
        Child({ count: $count }) // ⽗组件必须使⽤ $变量名 的⽅式传参，以表示传递的是变量的引⽤
      }
      .containerStyle(Color.White)
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#EFEFEF')
    .padding(10)
  }
}

@Component
struct Child {
  @Link count: number; // 不允许本地初始化，只能由⽗组件通过传参进⾏初始化

  build() {
    Column({ space: 10 }) {
      //子组件标题
      Text('子组件').textStyle()
      //子组件计数器
      Row({ space: 10 }) {
        Text('@Link').textStyle()
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
    }
    .containerStyle('#CCE3CB')
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}

@Extend(Column)
function containerStyle(color: ResourceColor) {
  .width('100%')
  .backgroundColor(color)
  .padding(10)
  .borderRadius(20)
}