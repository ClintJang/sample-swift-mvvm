//
//  SampleSecondViewModel.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 19..
//  Copyright © 2018년 clint. All rights reserved.
//

import Foundation

protocol SampleSecondProtocol {
    var title:String { get }

    func back(completion:@escaping () -> Swift.Void)
}

public class SampleSecondViewModel: SampleSecondProtocol {
    public var title:String {
        return "Second .. 동적인 표현값과 고정적인 값.. 어디에 맞는 것일까?"
    }
    
    public func back(completion:@escaping () -> Void) {
        print(#function)
        completion()
    }
}
