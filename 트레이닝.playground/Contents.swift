// 클래스 예시


import UIKit

//class Animal {
//    var feetCount: Int
//    let eyeCount: Int
//    var name: String
//    
//    init(feetCount: Int, eyeCount: Int, name: String) {
//        self.feetCount = feetCount
//        self.eyeCount = eyeCount
//        self.name = name
//    }
//    
//    func introduce() -> String {
//        return "이름: \(name), 발가락 갯수: \(feetCount), 눈갯수: \(eyeCount)"
//    }
//}

//var person = Animal(feetCount: 2, eyeCount: 2, name: "수강생")
//print(person.introduce())
//var cat = Animal(feetCount: 4, eyeCount: 2, name: "고양이")
//print(cat.introduce())

//class 손풍기 {
//    let company: String
//    var energy: Int
//    var isTurnOn: Bool
//    
//    init(company: String, energy: Int, inTurnOn: Bool) {
//        self.company = company
//        self.energy = energy
//        self.isTurnOn = inTurnOn
//    }
//    
//    func turnOn() {
//        isTurnOn = true
//        energy -= 10
//    }
//    
//    func turnOff() {
//        isTurnOn = false
//    }
//    
//    func charge() {
//        energy = 100
//    }
//    
//    func introduce() {
//        print("손풍기를 만든 회사는: \(company), 에너지: \(energy), 켜짐여부는: \(isTurnOn == true ? "켜짐" : "꺼짐" )입니다.")
//    }
//}
//
//let newDevice = 손풍기(company: "애플", energy: 50, inTurnOn: false)
//
//newDevice.introduce()
//newDevice.turnOn()
//newDevice.introduce()
//newDevice.turnOn()
//newDevice.introduce()
//newDevice.charge()
//newDevice.introduce()
//newDevice.turnOff()
//newDevice.introduce()


//class MobilePhone {
//    let company : String
//    var Iphone : Bool
//    var modelName : String
//    var apps : [String] = ["인터넷"]
//    var owner: Animal
//    
//    init(company: String, Iphone: Bool, modelName: String, owner: Animal) {
//        self.company = company
//        self.Iphone = Iphone
//        self.modelName = modelName
//        self.owner = owner
//    }
//    
//    func addApp(appName: String) {
//        apps.append(appName)
//    }
//    
//    func changeOnwer(newOwner: Animal) {
//        owner = newOwner
//        print("주인이 바뀌었어요")
//    }
//    
//    
//    }
//let myPhone = MobilePhone(company: "Apple",
//                          Iphone: true,
//                          modelName: "iphone se3",
//                          owner: Animal(feetCount: 3, eyeCount: 3, name: "외계인"))
//print(myPhone.owner.name)
//myPhone.addApp(appName: "내일배움캠프")
//print(myPhone.apps)


//-------------- 다음 강의 -------

//Struct 구조체

//struct Book {
//    let title: String
//    let author: String
//    let page: Int
//    var currentPage: Int
//    var isBookOpen: Bool = false
//    
//    mutating func openBook() {
//        isBookOpen = true
//    }
//    
//    mutating func closeBook() {
//        isBookOpen = false
//    }
//    
//    mutating func changeCurrentPage(newPage: Int) {
//        if newPage > page {
//            currentPage = page
//        } else {
//            currentPage = newPage
//        }
//    }
//}
//
//var swiftBook = Book(title: "swift", author: "gyeom", page: 100, currentPage: 3)
//
//print(swiftBook)
//swiftBook.openBook()
//print(swiftBook.isBookOpen)
//
//swiftBook.changeCurrentPage(newPage: 10)
//print(swiftBook)
//
//swiftBook.changeCurrentPage(newPage: 9999)
//print(swiftBook)
//
//swiftBook.closeBook()
//print(swiftBook)


//헬스장

