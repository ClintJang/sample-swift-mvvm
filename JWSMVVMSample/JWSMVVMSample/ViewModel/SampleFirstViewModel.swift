//
//  SampleAViewModel.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 20..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

protocol SampleFirstProtocol {
    var title:String { get }
    var titleColor: UIColor { get }

    var description:String? { get }
    var descriptionBackgroundColor: UIColor { get }

    var buttonNormalName:String? { get }
    var buttonhighlightedName:String? { get }
    func move(completion:@escaping (Bool) -> Swift.Void)
}

public class SampleFirstViewModel: SampleFirstProtocol {
    
    public var title:String {
        return "Sample First Title"
    }
    public var titleColor: UIColor {
        return .purple
    }
    public var description:String? = "Sample First Description"
    public var descriptionBackgroundColor: UIColor {
        return .blue
    }
    public var buttonNormalName:String? = "Move Button"
    public var buttonhighlightedName:String? = ".. Clicked"

    public func move(completion:@escaping (Bool) -> Void) {
        print("\(#function)::success, move sample second")
        completion(true)
    }
}
