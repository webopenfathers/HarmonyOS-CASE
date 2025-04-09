// 导入axios
import axios from '@ohos/axios'

// 创建axios实例
const instance = axios.create({
  baseURL: 'http://192.168.0.110:3000',
  timeout: 1000
})

// 接口声明
interface Data {
  data: string,
  code: number,
  message: string
}

interface Response {
  data: Data
}

interface Params {
  phone: string
  code?: string
}


@Entry
@Component
struct AxiosPage {
  @State phone: string = ''
  @State code: string = ''

  build() {
    Column({ space: 40 }) {

      TextInput({ placeholder: '请输入手机号码', text: this.phone })
        .type(InputType.PhoneNumber)
        .onChange((value) => {
          this.phone = value;
        })
      Row({ space: 10 }) {
        TextInput({ placeholder: '请输入验证码', text: this.code })
          .type(InputType.Number)
          .layoutWeight(1)
          .onChange((value) => {
            this.code = value;
          })

        Button('发送验证码')
          .onClick(() => {
            const params: Params = { phone: this.phone }
            instance.get('/word/user/code', { params })
              .then((response: Response) => {
                this.code = response.data.data
              })
              .catch((error: Response) => {
                console.log(error.data.message)
              })
          })
      }
      .width('100%')

      Button('登录')
        .width('90%')
        .onClick(async () => {
          try {
            const params: Params = {
              phone: this.phone,
              code: this.code
            }
            let response: Response = await instance.post('/word/user/login', params)
            console.log(response.data.data)
          } catch (error) {
            console.log(error)
          }
        })
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding(20)
  }
}