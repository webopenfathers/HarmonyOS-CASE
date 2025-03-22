import { getRandomName, getRandomPhone } from '../../../../utils/RandomUtil';
import { Person } from './model/DataModel';

@Entry
@Component
struct ContactsPage {
  @State persons: Person[] =
    [new Person(getRandomName(), getRandomPhone()), new Person(getRandomName(), getRandomPhone())];
  @State currentExpandId: number = -1 // 当前选中的id
  @State isSelectMode: boolean = false // 切换 选择/取消
  @State selectedIdList: number[] = [] // 删除联系人  复选框选中的list中的id集合

  build() {
    Column() {
      //标题
      Row({ space: 10 }) {
        Text('联系人').titleStyle()
        Blank()
        Button(this.isSelectMode ? '取消' : '选择')
          .buttonCommonStyle(Color.Gray)
          .onClick(() => {
            this.selectedIdList = []
            this.isSelectMode = !this.isSelectMode
          })
        Button('+')
          .buttonCommonStyle(Color.Gray)
          .onClick(() => {
            // 新增联系人
            this.persons.push(new Person(getRandomName(), getRandomPhone()))
          })
      }
      .width('100%')
      .height(60)

      //列表
      List({ space: 10 }) {
        ForEach(this.persons, (person: Person) => {
          ListItem() {
            // 联系人
            ContactItem({
              person: person,
              currentExpandId: $currentExpandId,
              isSelectMode: this.isSelectMode,
              selectedIdList: $selectedIdList
            })
          }
        })
      }
      .width('100%')
      .layoutWeight(1)

      //按钮
      if (this.isSelectMode) {
        Button('删除')
          .buttonCommonStyle(Color.Red)
          .margin({ top: 10 })
          .onClick(() => {
            // 删除数组selectedIdList包含
            this.persons = this.persons.filter(person => !this.selectedIdList.includes(person.id))
          })
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#EFEFEF')
    .padding(10)
  }
}

@Component
struct ContactItem {
  @ObjectLink person: Person
  @State isExpand: boolean = false
  @Link @Watch('onExpandIdChange') currentExpandId: number
  @Prop isSelectMode: boolean
  @Link selectedIdList: number[]

  // 监听函数
  onExpandIdChange() {
    if (this.person.id != this.currentExpandId) {
      this.isExpand = false
    }
  }

  build() {
    Column() {
      Row({ space: 10 }) {
        // 复选框
        if (this.isSelectMode) {
          Toggle({ type: ToggleType.Checkbox })
            .onChange((value) => {
              if (value) {
                this.selectedIdList.push(this.person.id)
              } else {
                // 方法一：
                // this.selectedIdList = this.selectedIdList.filter(id => id != this.person.id)
                // 方法二：
                const index = this.selectedIdList.indexOf(this.person.id)
                this.selectedIdList.splice(index, 1)
              }
              console.log(`选中了${this.selectedIdList} ${value}`)
            })
        }
        //头像
        Image($r('app.media.img_user_avatar'))
          .width(40)
          .height(40)
        //姓名
        Text(this.person.name)
          .fontSize(20)
          .fontWeight(500)
        Blank()
        //收藏/未收藏切换
        Image(this.person.isStar ? $r('app.media.ic_star_filled') : $r('app.media.ic_star_empty'))
          .width(30)
          .height(30)
          .onClick(() => {
            this.person.isStar = !this.person.isStar
          })
      }
      .width('100%')
      .height(70)

      // 展开功能
      if (this.isExpand) {
        Divider().color(Color.Black)
        Text(`手机号码 ${this.person.phone}`)
          .height(50)
          .width('100%')
      }
    }
    .backgroundColor(Color.White)
    .padding(10)
    .borderRadius(10)
    .onClick(() => {
      this.currentExpandId = this.person.id
      this.isExpand = !this.isExpand
    })
  }
}

@Extend(Text)
function titleStyle() {
  .fontSize(30)
  .fontWeight(500)
}

@Extend(Button)
function buttonCommonStyle(color: ResourceColor) {
  .height(30)
  .backgroundColor(color)
}