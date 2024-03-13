//
//  ViewController.swift
//  Delegate
//
//  Created by Amelie Baimukanova on 13.03.2024.
//

import UIKit

class ViewController: UIViewController, SelectCategoryProtocol {
    
    @IBOutlet weak var categoryButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openModalview(_ sender: Any) {
        let modalview = storyboard?.instantiateViewController(identifier: "ModalViewController") as! ModalViewController
        
        modalview.modalPresentationStyle = .overCurrentContext
        
        modalview.categoryArray = ["Food", "Clothind", "Electronics", "Other"]
        
        modalview.delegate = self
        
        present(modalview, animated: true, completion: nil)
    }
    
    
    func setCategory(_ category: String) {
        categoryButton.setTitle(category, for: .normal)
    }
}

