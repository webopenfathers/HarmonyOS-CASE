// 数组类型
// 当 @State 装饰的变量类型为数组时，可以观察到数组本身赋值的变化，和其元素的添加、删除及更新的变化，
// 若元素类型为 class 或者 object 时，元素属性的变化，是观察不到的。


import { getRandomAge, getRandomName } from '../../../../../utils/RandomUtil';
import { Person } from './model/DataModel'

@Entry
@Component
struct ArrayState {
  @State persons: Person[] = [new Person('张三', 19), new Person('李四', 20)];

  build() {
    Column() {
      Row() {
        Text('用户信息').fontSize(40)
      }
      .height(60)
      .width('100%')

      List({ space: 10 }) {
        ForEach(this.persons, (person: Person) => {
          ListItem() {
            Column({ space: 10 }) {
              Row({ space: 20 }) {
                Text('姓名').textStyle()
                Text(person.name).textStyle()
              }

              Row({ space: 20 }) {
                Text('年龄').textStyle()

                Counter() {
                  Text(person.age.toString()).textStyle()
                }
                .onInc(() => {
                  person.age++; // 3 修改数组元素的属性,不可以观察到
                })
                .onDec(() => {
                  person.age--; // 3 修改数组元素的属性,不可以观察到
                })
              }
            }.itemStyle()
          }
        })
      }
      .layoutWeight(1)

      Row({ space: 50 }) {

        //向数组添加元素
        Button('添加').backgroundColor(Color.Gray)
          .onClick(() => {
            this.persons.push(new Person(getRandomName(), getRandomAge())) //2 新增数组元素,可以观察到
          })

        //为数组变量赋值
        Button('清空').backgroundColor(Color.Gray)
          .onClick(() => {
            this.persons = []; // 1 状态变量重新赋值,可以观察到
          })

        //对数组元素重新赋值
        Button('赋值').backgroundColor(Color.Gray)
          .onClick(() => {
            this.persons[0]=new Person('张博闻',25) // 4 对数组元素重新赋值,可以观察到
          })
      }
      .height(60)
      .width('100%')
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#EBEBEB')
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(20)
  .fontWeight(500)
}

@Extend(Column)
function itemStyle() {
  .padding(20)
  .width('100%')
  .borderRadius(10)
  .alignItems(HorizontalAlign.Start)
  .justifyContent(FlexAlign.Center)
  .backgroundColor(Color.White)
}