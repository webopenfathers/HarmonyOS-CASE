// 导入自定义组件
import { SwitchButton } from './SwitchButton';

@Entry
@Component
struct LightPage {
  @State isOn: boolean = false;

  build() {
    Column({
      space: 20
    }) {
      if (this.isOn) {
        Image('pages/custom/light/images/img_light.png').height(300).width(300).borderRadius(20)
      } else {
        Image('pages/custom/light/images/img_dark.png').height(300).width(300).borderRadius(20)
      }

      Row({
        space: 50
      }) {
        SwitchButton({color:Color.Red})
          .onClick(() => {
            this.isOn = false
          })

        SwitchButton({color:Color.Green})
          .onClick(() => {
            this.isOn = true
          })
      }
    }.width('100%').height('100%').justifyContent(FlexAlign.Center)
  }
}



