# SwiftyMoment


| <img width="765" alt="스크린샷 2021-04-17 오후 12 37 14" src="https://user-images.githubusercontent.com/73557895/115100760-b5823280-9f79-11eb-8c05-d9e6e11236e8.png"> 	| <img width="337" alt="스크린샷 2021-04-17 오후 12 37 22" src="https://user-images.githubusercontent.com/73557895/115100759-b31fd880-9f79-11eb-9a5f-11b6102a381c.png"> 	|
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| Code                                                                                                                                                                  	| PreView                                                                                                                                                               	|

## Code
```swift
import SwiftUI
import SwiftyMoment

struct SwiftyMoment_Test: View {
    var testDate : Date = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
    
    var body: some View {
        VStack(spacing: 24){
            Text(SwiftyMoment(date: 1095379200 * 1000))
            Text(SwiftyMoment(date: testDate))
        }
    }
}
```

### How To Use

- You can use the Date type and the Unix time(Int) type.
- Unix time (Int) is based on ms, so if you want to use second as the picture above, you have to do * 1000.
