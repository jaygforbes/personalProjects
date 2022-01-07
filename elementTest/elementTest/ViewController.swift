//
//  ViewController.swift
//  elementTest
//
//  Created by Jay Forbes on 1/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // shows first element when app launches
        updateElement()
    }
    
    //Connect buttons - outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    //Give buttons actions - action
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        //shows answer
        answerLabel.text = elementList[currentElementIndex]
    }
    
    //list of elements with an variable used to reference a single element
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func updateElement(){
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

