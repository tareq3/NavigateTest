//
//  ViewController.swift
//  NavigateTest
//
//  Created by Tareq on 8/8/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func nextButton(_ sender: Any) {
        // navigateUsingPresentFromAnyStoryBoard()
        //navigateUsingNavigation()
        basicNav()
    }
    //for showing dialog
    func navigateUsingPresentFromAnyStoryBoard(){
            let story = UIStoryboard(name: "Alert", bundle: Bundle.main)
            let secondVC = story.instantiateViewController(identifier: "second_vc") as! SecondViewController
            secondVC.modalPresentationStyle = .fullScreen //for full screen mode like navigation else it would look like modal sheet
            secondVC.modalTransitionStyle = .coverVertical
            self.present(secondVC, animated: true, completion:  nil)
        }

    
    ///navigation is like fragment's replacing layout while parent activity will be alawys active
    
    func navigateUsingNavigation(){
        let story = UIStoryboard(name: "Alert", bundle: nil)
        let secondVC = story.instantiateViewController(identifier: "second_vc") as! SecondViewController
       
        let navigation = UINavigationController(rootViewController: secondVC)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
        
    }
    //for normal activity transaction
    func basicNav(){
         let story = UIStoryboard(name: "Alert", bundle: nil)
                    let vc = story.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController
                   
                    self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

