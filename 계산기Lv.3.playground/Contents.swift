import UIKit



// 프로토콜 정의로 일관성 유지,operate 메서드가 firstNum, secondNum을 받아 Double타입으로 반환해야 한다는 뜻.
protocol Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double
}

// 덧셈
class AddOperation: Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum + secondNum
    }
}
// 뺄셈
class SubOperation: Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}
//곱셈
class MulOperation: Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}
// 나눗셈
class DivOperation: Operation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        guard secondNum != 0 else {
            print("Can't divide by zero")
            return 0
        }
        return firstNum / secondNum
    }
}
// 내가 이걸 왜 만들었더라...?
// 아! 이거 프로토콜로 구현한걸 받아서 실행하기 위해 했다.
class Calculator {
    var operation: Operation? // 오퍼레이션은 프로토콜 오퍼레이션을 따르는데 값이 nil 일수도 있어서 옵셔널로 했다.
    
    // 초기화 메서드를 한건 Calculator가 실행될 때 어떤 연산을 할 지 정하려고 하는 거
    init(operation: Operation) {
        self.operation = operation
    }
    // calculator 실행 조건은 operation이 닐이 아닐 때 operate 연산작업을 해당넘에 맞게 진행한다.
    func calculator(firstNum: Double, secondNum: Double) -> Double? {

        return operation?.operate(firstNum: firstNum, secondNum: secondNum)
    }
}

// 덧셈 예시
var result: Double?
let addOperation = AddOperation()
let subOperation = SubOperation()
var sonCalculator = Calculator(operation: addOperation)

result = sonCalculator.calculator(firstNum: 3, secondNum: 4)
print("\(result)")

sonCalculator.operation = SubOperation()
result = sonCalculator.calculator(firstNum: 24, secondNum: 4)
print("\(result)")

// 입력받은 연산자에 따른 분기처리
var inputOperator: String {
    return "*"
}

sonCalculator.operation = {
    switch inputOperator {
    case "+", "더하기", "add":
        return AddOperation()
    case "-", "빼기", "sub":
        return SubOperation()
    case "*", "곱하기", "mul":
        return MulOperation()
    case "/", "나누기", "div":
        return DivOperation()
        
    default:
        return nil
        
    }
}()
// 값 예시
result = sonCalculator.calculator(firstNum: 5, secondNum: 4)
print("\(result)")
if let result = result {
    print(result)
} else {
    print("error")
}
  

//if let은 nil이 아닐경우를 먼저 실행하기 때문에 첫 프린트에는 닐이 아닌경우를 먼저 기입하고 else 다음이 닐일경우로 해줘야한다.


//발생했던 오류 Cannot assign value of type '() -> any Operation' to type 'any Operation'
//처음에는 중괄호로만 묶여있어서 반환하는게 함수타입이었고, 클로저 뒤에 소괄호를 붙여 객체를 만드는 걸로 바꿨다. 인스턴스를 반환하는 클로저이기 때문에 ()를 붙였어야 했다.



// 기존에 원래 쓰던 스위치 코드
//switch inputOperator {
//case "+", "더하기", "add":
//    sonCalculator.operation = AddOperation()
//case "-", "빼기", "sub":
//    sonCalculator.operation = SubOperation()
//    
//    
//default:
//    <#code#>
//}

//옵셔널이 아닌거에 옵셔널을 넣어서 nil 이 들어가는 경우가 없어야함. 그래서 guard let을 이용해서 넣은 것
//        guard let operation = self.operation else {
//            print("이거 넣으면 안된다...")
//            return 0
//        }
