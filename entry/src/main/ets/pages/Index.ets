import Login from '../views/login/login'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Login()
    }
    .height('100%')
    .width('100%')
  }
}