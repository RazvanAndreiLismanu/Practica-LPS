//
//  ViewController.swift
//  firstApp
//
//  Created by Razvan andrei lismanu on 9/26/18.
//  Copyright © 2018 Razvan andrei lismanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    
    @IBOutlet weak var nombreLbl: UILabel!
    
    @IBOutlet weak var nombreTxt: UITextField!
    
    @IBOutlet weak var apellidoTxt: UITextField!
    
    
    //MARK: actions
    
    @IBAction func serResetBtn(sender: UIButton) {
        nombreLbl.text="Hola desconocido";
        nombreTxt.text="";
        apellidoTxt.text="";
    }
    
    @IBAction func cambiarColorBtn(sender: UIButton) {
        self.view.backgroundColor=cambiarColor()
    }
    
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nombreLbl.text = "Hola " + nombreTxt.text! + " " + apellidoTxt.text!
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nombreTxt.delegate=self;
        apellidoTxt.delegate=self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cambiarColor() -> UIColor{
        
        let red:CGFloat=CGFloat(drand48())
        let green:CGFloat=CGFloat(drand48())
        let blue:CGFloat=CGFloat(drand48())
        
        return UIColor(red:red,green:green,blue:blue,alpha:1.0)
    }

}

