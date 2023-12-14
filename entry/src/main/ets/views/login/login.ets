interface loginData {
  userName: string,
  passWord: number | string
}

import router from '@ohos.router'
import Dialog from '../../component/Dialog/Dialog'

@Component
export default struct Login {
  @State loginData: loginData = {
    userName: '',
    passWord: ''
  }
  @State message: string = '';
  dialogController: CustomDialogController = new CustomDialogController({
    builder: Dialog({
      message: this.message
    }),
    autoCancel: true,
    customStyle: false
  })

  handleLogin(): void {
    if (!this.loginData.userName) {
      this.message = '用户名不能为空'
      this.dialogController.open()
      return;
    }
    if (!this.loginData.passWord) {
      this.message = '密码不能为空';
      this.dialogController.open()
      return;
    }
    // router.pushUrl({
    //   url:'pages/Home'
    // })
    router.replaceUrl({
      url: 'pages/Home'
    })
  }

  pageTransition() {
    // 这个方法对replaceUrl无效，只能换成pushURL才生效
    // 定义页面退出时的效果，向左侧滑出，时长为1000ms，无论页面栈发生push还是pop操作均可生效
    PageTransitionExit({ type: RouteType.Push, duration: 1000 })
      .slide(SlideEffect.Right)
  }

  build() {
    Row() {
      Column() {
        Text('鸿蒙APP欢迎你')
        TextInput({ placeholder: '请输入用户名' })
          .onChange((value) => {
            this.loginData.userName = value;
          })
          .type(InputType.Normal)
          .margin({ top: 20, bottom: 20 })
          .width('80%')
        TextInput({ placeholder: '请输入密码' })
          .onChange((value) => {
            this.loginData.passWord = value;
          })
          .type(InputType.Password)
          .margin({ bottom: 20 })
          .width('80%')
        Button('登录')
          .type(ButtonType.Capsule)
          .width('80%')
          .onClick(this.handleLogin.bind(this))

      }
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}