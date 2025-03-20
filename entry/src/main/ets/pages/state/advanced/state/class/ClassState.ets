// class、object类型
// 当 @State 装饰的变量类型为class或者object时，可以观察到变量⾃身赋值的变化，和其属性赋值的变化。
// 需要注意的是，若某个属性也为 class 或者 object，则嵌套属性的变化是观察不到的。

import { Employee, Job } from './model/DataModel'

@Entry
@Component
struct EmployeeInfo {
  @State employee: Employee = new Employee('张三', 28, new Job('销售', 8000))

  build() {
    Column() {
      Column({ space: 20 }) {
        Row({ space: 20 }) {
          Text('姓名').textStyle()
          Text(this.employee.name).textStyle()
        }

        Row({ space: 20 }) {
          Text('年龄').textStyle()
          Counter() {
            Text(this.employee.age.toString()).textStyle()
          }
          .onInc(() => {
            this.employee.age++; //修改状态变量的属性,可以观察到
          })
          .onDec(() => {
            this.employee.age--; //修改状态变量的属性,可以观察到
          })
        }

        Row({ space: 20 }) {
          Text('岗位').textStyle()
          Column({ space: 10 }) {
            Row({ space: 20 }) {
              Text('名称').textStyle()
              Text(this.employee.job.name).textStyle()
            }

            Row({ space: 20 }) {
              Text('薪资').textStyle()
              Counter() {
                Text(this.employee.job.salary.toString()).textStyle()
              }
              .width(140)
              .onInc(() => {
                this.employee.job.salary++; //修改状态变量的属性的属性,不可以观察到
              })
              .onDec(() => {
                this.employee.job.salary--; //修改状态变量的属性的属性,不可以观察到
              })
            }
          }
          .backgroundColor('#CCE3CB')
          .padding(20)
          .borderRadius(10)
          .alignItems(HorizontalAlign.Start)
        }


        //   重新复制
        Row({ space: 20 }) {
          Text('重新赋值').textStyle()
          Button('重新赋值')
            .fontSize(20)
            .onClick(() => {
              this.employee = new Employee('李四', 26, new Job('秘书', 6000)) //状态变量重新赋值,可以观察到
            })
        }

      }
      .width('100%')
      .backgroundColor(Color.White)
      .borderRadius(10)
      .alignItems(HorizontalAlign.Start)
      .padding(20)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#E9E9EA')
    .padding(10)
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function textStyle() {
  .fontSize(20)
  .fontWeight(FontWeight.Medium)
}