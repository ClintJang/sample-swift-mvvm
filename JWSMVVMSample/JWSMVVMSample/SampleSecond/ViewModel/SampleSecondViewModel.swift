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
        return "Sample Second 작업? 고민중.."
    }
    
    public func back(completion:@escaping () -> Void) {
        print(#function)
        completion()
    }
}
