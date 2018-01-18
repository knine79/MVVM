//
//  ViewController.swift
//  MVVM
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController { // View
    var viewModel: GreetingViewModel! {
        didSet {
            viewModel.greetingDidChange = { [unowned self](viewModel)->() in
                self.label.text = viewModel.greeting
            }
        }
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func didTapButton(_ sender: Any) {
        viewModel.showGreeting()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