//struct Gym {
//    var name: String
//    var owner: String
//    var size: Int
//    var machineCount: Int
//    var userCount: Int = 0
//    var isOpengym: Bool = false
//    
//    mutating func openGym() {
//        isOpengym = true
//    }
//    
//    mutating func closeGym() {
//        isOpengym = false
//    }
//    
//    mutating func userCheckIn() {
//        if isOpengym == true {
//            print("회원님이 입장했습니다")
//            userCount += 1
//        } else {
//            print("회원님이 오셨지만 헬스장이 열지 않았습니다")
//        }
//        
//    }
//    
//    mutating func userCheckOut() {
//        userCount -= 1
//    }
//}
//
//var bucklegym = Gym(name: "buckle",
//                    owner: "정지광",
//                    size: 200,
//                    machineCount: 50)
//
//print(bucklegym)
//bucklegym.userCheckIn()
//bucklegym.openGym()
//bucklegym.userCheckIn()
//print(bucklegym)
//bucklegym.name = "버클다운짐"
//print(bucklegym)


//--------------------------------------

//import UIKit
//
//// 공통 프로토콜 정의
//protocol Operation {
//    func operate(firstNum: Double, secondNum: Double) -> Double
//}
//
//// 덧셈 클래스
//class AddOperation: Operation {
//    func operate(firstNum: Double, secondNum: Double) -> Double {
//        return firstNum + secondNum
//    }
//}
//
//// 뺄셈 클래스
//class SubOperation: Operation {
//    func operate(firstNum: Double, secondNum: Double) -> Double {
//        return firstNum - secondNum
//    }
//}
//
//// 곱셈 클래스
//class MulOperation: Operation {
//    func operate(firstNum: Double, secondNum: Double) -> Double {
//        return firstNum * secondNum
//    }
//}
//
//// 나눗셈 클래스
//class DivOperation: Operation {
//    func operate(firstNum: Double, secondNum: Double) -> Double {
//        guard secondNum != 0 else {
//            print("0으로 나눌 수 없습니다.")
//            return 0
//        }
//        return firstNum / secondNum
//    }
//}
//
//// Calculator 클래스
//class Calculator {
//    private var operation: Operation?  // Operation 프로토콜을 채택한 연산 클래스 저장
//    
//    // 외부에서 연산 클래스를 설정
//    func setOperation(_ operation: Operation) {
//        self.operation = operation
//    }
//    
//    // 설정된 연산 클래스를 사용하여 계산 수행
//    func calculate(firstNum: Double, secondNum: Double) -> Double {
//        guard let operation = operation else {
//            print("연산이 설정되지 않았습니다.")
//            return 0
//        }
//        return operation.operate(firstNum: firstNum, secondNum: secondNum)
//    }
//}
//let calculator = Calculator()
//
//// 덧셈 연산 설정
//calculator.setOperation(AddOperation())
//print(calculator.calculate(firstNum: 5, secondNum: 3))  // 출력: 8.0
//
//// 뺄셈 연산 설정
//calculator.setOperation(SubOperation())
//print(calculator.calculate(firstNum: 5, secondNum: 3))  // 출력: 2.0
//
//// 곱셈 연산 설정
//calculator.setOperation(MulOperation())
//print(calculator.calculate(firstNum: 5, secondNum: 3))  // 출력: 15.0
//
//// 나눗셈 연산 설정
//calculator.setOperation(DivOperation())
//print(calculator.calculate(firstNum: 5, secondNum: 3))  // 출력: 1.666...

//----------------------------------------

