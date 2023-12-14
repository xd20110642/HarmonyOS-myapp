@Entry
@Component
struct Home {
  pageTransition(){
    //     // 这个方法对replaceUrl无效，只能换成pushURL才生效
    // 定义页面进入的效果，向左侧滑出，时长为1000ms，无论页面栈发生push还是pop操作均可生效
    PageTransitionEnter({ type: RouteType.None, duration: 1000 })
      .slide(SlideEffect.Left)
  }
build(){
  Text('欢迎来到home页面')
}
}