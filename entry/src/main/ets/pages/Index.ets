// PersistentStorage对数据进⾏持久化存储
// LocalStorage和AppStorage都是将状态数据保存在内存中，应⽤⼀旦退出，数据就会被清理，
// 如果需要对数据进⾏持久化存储，就需要⽤到PersistentStorage

// PersistentStorage可以将指定的AppStorage中的属性保存到磁盘中，并且PersistentStorage
// 和AppStorage的该属性会⾃动建⽴双向同步，开发者不能直接访问PersistentStorage中的属
// 性，⽽只能通过AppStorage进⾏访问，具体操作如下
PersistentStorage.PersistProp('count', 0);

@Entry
@Component
struct Index {
  @StorageLink('count') count: number = 0

  build() {
    Row() {
      Column() {
        // 应⽤退出时会保存当前结果。重新启动后，会显示上⼀次的保存结果
        Text(`${this.count}`)
          .onClick(() => {
            this.count += 1;
          })
      }
    }
  }
}
