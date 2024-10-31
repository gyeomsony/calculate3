이 프로젝트에서는 두 가지 방식으로 계산기를 구현했다. 첫 번째 버전에서는 enum을 사용해 계산하고, 두 번째 버전에서는 프로토콜과 연산자 클래스를 통해 객체지향 방식으로 계산기를 구현했다.

## 첫 번째 계산기

첫 번째 버전은 Swift의 enum을 사용하여 계산기에서 사용할 연산자를 정의하고, 이걸 바탕으로 기본적인 덧셈, 뺄셈, 곱셈, 나눗셈, 나머지 연산을 수행하게된다.

### 주요 구성 요소

- `Operator Enum`: 가능한 연산자로 덧셈(`add`), 뺄셈(`subtract`), 곱셈(`multiply`), 나눗셈(`divide`), 나머지(`remainder`)를 정의한다.
- `Calculator Class`: `calculate` 메서드를 통해 연산자(enum 타입)와 두 개의 숫자를 받아 연산을 수행한다. 나눗셈에서 0으로 나눌 경우 예외 처리를 위해 `print`로 오류 메시지를 출력하고 기본값을 반환한다.

### 사용 방법

```swift
let calculator = Calculator()
let result = calculator.calculate(operation: .add, firstNum: 3, secondNum: 4)
print(result) // 7.0
```

-----------------------

# 계산기Lv3

계산기Lv3은 프로토콜과 클래스를 활용하여 객체지향 방식으로 구현한 계산기다. `Operation` 프로토콜로 일관성 있는 연산을 정의했고, 클래스를 연산자별로 분리했다.

## 주요 구성 요소

- `Operation Protocol` : 연산자에 대한 공통 인터페이스로, `operate` 메서드를 통해 두 숫자를 받아 계산 결과를 반환한다.
  
## **Operation Classes**:
- `AddOperation` : 덧셈 연산을 수행하는 클래스이다.
- `SubOperation` : 뺄셈 연산을 수행하는 클래스이다.
- `MulOperation` : 곱셈 연산을 수행하는 클래스이다.
- `DivOperation` : 나눗셈 연산을 수행하는 클래스이고, 0으로 나누는 경우 `0`을 반환하고 오류 메시지를 출력한다.

- `Calculator Class` : 특정 연산을 수행하는 기능을 제공하는 계산기 클래스이다. `Operation` 프로토콜을 준수하는 연산자를 설정해 계산을 수행하는 클래스이다.


## 사용 방법

```swift
import UIKit

// 덧셈 연산
let calculator = Calculator(operation: AddOperation())
var result = calculator.calculate(firstNum: 3, secondNum: 4)
print("덧셈 결과: \(result ?? 0)")

// 연산자 동적 변경
calculator.setOperation(inputOperator: "*")
result = calculator.calculate(firstNum: 5, secondNum: 4)
print("곱셈 결과: \(result ?? 0)")

// 결과 처리
if let result = result {
    print("결과: \(result)")
} else {
    print("error")
}
```