//enum Directions {
//    case north, south, east, west
//    
//    func toString() -> String {
//        switch self {
//        case .north: return "North"
//        case .south: return "South"
//        case .east: return "East"
//        case .west: return "West"
//        }
//    }
//}
//
//var direction = Directions.east
//var direction2: Directions = .south
//
//print(direction)
//print(direction2.toString())
//
//
//enum Rainbow: Int {
//    case red, orange, yellow, green, blue, indigo, violet
//}
//
//var rainbow: Rainbow
//rainbow = .green
//print(rainbow.rawValue)
//
//var rainbow2 = Rainbow(rawValue: 100)
//print(rainbow2)
//
//enum Beverage {
//    case coffee(coffeeName: String, size: Int),
//         tea(teamName: String, isIced: Bool),
//         juice(juiceName: String, size: Int)
//    
//}
//
//var myDrink = Beverage.coffee(coffeeName: "Cappuccino", size: 100)
//myDrink = Beverage.tea(teamName: "Black Tea", isIced: true)
//
//
//switch myDrink {
//case .coffee(let coffeeName, let size):
//    print("제가 주문한 커피는 \(coffeeName)이고, 사이즈는 \(size)입니다.")
//case .tea(let teamName, let isIced):
//    print("제가 주문한 tea는 \(teamName)이고, \(isIced ? "얼음 있음." : "얼음 없음")입니다.")
//case .juice(let juiceName, let size):
//    print("제가 주문한 주스는 \(juiceName)이고, \(size)입니다.")
//}

//-------------

//struct AppleDevice {
//    var modelName: String
//    let releseYear: Int
//    var price: Int
//    var owner: String {
//        willSet {
//            print("새로운 주인으로 변경 될 예정입니다 새로운 주인은 \(newValue)입니다.")
//        }
//        didSet {
//            print("새로운 주인으로 변경되었습니다. 전 주인은 \(oldValue)입니다.")
//        }
//    }
//    
//    
//    var isNew: Bool {
//        if releseYear >= 2020 {
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    static var companyName = "Apple"
//    
//    mutating func sellDeivce(newOwner: String, price: Int) {
//        self.price = price
//        self.owner = newOwner
//    }
//    
//    static func printCompanyName() {
//        print(companyName)
//    }
//}
//
//var myPhone = AppleDevice(modelName: "iPhone 16",
//                          releseYear: 2024,
//                          price: 10000,
//                          owner: "김손겸")
//print(myPhone)
//myPhone.sellDeivce(newOwner: "조혜수", price: 30000)
//
//print(myPhone)

//var stringValue: String?
//print(stringValue)
//stringValue = "Hello"
//print(stringValue)
//
//var intValue: Int? = 123
//var floatValue: Float? = 123.45
//var boolValue: Bool? = true
//
//print(intValue)
//print(floatValue)
//print(boolValue)
//
//print(intValue == 123)
//
//
//struct Dog {
//    var toy: String?
//}
//
//struct Person {
//    var pet: Dog?
//}
//
//let peson1: Person? = nil
//print(peson1?.pet?.toy)
//
//let person2: Person? = Person(pet: nil)
//print(person2?.pet?.toy)
//
//
//let person3: Person? = Person(pet: Dog(toy: "ball"))
//print(person3?.pet?.toy)
//
//
////클로저 옵서녈 체이닝
//
//var optionalClosure: ((Int) -> Void)? = { value in
//    print(value)
//}
//optionalClosure?(3)


// Animal이라는 부모 클래스
//class Animal {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func move() {
//        print("\(name)가 걸어갑니다.")
//    }
//}
//
//// Dog이라는 자식 클래스가 Animal을 상속받음
//class Dog: Animal {
//    func bark() {
//        print("\(name): 왈! 왈!")
//    }
//}

// 사용 예시
//let myDog = Dog(name: "소니")
//myDog.move()    // Animal의 move() 메서드를 사용함
//myDog.bark()    // Dog만의 bark() 메서드를 사용함



//class Car {  // Car라는 설계도를 만들고
//    var color: String = "Red"  // 자동차의 속성
//    func drive() { print("Vroom!") }  // 자동차의 동작
//}
//
//let myCar = Car()  // 실제 자동차인 객체 'myCar'를 만든다.
//myCar.drive()  // myCar가 움직인다.


