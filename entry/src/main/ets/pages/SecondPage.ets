import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'second page'
  @State src:string=router.getParams()?.['src']

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
        Blank()
        Button('Back').onClick(()=>{
          router.back()
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}