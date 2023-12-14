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
    { text:'123', number:0 },
    { text:'456', number:1 },
    { text:'789', number:2 },
  ]
  @State currentIndex:number=0;
  @Builder renderNav(){
    Flex(){
      ForEach(this.navList,item => {
        Row(){
          Text(item.text)
            .fontColor(this.currentIndex == item.number ? '#007DFF' : '#182431')
            .fontSize(10)
            .lineHeight(14)
            .fontWeight(500)
            .margin({ top: 3 })
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .backgroundColor('#ccc')
        .flexBasis('auto')
        .height(56)
        .width('33.3%')
        .onClick(() => {
          this.currentIndex=item.number;
        })

      })
    }
    .width('100%')
  }
  build(){
    Column(){
      Navigation(){
        Text('567')
        NavRouter(){
          Text('我是NavRouter')
          NavDestination(){
            Text('今天共有七节课').fontSize(30)
          }
        }
      }
      .toolBar(this.renderNav)
      .hideToolBar(false)
      .hideTitleBar(true)
    }
    .height('100%')
    .border({width:1})
    .width('100%')
  }
}