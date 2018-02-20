//
//  SampleSecondController.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 19..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

protocol SampleSecondControllerProtocol {
    var viewModel:SampleSecondViewModel { get set }
    func configure()
}

class SampleSecondController : UIViewController, SampleSecondControllerProtocol {
    var viewModel = SampleSecondViewModel()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    @IBAction func onBack(_ sender: Any) {
        viewModel.back {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func configure() {
        titleLabel.text = viewModel.title
    }
}


// MARK: - UITableViewDataSouce
extension SampleSecondController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SampleSecondController: UITableViewDelegate {
}
