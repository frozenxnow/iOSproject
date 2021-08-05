import UIKit
import Foundation

enum Operator {
    case plus
    case minus
    case multiply
    case divide
    
    var doCalc: (Double, Double) -> Double {
        switch self {
            case .plus:
                return (+)
            case .minus:
                return (-)
            case .multiply:
                return (*)
            case .divide:
                return (/)
        }
    }
}

struct OperationNode {
    var op: Operator
    var operand: Double
}

struct Operation {
    var base: Double
    var operationNodes: [OperationNode]
    
    // Operator 계산하는 function
    func mergeOperationNodes() {
        let value = operationNodes.reduce(base, {
            (result: Double, element: OperationNode) in
            element.op.doCalc(result, element.operand)
        })
        print(value)
    }
}



//var calc = Operation(base: 3, operationNodes: [OperationNode(op: .plus, operand: 5), OperationNode(op: .multiply, operand: 2)]) // 3항 연산
//
//let result = calc.mergeOperationNodes()


