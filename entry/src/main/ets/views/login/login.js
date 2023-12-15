import router from '@ohos.router';
import Dialog from '../../component/Dialog/Dialog';
export default struct Login extends  {
    constructor() { }
    handleLogin() {
        if (!this.loginData.userName) {
            this.message = '用户名不能为空';
            this.dialogController.open();
            return;
        }
        if (!this.loginData.passWord) {
            this.message = '密码不能为空';
            this.dialogController.open();
            return;
        }
        // router.pushUrl({
        //   url:'pages/Home'
        // })
        router.replaceUrl({
            url: 'pages/Home'
        });
    }
    pageTransition() {
        // 这个方法对replaceUrl无效，只能换成pushURL才生效
        // 定义页面退出时的效果，向左侧滑出，时长为1000ms，无论页面栈发生push还是pop操作均可生效
            .slide(SlideEffect.Right);
    }
    build() {
            .width('100%')
            .justifyContent(FlexAlign.Center);
    }
}
//# sourceMappingURL=login.js.map