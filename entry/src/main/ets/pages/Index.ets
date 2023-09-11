import router from '@ohos.router';
let msg:String="data from index"

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button('Next').onClick(()=>{
          console.log("here")
          router.pushUrl({
            url:'pages/SecondPage',
            params:{
              src:msg
            }
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}