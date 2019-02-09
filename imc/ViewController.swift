//
//  ViewController.swift
//  imc
//
//  Created by ios8043 on 09/02/19.
//  Copyright © 2019 Elton Buscariol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func CalculaIMC(_ sender: AnyObject) {
        
        if !(txtAltura.text?.isEmpty)! && !(txtPeso.text?.isEmpty)!  {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let resultado = storyboard.instantiateViewController(withIdentifier: "Form-Resultado") as! ResultadoViewController
            resultado.altura = Double(txtAltura.text!)!
            resultado.peso = Double(txtPeso.text!)!
            self.navigationController?.pushViewController(resultado, animated: true)
        } else{
            let alert = UIAlertController(title: "Atenção", message: "Todos os valores devem ser preenchidos!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }

}

