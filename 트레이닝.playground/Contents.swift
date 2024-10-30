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

var stringValue: String?
print(stringValue)
stringValue = "Hello"
print(stringValue)

var intValue: Int? = 123
var floatValue: Float? = 123.45
var boolValue: Bool? = true

print(intValue)
print(floatValue)
print(boolValue)

print(intValue == 123)


struct Dog {
    var toy: String?
}

struct Person {
    var pet: Dog?
}

let peson1: Person? = nil
print(peson1?.pet?.toy)

let person2: Person? = Person(pet: nil)
print(person2?.pet?.toy)


let person3: Person? = Person(pet: Dog(toy: "ball"))
print(person3?.pet?.toy)


//클로저 옵서녈 체이닝

var optionalClosure: ((Int) -> Void)? = { value in
    print(value)
}
optionalClosure?(3)
