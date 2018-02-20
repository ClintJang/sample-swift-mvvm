//
//  SampleSecondController.swift
//  JWSMVVMSample
//
//  Created by Clint on 2018. 2. 19..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

protocol SampleSecondControllerProtocol {
    
}

class SampleSecondController : UIViewController, SampleSecondControllerProtocol {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
