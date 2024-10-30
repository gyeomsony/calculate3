//
//  class.swift
//  
//
//  Created by 손겸 on 10/28/24.
//

import Foundation

class Calculator {
    var addOperation: AddOperation
    var substractOperation: SubstractOperation
    var multiplyOperation: MultiplyOperation
    var divideOperation: DivideOperation
    
    init(addOperation: AddOperation, substractOperation: SubstractOperation, multiplyOperation: MultiplyOperation, divideOperation: DivideOperation) {
        self.addOperation = addOperation
        self.substractOperation = substractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
    }
}

class AddOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum + secondNum
    
    }
}



class SubstractOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum - secondNum
    }
}



class MultiplyOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum * secondNum
    }
}



class DivideOperation {
    func operate(firstNum: Double, secondNum: Double) -> Double {
        return firstNum / secondNum
    }
}








