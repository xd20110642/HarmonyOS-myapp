"use strict";
struct Home extends   {
    constructor() { }
    pageTransition() {
        //     // 这个方法对replaceUrl无效，只能换成pushURL才生效
        // 定义页面进入的效果，向左侧滑出，时长为1000ms，无论页面栈发生push还是pop操作均可生效
            .slide(SlideEffect.Left);
    }
    renderNav() {
        ;
    }
    build() {
            .height('100%')
            .border({ width: 1 })
            .width('100%');
    }
}
//# sourceMappingURL=Home.js.map