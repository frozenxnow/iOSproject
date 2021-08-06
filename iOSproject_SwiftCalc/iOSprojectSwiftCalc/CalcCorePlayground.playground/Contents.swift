import UIKit
import Foundation
import CalcCore

var calc = Operation(base: 3, operationNodes: [OperationNode(op: .plus, operand: 5), OperationNode(op: .multiply, operand: 2)]) // 3항 연산

let result = calc.mergeOperationNodes()


