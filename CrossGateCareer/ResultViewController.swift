//
//  ResultViewController.swift
//  CrossGateCareer
//
//  Created by 楊曜安 on 2023/5/18.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var careerNameLabel: UILabel!
    @IBOutlet weak var careerImage: UIImageView!
    @IBOutlet weak var introductionLabel: UILabel!
    var careerMatch: CareerType!

    override func viewDidLoad() {
        super.viewDidLoad()
        //設定職業名稱標題
        careerNameLabel.text = careerList[careerMatch]?.career.rawValue
        //設定職業介紹
        introductionLabel.text = careerList[careerMatch]?.introduction
        //設定職業圖片
        careerImage.image = UIImage(named: careerList[careerMatch]!.career.rawValue)

        // Do any additional setup after loading the view.
    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
