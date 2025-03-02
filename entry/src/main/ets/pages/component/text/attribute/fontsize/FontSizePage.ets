@Entry
@Component
struct FontSizePage { // 字体大小属性
  build() {
    Column({ space: 20 }) {
      // string类型 px为单位
      Text('你好,鸿蒙')
        .fontSize('150px')

      // string类型 fp为单位类似vp
      Text('你好,鸿蒙')
        .fontSize('50fp')

      // number类型 字体大小就是fp
      Text('你好,鸿蒙')
        .fontSize(50)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}


// fp计算公式：
// DPI或PPI为像素密度
// fp 虚拟像素
// px 物理像素
// 1fp=(DPI/160)px