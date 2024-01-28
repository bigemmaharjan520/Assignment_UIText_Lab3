//
//  ViewController.swift
//  Bigem_Maharjan_Assignment_Lab3_UIText
//
//  Created by user240741 on 1/27/24.
//

import UIKit

class ViewController: UIViewController {

    var missingInfo : String = "Complete the missing info!";
    var success : String = "Successfully Submitted!";
    
    @IBOutlet var FirstName: UITextField!
    
    @IBOutlet var LastName: UITextField!
    
    @IBOutlet var Country: UITextField!
    
    @IBOutlet var Age: UITextField!
    
    @IBOutlet var AllOutput: UITextView!
       
    @IBOutlet var MessageLabel: UILabel!
    
    //Add Button
    @IBAction func AddUser(_ sender: Any) {
        if(FirstName.text!.isEmpty){
            errorSubmit()
        }else if (LastName.text!.isEmpty){
            errorSubmit()
        }else if(Country.text!.isEmpty){
            errorSubmit()
        }else if (Age.text!.isEmpty){
            errorSubmit()
        }else {
            AllOutput.text = "Full Name:  \(FirstName.text!) \(LastName.text!) \n" + "Country:  \(Country.text!) \n" + "Age:  \(Age.text!)"
        }
    }
    
    //Submit Button
    @IBAction func SubmitForm(_ sender: Any) {
        if(FirstName.text!.isEmpty){
            errorSubmit()
        }else if (LastName.text!.isEmpty){
            errorSubmit()
        }else if(Country.text!.isEmpty){
            errorSubmit()
        }else if (Age.text!.isEmpty){
            errorSubmit()
        }else {
            successSubmit()
        }
    }
    
    //Clear Button
    @IBAction func ClearForm(_ sender: Any) {
        FirstName.text?.removeAll()
        LastName.text?.removeAll()
        Country.text?.removeAll()
        Age.text?.removeAll()
        AllOutput.text?.removeAll()
        MessageLabel.text?.removeAll()
    }
    
    //Function created to display if user left out the textfield empty
    func errorSubmit()
    {
        MessageLabel.textColor = UIColor.systemRed
        MessageLabel.text = String(missingInfo)
    }
    
    //Function created to display if form submit is successful
    func successSubmit(){
        FirstName.text?.removeAll()
        LastName.text?.removeAll()
        Country.text?.removeAll()
        Age.text?.removeAll()
        AllOutput.text?.removeAll()
        MessageLabel.textColor = UIColor.systemGreen
        MessageLabel.text = String(success)
        FirstName.becomeFirstResponder() //For focusing in the first textfield
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

