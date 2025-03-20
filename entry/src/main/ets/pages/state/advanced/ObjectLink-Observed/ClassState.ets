// @ObjectLink 和 @Observed
// 前⽂所述的装饰器都仅能观察到状态变量第⼀层的变化，⽽第⼆层的变化是观察不到的。如需观
// 察到这些状态变量第⼆层的变化，则需要⽤到 @ObjectLink 和 @Observed 装饰器。

// 具体⽤法为：
// 1. 将第⼆层内容抽取为⼀个⼦组件，并将第⼆层的数据作为⼦组件的状态变量，该变量需要使⽤ @ObjectLink 装饰
// 2. 第⼆层数据的类定义需要使⽤ @Observed 装饰器进⾏装饰


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
            this.employee.age++;
          })
          .onDec(() => {
            this.employee.age--;
          })
        }

        Row({ space: 20 }) {
          Text('岗位').textStyle()

          // 岗位信息--子组件(想要观察深层属性变化，需要先抽离为子组件)
          JobInfo({ job: this.employee.job })
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


//子组件
@Component
struct JobInfo {
  // 注意此处使用：@Prop和@State也都可以使视图更新
  @ObjectLink job: Job

  build() {
    Column({ space: 10 }) {
      Row({ space: 20 }) {
        Text('名称').textStyle()
        Text(this.job.name).textStyle()
      }

      Row({ space: 20 }) {
        Text('薪资').textStyle()
        Counter() {
          Text(this.job.salary.toString()).textStyle()
        }
        .width(140)
        .onInc(() => {
          this.job.salary++;
        })
        .onDec(() => {
          this.job.salary--;
        })
      }
    }
    .backgroundColor('#CCE3CB')
    .padding(20)
    .borderRadius(10)
    .alignItems(HorizontalAlign.Start)
  }
}


@Extend(Text)
function textStyle() {
  .fontSize(20)
  .fontWeight(FontWeight.Medium)
}