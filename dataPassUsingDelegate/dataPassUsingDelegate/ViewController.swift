//
//  ViewController.swift
//  dataPassUsingDelegate
//
//  Created by Hastree on 24/08/23.
//

import UIKit

class ViewController: UIViewController,dataSendMainController, sendNumberDelegate {
    
    

    @IBOutlet weak var dataReceieveLbl : UILabel!
    @IBOutlet weak var nextPageBtn : UIButton!
    @IBOutlet weak var numberInputLbl : UILabel!
    @IBOutlet weak var numberInputButton : UIButton!
    
    func data(UserName: String) {
        dataReceieveLbl.text = UserName
    }
    
    func data1(number: String) {
        numberInputLbl.text = number
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPage(){
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func actionNumberInputButton(){
        let vc = storyboard?.instantiateViewController(identifier: "NumberViewController") as! NumberViewController
        vc.delegate=self
        navigationController?.pushViewController(vc, animated: true)
    }

}