//class Calculator {
//    func add(_ a: Double, _ b: Double) -> Double {
//        return a + b  // 단순히 덧셈 결과를 반환한다.
//    }
//}
//
//let calc = Calculator()
//print(calc.add(5, 3))  // 내부 계산 과정은 신경 쓰지 않고, 덧셈 기능만 사용한다.

// 메서드 오버라이딩
//class Animal {
//    func makeSound() {
//        print("어떠한 소리")
//    }
//}
//
//class Dog: Animal {
//    override func makeSound() {
//        print("왈왈랄왈!!!!")
//    }
//}
//
//class Cat: Animal {
//    override func makeSound() {
//        print("오징어 사와")
//    }
//}
//
//let myDog: Animal = Dog()
//let myCat: Animal = Cat()
//
//myDog.makeSound()
//myCat.makeSound()


//메서드 오버로딩

//class Calculator {
//    // 같은 이름의 메서드지만 서로 다른 매개변수로 정의한다.
//    func add(_ a: Double, _ b: Double) -> Double {
//        return a + b
//    }
//
//    func add(_ a: Int, _ b: Int) -> Int {
//        return a + b
//    }
//}
//
//// 사용 예시
//let calc = Calculator()
//let result1 = calc.add(2.5, 3.5)  // Double 덧셈
//let result2 = calc.add(2, 3)      // Int 덧셈


//class 친구야 {
//    private var 비밀: String = "이건 비밀이야"
//    
//    func 비밀접근가능() -> String {
//        return 비밀
//        
//    }
//}
//
//let 말해줘 = 친구야()
////print(말해줘.비밀)
//print(말해줘.비밀접근가능())

//---------------------

/*
 할인 정책 만들기
 함수를 만들고 매개변수(값,할인대상)와 타입을 설정해준다
 만약 할인타입이 쿠폰일 경우 10% 할인을 해주고
 군인일 경우 50% 할인을 해주는 코드를 짜보자.
 그 외에는 할인이 없다
 */

//class priceCalculrator {
//    func calculrator(price: Double, discountType: String) -> Double {
//        if discountType == "coupon" {
//            return price * 0.9
//        } else if discountType == "soldier" {
//            return price * 0.5
//        } else {
//            return price
//        }
//    }
//}
//calculator라는 PriceCalculator 클래스의 인스턴스를 생성하고,피자집이라는 가정을 한다.
//let calculator = priceCalculrator()
//let pizzaPrice = 10000
//
//// 쿠폰할인 적용
//let couponDiscountPrice = calculator.calculrator(price: Double(pizzaPrice), discountType: "coupon")
//print("쿠폰 할인 가격은 \(couponDiscountPrice)입니다")
//
//// 군인 할인 적용
//let militaryDiscount = calculator.calculrator(price: Double(pizzaPrice), discountType: "soldier")
//print("군인의 할인 가격은 \(militaryDiscount)입니다")
//
//// 할인 없는 경우
//let defultPrice = calculator.calculrator(price: Double(pizzaPrice), discountType: "none")
//print("당신의 가격은 \(defultPrice)입니다")


//protocol DiscountPolicy {
//    func discount(to price: Double) -> Double
//}
//// 쿠폰할인
//class CouponDiscount: DiscountPolicy {
//    func discount(to price: Double) -> Double {
//        return price * 0.9
//    }
//}
//// 군인할인
//class MilitaryDiscount: DiscountPolicy {
//    func discount(to price: Double) -> Double {
//        return price * 0.5
//    }
//}
//// 할인없음
//class DefaultPrice: DiscountPolicy {
//    func discount(to price: Double) -> Double {
//        return price
//    }
//}
//// 할인 정책 적용해서 최종 가격 알려주는 기능
//class CalculatorPrice {
//    func calculate(to price: Double, discount: DiscountPolicy) -> Double {
//        return discount.discount(to: price)
//    }
//}
//
//// 인스턴스 생성
//let calculator = CalculatorPrice()
//let couponDiscount = CouponDiscount()
//// 실행
//let priceDiscountCoupon = calculator.calculate(to: 10000, discount: couponDiscount)
//
//print("쿠폰 할인가격은 \(priceDiscountCoupon)원 입니다.")

