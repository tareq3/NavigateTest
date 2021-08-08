//
//  ViewController.swift
//  NavigateTest
//
//  Created by Tareq on 8/8/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func nextButton(_ sender: Any) {
        navigateUsingNavigation()
    }
    
   func navigateUsingPresentFromAnyStoryBoard(){
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = storyboard?.instantiateViewController(identifier: "second_vc") as! SecondViewController
        secondVC.modalPresentationStyle = .fullScreen //for full screen mode like navigation else it would look like modal sheet
        secondVC.modalTransitionStyle = .coverVertical
        self.present(secondVC, animated: true, completion:  nil)
    }
    
    func navigateUsingNavigation(){
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let secondVC = storyboard?.instantiateViewController(identifier: "second_vc") as! SecondViewController
       
        let navigation = UINavigationController(rootViewController: secondVC)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

