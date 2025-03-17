// 参数一：布局⽅向（dirction）
// ⽤于设置Flex容器的布局⽅向，即⼦元素的排列⽅向，其类型 FlexDirection 为枚举类型，可选的枚举值如下：
// Row：⽔平⽅向，元素从左到右排列
// RowReverse：⽔平⽅向，元素从右到左排列
// Column：垂直⽅向，元素从上到下排列
// ColumnReverse垂直⽅向，元素从下到上排列

// Flex容器中也有主轴和交叉轴两个概念，其中主轴⽅向与 direction ⼀致，交叉轴与主轴垂直



@Entry
@Component
struct DirectionPage {
  build() {
    Column({ space: 50 }) {
      Flex({ direction: FlexDirection.ColumnReverse }) {
        Text('1')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('2')
          .width(100)
          .height(100)
          .itemTextStyle()
        Text('3')
          .width(100)
          .height(100)
          .itemTextStyle()
      }
      .height(350)
      .width(350)
      .flexStyle()

    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function itemTextStyle() {
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(40)
  .fontWeight(FontWeight.Bold)
  .backgroundColor('#008a00')
  .borderWidth(1)
}

@Extend(Flex)
function flexStyle() {
  .backgroundColor('#f5f5f5')
  .borderWidth(1)
}