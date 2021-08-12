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
    var operatorNodes: [OperationNode]
}


var calc = Operation(base: 3, operatorNodes: [OperationNode(op: .plus, operand: 5), OperationNode(op: .multiply, operand: 2)])
