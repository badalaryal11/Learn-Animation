//
//  ViewController.swift
//  Learn Animation
//
//  Created by Badal  Aryal on 26/07/2023.
//

import UIKit

class ViewController: UIViewController {
    let myView = UIView (frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myView.backgroundColor = .red
        myView.center = view.center
        view.addSubview(myView)
        
        let myButton = UIButton (frame: CGRect(x: (view.frame.size.width - 200)/2, y: (view.frame.size.height - 220), width: 200, height:200))
        myButton.backgroundColor = .black
        myButton.setTitleColor(.white, for: .normal)
        myButton.setTitle("Start", for: .normal)
        myButton.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(myButton)
    }
    @objc func animate() {
        UIView.animate(withDuration: 1,
                       animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 1,
                               animations: {
                    self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
                })
                
            }
        })
    }
}
            
   
