import UIKit

enum Operator {
    case add, subtract, multiply, divide, remainder
}

class Calculator {
    
    func calculate(operation: Operator, firstNum: Double, secondNum: Double) -> Double {
        switch operation {
        case .add:
            return firstNum + secondNum
        case .subtract:
            return firstNum - secondNum
        case .multiply:
            return firstNum * secondNum
        case .divide:
            // 0으로 나누려고 할 경우
            if secondNum != 0 {
                return firstNum / secondNum
            } else {
                print("0으로 나눌 수 없습니다.")
                return 0
            }
        case .remainder:
            return firstNum.truncatingRemainder(dividingBy: secondNum)
        }
    }
}
// 인스턴스생성 : calculate 클래스를 사용하기 위함
// 정의한 클래스를 호출한다
let calculator = Calculator()
// 선언된 인스턴스를 통해서 calculate 함수 호출
let addResult = calculator.calculate(operation: .add, firstNum: 20, secondNum: 10)
print("결과: \(addResult)")
let subtract = calculator.calculate(operation: .subtract, firstNum: 20, secondNum: 10)
print("결과: \(subtract)")
let multiply = calculator.calculate(operation: .multiply, firstNum: 20, secondNum: 10)
print("결과: \(multiply)")
let divide = calculator.calculate(operation: .divide, firstNum: 30, secondNum: 0)
print("결과: \(divide)")
let result = calculator.calculate(operation: .remainder, firstNum: 20, secondNum: 3)
print("결과: \(result)")