//부모 클래스
//class 새 {
//    func fly() {
//        print("새가 날고 있습니다")
//    }
//}
////자식클래스
//class 펭귄: 새 {
//    override func fly() {
//        print("펭귄은 날 수 없습니다")
//    }
//}
////인스턴스 생성
//let bird = 새()
//let peng = 펭귄()
//// override로 변경은 되지만 이러면 LSP에 어긋난다.
//bird.fly()
//peng.fly()

//// 프로토콜로 비행가능 여부를 판단
//protocol Flyable {
//    func fly()
//}
//// 기본 구현
//class 새 {}
//// 참새는 날수 있어 프로토콜 적용
//class 참새: 새, Flyable {
//    func fly() {
//        print("참새가 날고 있습니다")
//    }
//}
//// 펭귄은 날수 없어 프로토콜을 채택하지 않음
//class 펭귄: 새 {
//    
//}
//
//// 인스턴스 생성
//let bird = 참새()
//bird.fly()     // 출력됨
//
//let peng = 펭귄()
//// 프로토콜 채택하지 않아서 출력이 안됨


//protocol Printer {
//    func printDocument()
//    func scanDocument()
//}
//
//class InkPrinter: Printer {
//    func printDocument() {
//        print("프린터기가 복사 중 입니다.")
//    }
//    func scanDocument() {
//        print("프린터기가 스캔 중 입니다.")
//    }
//}
//
//let printing = InkPrinter()
//printing.printDocument()
//printing.scanDocument()

//복사 프로토콜
//protocol DocumentPrinter {
//    func printDocument()
//}
////스캔 프로토콜
//protocol DocumentScanner {
//    func scanDocument()
//}
//
//class InkPrinter: DocumentPrinter {
//    func printDocument() {
//        print("문서를 복사하는 중 입니다.")
//    }
//}
//
//class ScanPrinter: DocumentScanner {
//    func scanDocument() {
//        print("문서를 스캔하는 중 입니다.")
//    }
//}
//
//let printing = InkPrinter()
//printing.printDocument()


//DIP 안 좋은 예시
//class 전구 {
//    func 켜다() {
//        print("전구를 켰습니다.")
//    }
//    func 끄다() {
//        print("전구를 껐습니다.")
//    }
//}
//
//class Switch {
//    private let 전구: 전구
//    
//    init(전구: 전구) {
//        self.전구 = 전구
//    } // 스위치가 전구를 직접 제어
//    func toggle() {
//        전구.켜다()
//    }
//}
//let 전구스위치 = 전구()
//전구스위치.켜다()


//프로토콜 생성
protocol 전환가능 {
    func turnOn()
    func turnOff()
}
//기존 전구 전환
class 전구: 전환가능 {
    func turnOn() {
        print("전구가 켜졌습니다.")
    }
    func turnOff() {
        print("전구가 꺼졌습니다.")
    }
}
//팬 기능 추가!
class 팬: 전환가능 {
    func turnOn() {
        print("팬이 켜졌습니다. 위이이잉~")
    }
    func turnOff() {
        print("팬이 꺼졌습니다. 탁.")
    }
}
class 전환 {
    private let 기계: 전환가능
    
    init(기계: 전환가능) {
        self.기계 = 기계
    }
    
    func toggle() {
        기계.turnOn() // 이제 전환은 전환가능 프로토콜에 의존하게 됨.
    }
}
//인스턴스 생성
let 전구키기 = 전구()
let 팬켜기 = 팬()

전구키기.turnOn()
팬켜기.turnOn()
팬켜기.turnOff()
