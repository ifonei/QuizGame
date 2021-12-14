//
//  Quiz.swift
//  QuizGame
//
//  Created by D. F. on 06/12/2021.
//

import UIKit

class Quiz: UIViewController {
    var qNo = 0
    var score = 0
    
    var quizArray = [
        Question(qNo: 0, qString: "تستخدم الكلمة try في تعريف الدالة للدلالة على أن هذه الدالة قد تقوم بإنشاء خطأ يجب معالجته عند الاستدعاء", qAnswer: false),
        Question(qNo: 1, qString: "الـ Binary Data يمكن أن يكون نوع لخاصية لحفظ الصور لأحد القوالب في قاعدة البيانات", qAnswer: true),
        Question(qNo: 2, qString: "لتثبيت عنصر في منتصف الشاشة نحتاج الـ constraints التالية: Central Horizontally Center Vertically فقط", qAnswer: false),
        Question(qNo: 3, qString: "عند الضغط على أحد شرائح الـ tableView سيتم استدعاء الدالة tableView(...cellForRow...)", qAnswer: false),
        Question(qNo: 4, qString: "المصدر الأساسي للدالة tableView...cellForRowAtIndexPath هو البروتوكول: UITableViewDataSource", qAnswer: true),
        Question(qNo: 5, qString: "يمكن لكلاس معين أن يرث من كلاس آخر ويطبق بروتوكول في نفس الوقت", qAnswer: true),
        Question(qNo: 6, qString: "أثناء تعريف الـ class يجب إسناد قيم له أو إضافة دالة init function بينما لا نحتاج ذلك في الـ struct", qAnswer: true),
        Question(qNo: 7, qString: "عند تنفيذ الكود التالي print(true == false) سيتم طباعة العبارة true == false", qAnswer: false),
        Question(qNo: 8, qString: "يتم الوصول لعنصر المصفوفة عن طريق استخدام رقم العنصر (index)", qAnswer: true),
        Question(qNo: 9, qString: "لتعريف متغير من نوع عشري Double نكتب الكود التالي var x: Double = 0", qAnswer: true)
    ]
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var QView: UIView!
    @IBOutlet weak var qNoLabel: UILabel!
    @IBOutlet weak var QTextView: UITableView!
    @IBOutlet weak var qStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        quizArray.shuffle()
        qNo = 0
        questionTextView.text = quizArray[qNo].qString
        qNoLabel.text = "السؤال\(qNo + 1): "
        
        trueButton.layer.cornerRadius = 15
        falseButton.layer.cornerRadius = 15
        QView.layer.cornerRadius = 20
        QTextView.layer.cornerRadius = 20
        qStackView.layer.cornerRadius = 20
        
    }
    
    @IBAction func trueButton(_ sender: Any) {
        
        if quizArray[qNo].qAnswer == true {
            progressView.progress = progressBar()
            score += 1
            self.trueButton.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.trueButton.backgroundColor = UIColor.systemTeal
            }
            qNo += 1
            if qNo < 10{
                qNoLabel.text = "السؤال\(qNo + 1): "
                questionTextView.text = quizArray[qNo].qString
            }else{
                showResultMessage()
            }
        }else {
            progressView.progress = progressBar()
            questionTextView.text = quizArray[qNo].qString
            self.trueButton.backgroundColor = UIColor.red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.trueButton.backgroundColor = UIColor.systemTeal
            }
            qNo += 1
            if qNo<10{
                qNoLabel.text = "السؤال\(qNo + 1): "
                questionTextView.text = quizArray[qNo].qString
            }else{
                showResultMessage()
            }
        }
    }
    
    @IBAction func falseButton(_ sender: Any) {
        if quizArray[qNo].qAnswer == false {
            progressView.progress = progressBar()
            score += 1
            self.falseButton.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.falseButton.backgroundColor = UIColor.systemTeal
            }
            qNo += 1
            if qNo < 10{
                qNoLabel.text = "السؤال\(qNo + 1): "
                questionTextView.text = quizArray[qNo].qString
            }else{
                showResultMessage()
            }
        }else {
            progressView.progress = progressBar()
            questionTextView.text = quizArray[qNo].qString
            self.falseButton.backgroundColor = UIColor.red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.falseButton.backgroundColor = UIColor.systemTeal
            }
            qNo += 1
            if qNo<10{
                qNoLabel.text = "السؤال\(qNo + 1): "
                questionTextView.text = quizArray[qNo].qString
            }else{
                showResultMessage()
            }
        }
    }
    
    
    func progressBar() -> Float{
        return Float (qNo + 1) / Float(quizArray.count)
    }
    
    func showResultMessage(){
        let alert = UIAlertController(title: "Quiz Result", message: "Your score is: \(score)/10", preferredStyle: UIAlertController.Style.alert)
        let closeAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { _ in self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(closeAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}
