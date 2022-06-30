//
//  ViewController.swift
//  bmi calculator
//
//  Created by Faiaz Ibraev on 30/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var getResultButton: UIButton!
    
    var weightSliderPosition = 50
    var heightSliderPosition = 150
    
    var result: Float = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        setup ()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        restart()
    }
    
    
    func restart (){
        weightLabel.text = "50 кг"
        heightLabel.text = "150 см"
        weightSlider.value = 50
        heightSlider.value = 150
    }
    
    func setup (){
        weightLabel.layer.masksToBounds = true
        weightLabel.layer.cornerRadius = 15
        heightLabel.layer.masksToBounds = true
        heightLabel.layer.cornerRadius = 15
        getResultButton.layer.masksToBounds = true
        getResultButton.layer.cornerRadius = 15
        heightLabel.text = String ("\(heightSliderPosition) см")
        weightLabel.text = String ("\(weightSliderPosition) кг")
        
    }
    
    
    @IBAction func weigthSliderChange(_ sender: UISlider) {
        weightSliderPosition = Int(weightSlider.value)
        weightLabel.text = String ("\(weightSliderPosition) кг")
        
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightSliderPosition = Int(heightSlider.value)
        heightLabel.text = String ("\(heightSliderPosition) см")
    }
    
    
    @IBAction func getResultButtonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        result = Float(weightSliderPosition)/Float((heightSliderPosition*heightSliderPosition)/10000)
        vc.resultSecond = result
        vc.secondWeight = "\(weightSliderPosition) кг"
        vc.secondHeight = "\(heightSliderPosition) см"
        
    }
    


}

