//
//  ViewController.swift
//  Snapchat
//
//  Created by Daniel Toledo on 2/06/21.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user,error) in print("Intentando Iniciar Sesion")
            if error != nil {
                print("Se presento el sigueinte error : \(String(describing: error))" )
            }
            else{
                print("Inicio de Sesion Exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

