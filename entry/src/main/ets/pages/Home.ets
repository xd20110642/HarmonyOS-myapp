interface NavObj{
  text:string,
  number:number
}
@Entry
@Component
struct Home {
  pageTransition(){
    //     // 这个方法对replaceUrl无效，只能换成pushURL才生效
    // 定义页面进入的效果，向左侧滑出，时长为1000ms，无论页面栈发生push还是pop操作均可生效
    PageTransitionEnter({ type: RouteType.None, duration: 1000 })
      .slide(SlideEffect.Left)
  }
  @State navList:Array<NavObj>=[
    { text:'首页', number:0 },
    { text:'个人中心', number:1 },
    { text:'发现', number:2 },
  ]
  @State currentIndex:number=0;
  @Builder renderNav(){
    Tabs({barPosition:BarPosition.End}){
      ForEach(this.navList,item => {
        // 在TabContent定义路由
        TabContent(){
          Text(item.text)
            .fontSize(30)
            .width('100%')
            .height('100%')
        }
        .tabBar(item.text)
      })
    }
    .width('100%')
    // .height('100%')
  }
  build(){
    Column(){
      this.renderNav()
    }
    .height('100%')
    .border({width:1})
    .width('100%')
  }
}