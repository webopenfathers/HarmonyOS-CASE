// @Provide和@Consume

// @Provide 和 @Consume ⽤于跨组件层级传递状态信息，其中 @Provide ⽤于装饰祖先组件
// 的状态变量， @Consume ⽤于装饰后代组件的状态变量。可以理解为祖先组件提供（Provide）
// 状态信息供后代组件消费（Consume），并且祖先和后代的状态信息可以实现双向同步。

// 注意： @Provide 装饰变量必须进⾏本地初始化，⽽ @Consume 装饰的变量不允许进⾏本
// 地初始化。另外， @Provide 和 @Consume 装饰的变量不是通过⽗组件向⼦组件传参的⽅
// 式进⾏绑定的，⽽是通过相同的变量名进⾏绑定的。


@Entry
@Component
struct GrandParent { // 祖先组件
  @Provide count: number = 1; // @Provide 装饰变量必须进⾏本地初始化

  build() {
    Column() {
      Column({ space: 10 }) {
        //祖先组件标题
        Text('祖先组件').textStyle()
        //祖先组件计数器
        Row({ space: 10 }) {
          Text('@Provide').textStyle()
          Counter() {
            Text(this.count.toString()).textStyle()
          }
          .onInc(() => this.count++)
          .onDec(() => this.count--)
        }

        //父组件
        Parent()
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
struct Parent {
  build() {
    Column({ space: 10 }) {
      //父组件标题
      Text('父组件').textStyle()
      //子组件
      Child()
    }
    .containerStyle('#CCE3CB')
  }
}


@Component
export struct Child {
  @Consume count: number; // @Consume 装饰的变量不允许进⾏本地初始化

  build() {
    Column({ space: 10 }) {
      //子组件标题
      Text('子组件').textStyle()
      //子组件计数器
      Row({ space: 10 }) {
        Text('@Consume').textStyle()
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
    }
    .containerStyle('#f6c867')
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