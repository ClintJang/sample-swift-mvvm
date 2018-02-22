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

enum SampleSecondSections: Int, EnumCollection {
    case text = 0
    case image = 1
    
    static func build(_ rawValue:Int) -> SampleSecondSections {
        return SampleSecondSections(rawValue: rawValue) ?? .text
    }
    
    var name:String {
        get {
            var nameString = ""
            switch self {
            case .text:
                nameString = "text"
            case .image:
                nameString = "image"
            }
            return nameString
        }
    }
    
    func identifier() -> String {
        switch self {
        case .text:
            return "TextTableViewCell"
        case .image:
            return "ImageTableViewCell"
        }
    }
}

enum SampleSecondItems: Int, EnumCollection {
    case testCaseA = 0
    case testCaseB = 1
    case testCaseC = 2

    static func build(_ rawValue:Int) -> SampleSecondItems {
        return SampleSecondItems(rawValue: rawValue) ?? .testCaseA
    }
    
    var name:String {
        get {
            var nameString = ""
            switch self {
            case .testCaseA:
                nameString = "AAAAA"
            case .testCaseB:
                nameString = "BBBBB"
            case .testCaseC:
                nameString = "CCCCC"
            }
            return nameString
        }
    }
}

// MARK: - UITableViewDataSouce
extension SampleSecondController: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return SampleSecondSections.allRaws.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return SampleSecondItems.allRaws.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let section = SampleSecondSections.build(indexPath.section)
        let cell = tableView.dequeueReusableCell(withIdentifier: section.identifier(), for: indexPath)
        
        if section == .text {
            let textCell = cell as! TextTableViewCell
            let raw = SampleSecondItems.build(indexPath.row)
            textCell.leftLabel.text = raw.name
        } else if section == .image {
            
        } else {
            assert(false)
        }
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SampleSecondController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 20.0
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let sectionEnum = SampleSecondSections.build(section)

        let sectionView = { () -> UIView in
            let view = UIView()
            view.backgroundColor = UIColor.green
            view.frame = CGRect.init(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: 20.0)
            let label:UILabel = UILabel.init(frame: view.frame)
            label.text = sectionEnum.name
            label.textColor = UIColor.black
            view.addSubview(label)
            return view
        }()
        
        return sectionView
    }
}

