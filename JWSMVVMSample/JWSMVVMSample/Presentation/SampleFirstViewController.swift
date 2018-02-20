//
//  SampleAViewController.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 20..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

protocol SampleFirstViewControllerProtocol {
    var viewModel: SampleFirstViewModel { get set }
    func configure()
}

/**
 This is a sample for understanding the minimal ViewModel functionality.
 */
class SampleFirstViewController: UIViewController, SampleFirstViewControllerProtocol {

    var viewModel = SampleFirstViewModel()
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    @IBAction func showNextSample(_ sender: Any) {
        viewModel.move() { isSuccess in
            if isSuccess {
                // move Sample Second
                print("\(#function)::move sample second")
            }
        }
    }
    
    func configure() {
        titleLabel.text = viewModel.title
        titleLabel.textColor = viewModel.titleColor
        
        descriptionLabel.text = viewModel.description
        descriptionLabel.backgroundColor = viewModel.descriptionBackgroundColor
        
        moveButton.setTitle(viewModel.buttonNormalName, for: .normal)
        moveButton.setTitle(viewModel.buttonhighlightedName, for: .highlighted)
    }
}
