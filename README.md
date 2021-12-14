# Quiz Game
### QuizGame is an iOS application that offers quizes.

###  ✨Application Features
- It is a simple iOS app built by Swift, which presents a quick quiz, marks the answers, and shows to the participant.
- Data is not yet stored in CoreData.
- Animation is to be used later on to make a more user friendly interface.
- An prgress bar is shown to the paricipant to indicate their progress.

---
# Code Samples
```swift
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
```

--
Demos
---























