//
//  SecondViewController.swift
//  bmi calculator
//
//  Created by Faiaz Ibraev on 30/6/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var backToMainButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var adviceTitle: UILabel!
    @IBOutlet weak var adviceMain: UILabel!
    @IBOutlet weak var heightLabelSecond: UILabel!
    @IBOutlet weak var weightLabelSecond: UILabel!
    @IBOutlet weak var smileImage: UIImageView!
    @IBOutlet weak var recipeButton: UIButton!
    
    
    var resultSecond: Float = 0
    var secondHeight = ""
    var secondWeight = ""
    var calculations: Calculations = .one
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getResult()
        getData()
        recipe()
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    func recipe(){
        recipeButton.layer.borderWidth = 1
        recipeButton.layer.cornerRadius = 15
        recipeButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func getData(){
        heightLabelSecond.text = secondHeight
        weightLabelSecond.text = secondWeight
    }

    func getResult(){
        if resultSecond <= 18.5 {
            adviceTitle.text = "У вас недовес"
            adviceMain.text = "Обратитесь к врачу"
            recipeButton.isHidden = false
            smileImage.image = UIImage(named: "omg") ?? UIImage()
        } else if resultSecond > 18.5 && resultSecond <= 25 {
            adviceTitle.text = "У вас вес в норме"
            adviceMain.text = "Вы молодец!"
            recipeButton.isHidden = true
            smileImage.image = UIImage(named: "cool") ?? UIImage()
        } else if resultSecond > 25 && resultSecond <= 30 {
            adviceTitle.text = "Ваш вес выше нормы"
            adviceMain.text = "Нужно занятьс спортом"
            recipeButton.isHidden = true
            smileImage.image = UIImage(named: "think") ?? UIImage()
        }else if resultSecond > 30{
            adviceTitle.text = "У вас ожирение"
            adviceMain.text = "Нужно срочно сесть на диету"
            recipeButton.isHidden = true
            smileImage.image = UIImage(named: "omg") ?? UIImage()
        }
    }
    
    
    @IBAction func backToMainButtonTapped(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    

}
