import UIKit

enum Operator {
    case add, subtract, multiply, dividem, remainder
}
// 클래스 정의
class Calculator {
    
    func calculate(operation: Operator, firstNum: Double, secondNum: Double) -> Double {
        switch operation {
        case .add:
            return firstNum + secondNum
        case .subtract:
            return firstNum - secondNum
        case .multiply:
            return firstNum * secondNum
        case .dividem:
            if secondNum != 0 {
                return firstNum / secondNum
            } else {
                print("0을 나눌 순 없습니다.")
                
                return 0
            }
        case .remainder:
            return firstNum.truncatingRemainder(dividingBy: secondNum)
        }
    }
}
let calculator = Calculator()
