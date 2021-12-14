# Quiz Game
### QuizGame is an iOS application that offers quizes.

###  ✨Application Features
- It is a simple iOS app built by Swift, which presents a quick quiz, marks the answers, and shows the result to participants.
- Data is not yet stored in CoreData.
- Animation is to be used later on to make the app interface more friendly.
- A progress bar is shown to the participant to indicate their progress.

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
---

# Demos


<img src= "https://user-images.githubusercontent.com/95880640/145990210-6cfb9632-ac56-4fc0-9179-ecb5fb0d79b8.png" height="500"> <img src= "https://user-images.githubusercontent.com/95880640/145990234-758c6e53-d997-4a2b-bd74-b17ad288047f.png" height="500"> 
<img src= "https://user-images.githubusercontent.com/95880640/145990244-25e8eda2-6a31-4d25-84b3-909f8796c57a.png" height="500">

---

https://user-images.githubusercontent.com/95880640/145991483-ce441bf5-7f93-47ae-9c73-bac7aa602a2f.mp4

















