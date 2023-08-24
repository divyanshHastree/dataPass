//
//  SecondViewController.swift
//  dataPassUsingDelegate
//
//  Created by Hastree on 24/08/23.
//

import UIKit

protocol dataSendMainController{
    func data(UserName : String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet weak var dataSendBtn : UIButton!
    var delegate : dataSendMainController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func dataSend(){
        delegate?.data(UserName: nameTextField.text!)
        navigationController?.popViewController(animated: true)
    }
    

}
