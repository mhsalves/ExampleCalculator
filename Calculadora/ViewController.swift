//
//  ViewController.swift
//  Calculadora
//
//  Created by Matheus Alves on 24/05/16.
//  Copyright © 2016 Encosis 2016. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumero1: UITextField!
    @IBOutlet weak var tfNumero2: UITextField!
    @IBOutlet weak var tfResultado: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionSomar(sender: AnyObject) {
        
        self.descerTeclado()
        
        if let v1 = Int(tfNumero1.text!) {
            if let v2 = Int(tfNumero2.text!) {
                let resultado = v1 + v2
                self.tfResultado.text = "\(resultado)"
            }
        }
        
    }

    @IBAction func actionSubtrair(sender: AnyObject) {
        
        self.descerTeclado()
        
        if let v1 = Int(tfNumero1.text!) {
            if let v2 = Int(tfNumero2.text!) {
                let resultado = v1 - v2
                self.tfResultado.text = "\(resultado)"
            }
        }
        
    }
    
    @IBAction func actionMultiplicar(sender: AnyObject) {
        
        self.descerTeclado()
        
        if let v1 = Int(tfNumero1.text!) {
            if let v2 = Int(tfNumero2.text!) {
                let resultado = v1 * v2
                self.tfResultado.text = "\(resultado)"
            }
        }
        
    }
    
    @IBAction func actionDividir(sender: AnyObject) {
        
        self.descerTeclado()
        
        if let v1 = Float(tfNumero1.text!) {
            if let v2 = Float(tfNumero2.text!) {
                let resultado = v1 / v2
                self.tfResultado.text = "\(resultado)"
            }
        }
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.descerTeclado()
        
    }
    
    func descerTeclado(){
        self.tfNumero1.resignFirstResponder()
        self.tfNumero2.resignFirstResponder()
        self.tfResultado.resignFirstResponder()
    }
    
}

