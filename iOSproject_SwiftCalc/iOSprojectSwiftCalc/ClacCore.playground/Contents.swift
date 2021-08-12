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
    
    func mergeOperationNodes() {
        let value = operationNodes.reduce(base, {
            (result: Double, elememt: OperationNode) in
            elememt.op.doCalc(result, elememt.operand)
        })
        print(value)
    }
}



