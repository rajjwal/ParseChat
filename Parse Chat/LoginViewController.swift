//
//  LoginViewController.swift
//  Parse Chat
//
//  Created by Rajjwal Rawal on 2/27/17.
//  Copyright © 2017 Rajjwal Rawal. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func signUpPress(_ sender: Any) {
        
        let user = PFUser()
        
        user.username = emailTextField.text
        user.password = passwordTextField.text
        
        user.signUpInBackground {
            (succeeded: Bool, error: Error?) -> Void in
            let message: String = {
                if let error = error {
                    return error.localizedDescription
                } else {
                    return "Success"
            }
            }()
            
            
            let alertController = UIAlertController(title: "Sign Up", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func loginPress(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: emailTextField.text!, password: passwordTextField.text!) { (user: PFUser?, error: Error?) in
            if user != nil {
                self.performSegue(withIdentifier: "ChatViewController", sender: nil)
            } else {
                let alertController = UIAlertController(title: "Sorry, Login Failed!", message: "Email or password is incorrect.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
