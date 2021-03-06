//
//  OptionsRow.swift
//  Eureka
//
//  Created by Martin Barreto on 2/23/16.
//  Copyright © 2016 Xmartlabs. All rights reserved.
//

import Foundation

open class OptionsRow<T: Equatable, Cell: CellType> : Row<T, Cell>, NoValueDisplayTextConformance where Cell: BaseCell, Cell: TypedCellType, Cell.Value == T {
    
    open var options: [T] {
        get { return dataProvider?.arrayData ?? [] }
        set { dataProvider = DataProvider(arrayData: newValue) }
    }
    open var selectorTitle: String?
    open var noValueDisplayText: String?
    
    required public init(tag: String?) {
        super.init(tag: tag)
    }
}
