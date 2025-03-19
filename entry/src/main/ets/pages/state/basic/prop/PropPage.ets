// @Prop
// @Prop 也可⽤于装饰状态变量， @Prop 装饰的变量发⽣变化时也会驱动当前组件的视图刷
// 新，除此之外， @Prop 装饰的变量还可以同步⽗组件中的状态变量，但只能单向同步，也就是
// ⽗组件的状态变化会⾃动同步到⼦组件，⽽⼦组件的变化不会同步到⽗组件。


// 注意： @Prop 装饰的变量不允许本地初始化，只能通过⽗组件向⼦组件传参进⾏初始化。

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
        Child({ count: this.count })
      }
      .containerStyle('#EFEFEF')
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .padding(10)
  }
}


@Component
struct Child {
  @Prop count: number; // 不允许本地初始化，只能通过⽗组件向⼦组件传参进⾏初始化。

  build() {
    Column({ space: 10 }) {
      //子组件标题
      Text('子组件').textStyle()

      //子组件计数器
      Row({ space: 10 }) {
        Text('@Prop').textStyle()
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
    }
    .containerStyle("#CCE3CB")
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