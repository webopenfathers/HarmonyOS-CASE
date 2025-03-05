// @Builder方法参数传递规则：
// @Builder ⽅法具有两种参数传递机制——按值传递和按引⽤传递。当只有⼀个参数且参数为对象字⾯量时为按引⽤传递，其余情况均为按值传递。
// 按引⽤传递时，若传递的参数为状态变量，则状态变量的变化将会触发 @Builder ⽅法内部UI的刷新；按值传递时则不会


@Entry
@Component
struct BuilderParameterPage {
  @State count: number = 0;

  build() {
    Column({ space: 50 }) {
      //按值传递
      valueTextBuilder(this.count) // 不会触发 @Builder方法内部UI刷新 界面无变化
      //按引用传递
      referenceTextBuilder({ count: this.count }) // 会触发 @Builder方法内部 UI刷新 界面变化
      Row({ space: 50 }) {
        Button('-1').onClick(() => {
          this.count--;
        })
        Button('+1').onClick(() => {
          this.count++;
        })
      }
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

interface Count {
  count: number
}

@Builder
function valueTextBuilder(count: number) {
  Text(`按值传递: ${count}`)
    .fontSize(30)
    .fontWeight(FontWeight.Bold)
}

@Builder
function referenceTextBuilder(obj: Count) {
  Text(`按引用传递: ${obj.count}`)
    .fontSize(30)
    .fontWeight(FontWeight.Bold)
}

