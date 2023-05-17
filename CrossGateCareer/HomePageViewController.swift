//
//  HomePageViewController.swift
//  CrossGateCareer
//
//  Created by 楊曜安 on 2023/5/18.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        resetScores()

    // Do any additional setup after loading the view.
    }
    
    
    func resetScores() {
        for index in 0..<scoreList.count {
            scoreList[index].Score = 0
        }
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
