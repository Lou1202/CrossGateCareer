//
//  QuizViewController.swift
//  CrossGateCareer
//
//  Created by 楊曜安 on 2023/5/18.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionButton: [UIButton]!
    @IBOutlet weak var answerProgressView: UIProgressView!
    @IBOutlet weak var progressImageView: UIImageView!
    var currentQuizIndex = 0
    var selectedOptionArray = [Int]()
    var careerMatch: CareerType?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressGifPlayer()
        quizList.shuffle()
        loadQuiz(questionNum: currentQuizIndex)
        
        
        // Do any additional setup after loading the view.
    }
    
    func progressGifPlayer() {
        // 設定進度條動畫圖片的位置和大小
        progressImageView.frame.size.width = questionLabel.bounds.width * 0.25
        progressImageView.frame.size.height =
        questionLabel.bounds.height * 0.38
        progressImageView.center.y = answerProgressView.center.y
        progressImageView.frame.origin.x = answerProgressView.frame.origin.x-20
        
        // 取得動畫圖片的資料
        guard let data = NSDataAsset(name: "鼠王")?.data else { return }
        guard let imageSource = CGImageSourceCreateWithData(data as CFData, nil) else { return }
        
        // 得到動畫幀數
        let frameCount = CGImageSourceGetCount(imageSource)
        var animationImages: [UIImage] = []
        
        // 將每個幀轉換成UIImage，並加入動畫圖片陣列
        for index in 0..<frameCount {
            guard let cgImage = CGImageSourceCreateImageAtIndex(imageSource, index, nil) else { continue }
            let uiImage = UIImage(cgImage: cgImage)
            animationImages.append(uiImage)
        }
        
        // 設定進度條動畫的相關屬性
        self.progressImageView.animationImages = animationImages
        self.progressImageView.animationDuration = Double(frameCount) * 0.1 // 播放速度
        self.progressImageView.animationRepeatCount = 0 // 重複播放動畫
        self.progressImageView.startAnimating()
        
    }
    
    
    func loadQuiz(questionNum: Int) {
        // 設定題目
        let question = quizList[questionNum]
        questionLabel.text = question.text
        
        // 設置隨機選項
        var options = question.options
        options.shuffle()
        
        for i in 0..<options.count {
            optionButton[i].setTitle(options[i].text, for: .normal)
            optionButton[i].tag = options[i].index
        }
        // 更新進度條和動畫圖片位置
        currentQuizIndex += 1
        answerProgressView.progress = Float(currentQuizIndex) / Float(quizList.count)
        progressImageView.frame.origin.x += answerProgressView.bounds.width/20
        
    }
    
    @IBAction func selectOption(_ sender: UIButton) {
        
        // 取得按鈕tag 對應選項index
        let index = sender.tag
        // 取得問題的選項清單
        let optionList = quizList[currentQuizIndex-1].options
        // 取得選項內對應的職業清單
        let optionScoreCareerList = optionList[index].careerTypes
        // 對應到的職業用迴圈加分
        for career in optionScoreCareerList {
            if let careerIndex = scoreList.firstIndex(where: { $0.careerType == career } ) {
                scoreList[careerIndex].Score += 1
            }
        }
        
        // 印出每個職業的分數檢查
        for career in scoreList {
            print("\(career.careerType):\(career.Score)分")
        }
        print("+++++++++++++++++++++++++")
        selectedOptionArray.append(index)
        
        
        
        if currentQuizIndex == quizList.count {
            // 找出最高分數
            let maxScore = scoreList.max(by: { $0.Score < $1.Score })?.Score
            // 找出分數相同的職業
            let maxScoreCareers = scoreList.filter { $0.Score == maxScore }.map { $0.careerType }
            // 隨機選擇一個職業
            careerMatch = maxScoreCareers.randomElement()
            performSegue(withIdentifier: "showResultView", sender: sender)
            
            
        }else {
            loadQuiz(questionNum: currentQuizIndex)
        }
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        if currentQuizIndex > 1 {
            currentQuizIndex -= 2
            
            // 取得上一個選擇的選項index
            if let optionIndex = selectedOptionArray.last {
                let optionList = quizList[currentQuizIndex].options
                let optionScoreCareerList = optionList[optionIndex].careerTypes
                
                // 對應到的職業用迴圈減分
                for career in optionScoreCareerList {
                    if let careerIndex = scoreList.firstIndex(where: { $0.careerType == career } ) {
                        scoreList[careerIndex].Score -= 1
                    }
                }
                // 印出每個職業的分數 檢查分數
                for career in scoreList {
                    print("\(career.careerType):\(career.Score)分")
                }
                print("---------------------")
            }
            
            // 移除最後一個選擇的選項index
            selectedOptionArray.removeLast()
            // 重新載入上一題的問題
            loadQuiz(questionNum: currentQuizIndex)
            // 更新進度條動畫圖片位置
            progressImageView.frame.origin.x -= answerProgressView.bounds.width/20*2
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? ResultViewController
        
        if let careerMatch = careerMatch {
            controller?.careerMatch = careerMatch
        }
        
    }
    
    
}
