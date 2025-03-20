// -------------------------------------------------------------------------------------------
// @State
// 允许装饰的类型:
// @State 允许装饰的变量类型有 string 、 number 、 boolean 、 object 、 class 和 enum 类型，以及这些类型的数组
// 框架能够观察到的变化：
// 并不是 @State 状态变量的所有更改都会引起UI的刷新，只有可以被框架观察到的修改才会引起UI刷新。能被框架观察到的变化如下
// boolean、string、number类型：
// 当 @State 装饰的变量类型为 boolean 、 string 、 number 类型时，可以观察到赋值的变化

/// ----------------------------------------------------------------------------------
// @Prop
// 允许装饰的类型：
// @Prop 允许装饰的变量类型有 string 、 number 、 boolean 、 enum ，注意不⽀持 class 、 object 和数组
// 框架能够观察到的变化：
// 当装饰的类型是允许的类型，即 string 、 number 、 boolean 、 enum 类型时，所有赋值的变化都可以观察到。

// ------------------------------------------------------------------------------------
// @Link
// 允许装饰的类型（同 @State）
// 框架能够观察到的变化（同 @State ）

// -----------------------------------------------------------------------------------
// @Provide 和 @Consume
// 允许装饰的类型（同 @State ）
// 框架能够观察到的变化（同 @State ）

// -------------------------------------------------------------------------------------

// 总结：(也就是复杂类型，只有地址发生变化才能观察到，修改某个属性，引用地址不变，观察不到)
// 对于 class 、 object 和数组类型，框架仅能观察到 @State 变量第⼀层属性的变化，
// 例如 employee.age++ ， persons[0]=new Person('张三',22) ，
// 但第⼆层属性的变化是观察不到的，例如 employee.job.salary++ 和 persons[1].age++ 。


@Entry
@Component
struct NumberState {
  @State count: number = 1;

  build() {
    Column({ space: 50 }) {

      Row({ space: 10 }) {
        Text('@State').textStyle()
        //计数器
        Counter() {
          Text(this.count.toString()).textStyle()
        }
        .onInc(() => this.count++)
        .onDec(() => this.count--)
      }
      .width('100%')
      .backgroundColor("#CCE3CB")
      .padding(10)
      .borderRadius(20)
      .justifyContent(FlexAlign.Center)

    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .padding(10)

  }
}


@Extend(Text)
function textStyle() {
  .fontSize(25)
  .fontWeight(FontWeight.Bold)
}
