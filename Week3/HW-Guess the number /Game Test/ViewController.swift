
import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var cancelButt: UIButton!
    @IBOutlet weak var sendButt: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textHint: UILabel!
    
    private var targetNumber = 0
    private var minNumber = 0
    private var maxNumber = 100
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        targetNumber = Int(arc4random_uniform(100) + 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelBut(_ sender: AnyObject) {
        textField.text = ""
    }
    
    @IBAction func sendBut(_ sender: AnyObject) {
        guard let number = Int(textField.text!) else {
            textHint.text = "Enter a number!"
            return
          }
        gameNumber(number: number)
        }

    @IBAction func one(_ sender: AnyObject) {
    }
    @IBAction func two(_ sender: AnyObject) {
    }

}

private extension ViewController{
    enum Compare {
        case smaller
        case greater
        case equal
    }
    
    func gameNumber(number: Int){
        switch comNumber(number: number, target: targetNumber){
        case .smaller:
            minNumber = max(minNumber, number)
            numberRange()
        case .greater:
            maxNumber = min(maxNumber, number)
            numberRange()
        case .equal:
            textHint.text = "Yahaha! You got me!"
        }
    }
    
    func comNumber(number: Int, target: Int) -> Compare{
        if number < target {
            return .smaller
        } else if number > target {
            return .greater
        }
        return .equal
    }
    
}


private extension ViewController{
    func numberRange() {
        textHint.text = "\(minNumber) to \(maxNumber)"
    }
    
    func reset() {
        minNumber = 0
        maxNumber = 100
    }
    
    func startAgain(){
        reset()
        numberRange()
    }
    
}



// Not finish yet QQ






















