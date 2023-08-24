//
//  NumberViewController.swift
//  dataPassUsingDelegate
//
//  Created by Hastree on 24/08/23.
//

import UIKit

protocol sendNumberDelegate{
    func data1(number : String)
}

class NumberViewController: UIViewController {
    

    @IBOutlet weak var numberTextField : UITextField!
    @IBOutlet weak var numberButton : UIButton!
    var delegate:sendNumberDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionNumberButton(){
        delegate?.data1(number: numberTextField.text!)
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
