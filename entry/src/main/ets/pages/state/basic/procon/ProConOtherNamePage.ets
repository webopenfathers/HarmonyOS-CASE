// @Provide和@Consume
// 除了通过变量名进⾏绑定，还可通过变量的别名进⾏绑定，具体语法如下:


@Entry
@Component
struct GrandParent { // 祖先组件
  // 通过变量的别名进⾏绑定
  @Provide('count') parentCount: number = 1; // @Provide 装饰变量必须进⾏本地初始化

  build() {
    Column() {
      Column({ space: 10 }) {
        //祖先组件标题
        Text('祖先组件').textStyle()
        //祖先组件计数器
        Row({ space: 10 }) {
          Text('@Provide').textStyle()
          Counter() {
            Text(this.parentCount.toString()).textStyle()
          }
          .onInc(() => this.parentCount++)
          .onDec(() => this.parentCount--)
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
  // 通过变量的别名进⾏绑定
  @Consume('count') childCount: number; // @Consume 装饰的变量不允许进⾏本地初始化

  build() {
    Column({ space: 10 }) {
      //子组件标题
      Text('子组件').textStyle()
      //子组件计数器
      Row({ space: 10 }) {
        Text('@Consume').textStyle()
        Counter() {
          Text(this.childCount.toString()).textStyle()
        }
        .onInc(() => this.childCount++)
        .onDec(() => this.childCount--)
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