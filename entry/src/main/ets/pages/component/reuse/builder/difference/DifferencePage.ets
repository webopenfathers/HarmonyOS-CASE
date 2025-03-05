// @Builder方法 和 自定义组件的区别：
// @Builder ⽅法和⾃定义组件虽然都可以实现UI复⽤的效果，但是两者还是有着本质的区别的，
// 其中最为显著的⼀个区别就是⾃定义组件可以定义⾃⼰的状态变量，⽽ @Builder ⽅法则不能。
// 以下案例中，每个待办事项的UI结构都相同，因此可考虑将其提炼为⼀个⾃定义组件或者 @Builder ⽅法，
// 但是由于每个待办事项均有已完成和未完成两种状态，因此需要为每个待办事项都定义⼀个状态变量，
// 所以此时就只能使⽤⾃定义组件⽽不能使⽤ @Builder ⽅法。


// 总结：
// 若复⽤的 UI结构没有状态，推荐使⽤ @Builder ⽅法，否则使⽤⾃定义组件。
interface Item {
  text: string
}

@Entry
@Component
struct DifferencePage {
  todoList: Item[] = [{ text: '读书' }, { text: '运动' }, { text: '早睡' }]

  build() {
    Column({ space: 10 }) {
      Text('待办事项')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .width('100%')
      ForEach(this.todoList, (item: Item) => {
        TodoItem(item)
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(10)
    .backgroundColor('#f2f2f2')
  }
}

@Component
struct TodoItem {
  text: string = '';
  @State isDone: boolean = false;

  build() {
    Row() {
      Text(this.text)
        .fontSize(30)
        .fontWeight(FontWeight.Medium)
        .decoration({
          //文本装饰线，根据isDone的值选择不同的类型
          type: this.isDone ? TextDecorationType.LineThrough : TextDecorationType.None
        })

      //用于填充Column/Row容器的剩余空间
      Blank()

      Toggle({ type: ToggleType.Checkbox })
        .onChange((value) => {
          this.isDone = value;
        })
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.White)
    .padding(10)
    .borderRadius(10)
  }
}