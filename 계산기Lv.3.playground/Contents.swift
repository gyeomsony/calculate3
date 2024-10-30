import UIKit



// 프로토콜 정의로 일관성 유지,operate 메서드가 firstNum, secondNum을 받아 Double타입으로 반환해야 한다는 뜻.
protocol Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double
}

// 덧셈
class AddOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum + secondNum
    }
}
// 뺄셈
class SubOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}
//곱셈
class MulOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}
// 나눗셈
class DivOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        guard secondNum != 0 else {
            print("Can't divide by zero")
            return 0
        }
        return firstNum / secondNum
    }
}

class Calculator {
    var operation: Operation
    
    init(operation: Operation) {
        self.operation = operation
    }
    
    func calculator(firstNum: Double, secondNum: Double) -> Double {
        return operation.operate(firstNum: firstNum, secondNum: secondNum)
    }
}

// 덧셈 예시
let addOperation = AddOperation()


Calculator.calculator(firstNum: 10, secondNum: 20)
   
