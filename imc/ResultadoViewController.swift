//
//  ResultadoViewController.swift
//  imc
//
//  Created by ios8043 on 09/02/19.
//  Copyright © 2019 Elton Buscariol. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var imgPeso: UIImageView!
    
    var altura : Double = 0
    var peso : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculaIMC()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func calculaIMC() {
        
        if altura > 0 && peso > 0 {
            
            let imc = peso / (altura * altura)
            
            switch imc {
            case 0...16.9:
                lblResultado.text = "Muito abaixo do peso ideal"
                imgPeso.image = #imageLiteral(resourceName: "peso1")
            case 17.0...18.4:
                lblResultado.text = "Abaixo do peso ideal"
                imgPeso.image = #imageLiteral(resourceName: "peso2")
            case 18.5...24.9:
                lblResultado.text = "Peso ideal"
                imgPeso.image = #imageLiteral(resourceName: "peso3")
            case 25.0...29.9:
                lblResultado.text = "Acima do peso ideal"
                imgPeso.image = #imageLiteral(resourceName: "peso4")
            case 30.0...34.9:
                lblResultado.text = "Obesidade Nível I"
                imgPeso.image = #imageLiteral(resourceName: "peso5")
            case 35.0...39.9:
                lblResultado.text = "Obesidade Nível II(severa)"
                imgPeso.image = #imageLiteral(resourceName: "peso6")
            default:
                lblResultado.text = "Obesidade Nível III(mórbida)"
                imgPeso.image = #imageLiteral(resourceName: "peso7")
            }
            
        }else{
            lblResultado.text = "Peso incorreto"
            imgPeso.image = nil
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
