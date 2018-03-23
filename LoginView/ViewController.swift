//
//  ViewController.swift
//  LoginView
//
//  Created by gdcp on 2018/3/23.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

let SCREEN_SIZE = UIScreen.main.bounds.size

class ViewController: UIViewController {
    
    var loginText:UITextField?
    var passwdText:UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginText = UITextField(frame: CGRect(x: 20, y: 80, width: SCREEN_SIZE.width-40, height: 30))
        loginText?.borderStyle = .roundedRect
        loginText?.placeholder = "Enter your username"
        let loginImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        loginImage.image = UIImage(named: "login_user")
        loginText?.leftView = loginImage
        loginText?.leftViewMode = .always
        
        passwdText = UITextField(frame: CGRect(x: 20, y: 130, width: SCREEN_SIZE.width-40, height: 20))
        passwdText?.borderStyle = .roundedRect
        passwdText?.placeholder = "Enter your password"
        
        let passwdImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        passwdImage.image = UIImage(named: "login_pwdico")
        passwdText?.leftView = passwdImage
        passwdText?.leftViewMode = .always
        self.view.addSubview(loginText!)
        self.view.addSubview(passwdText!)
        //创建登录按钮和注册按钮
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: SCREEN_SIZE.width/4-50, y: 180, width: 100, height: 30)
        btn.setTitle("Login", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 10
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let btn2 = UIButton(type: .system)
        btn2.frame = CGRect(x: SCREEN_SIZE.width/4*3-50, y: 180, width: 100, height: 30)
        btn2.setTitle("Register", for: .normal)
        btn2.layer.masksToBounds = true
        btn2.layer.cornerRadius = 10
        btn2.backgroundColor = UIColor.cyan
        btn2.addTarget(self, action: #selector(regis), for: .touchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        
    }
    func regis(){
        let regisController = RegisController()
        self.present(regisController, animated: true, completion: nil)
    }
    func login(){
        if loginText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "Tip", message: "Enter your username", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default,handler: nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        if passwdText!.text!.isEmpty{
        let alertCon = UIAlertController(title: "Tip", message: "Enter your password", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        let alertCon = UIAlertController(title: "Tip", message: "Success", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertCon.addAction(action)
        self.present(alertCon, animated: true, completion: nil)
        return
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

