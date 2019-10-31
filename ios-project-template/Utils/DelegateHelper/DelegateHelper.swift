//
//  DelegateHelper.swift
//  DelegateHelper
//
//  Created by keisme on 2019/10/17.
//  Copyright © 2019 keisme. All rights reserved.
//

import Foundation

class DelegateHelper<Input, Output> {
    
    private var callback: ((Input) -> Output?)?
    
    func delegate<T: AnyObject>(on target: T, callback: ((T, Input) -> Output)?) {
        self.callback = { [weak target] input in
            guard let target = target else { return nil }
            return callback?(target, input)
        }
    }
    
    func call(_ input: Input) -> Output? {
        return callback?(input)
    }
}

extension DelegateHelper where Input == Void {

    func call() -> Output? {
        return call(())
    }
}
