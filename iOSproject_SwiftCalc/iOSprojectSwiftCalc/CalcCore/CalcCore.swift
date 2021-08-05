//
//  CalcCore.swift
//  iOSprojectSwiftCalc
//
//  Created by 지원 on 2021/08/02.
//

import Foundation

enum Operator {
    case plus
    case minus
    case multiply
    case divide
}

struct OperationNode {
    var op: Operator
    var operand: Double
}

struct Operation {
    var base: Double
    var operationNode: [OperationNode]
}

