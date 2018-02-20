//
//  ImagePresentable.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 19..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

protocol TextPresentable {
    var leftText: String { get }
    var leftTextColor: UIColor { get }
    var leftFont: UIFont { get }
    
    var rightText: String { get }
    var rightTextColor: UIColor { get }
    var rightFont: UIFont { get }
}

protocol ImagePresentable {
    var imageName: String { get }
}
