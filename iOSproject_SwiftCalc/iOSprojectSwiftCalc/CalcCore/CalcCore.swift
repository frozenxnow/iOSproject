//
//  CalcCore.swift
//  iOSprojectSwiftCalc
//
//  Created by 지원 on 2021/08/12.
//

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
            (result: Double, element:OperationNode) in
            element.op.doCalc(result, element.operand)
        })
        print(value)
    }
}

