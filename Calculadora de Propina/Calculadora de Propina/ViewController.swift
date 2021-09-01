//
//  ViewController.swift
//  Calculadora de Propina
//
//  Created by Alumno on 8/31/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCuenta: UITextField!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblVPropina: UILabel!
    @IBOutlet weak var lvlVP: UILabel!
    @IBOutlet var SP: UIView!
    
    @IBOutlet weak var Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doEditEndCuenta(_ sender: Any) {
    }
    
    @IBAction func doChangePorcentaje(_ sender: Any) {
        lvlVP.text = "\(String(Int(Slider.value)))%"
        if txtCuenta != nil && txtCuenta.text !=  "" {
            let cuenta = Float(txtCuenta.text!)!
            let porcentaje = Float(Int(Slider.value))
            let propina = cuenta * (porcentaje /  100.0)
            let totalConPropina = cuenta + propina
            
            lblVPropina.text = "$\(String(format: "%.2f", propina))"
            lblT.text = "$\(String(format: "%.2f", totalConPropina))"
            
        }
    }
    
    
}

		
