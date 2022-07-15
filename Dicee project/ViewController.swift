import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceeLeft: UIImageView!
    @IBOutlet weak var diceeRight: UIImageView!
    @IBOutlet weak var rollOutletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBorder(object: diceeLeft)
        imageBorder(object: diceeRight)
        buttonBorder(object: rollOutletButton)
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let diceArray: Array<UIImage> = [
            UIImage.init(imageLiteralResourceName: Dice.one),
            UIImage.init(imageLiteralResourceName: Dice.two),
            UIImage.init(imageLiteralResourceName: Dice.three),
            UIImage.init(imageLiteralResourceName: Dice.four),
            UIImage.init(imageLiteralResourceName: Dice.five),
            UIImage.init(imageLiteralResourceName: Dice.six)
        ]
        
        diceeLeft.image = diceArray[Int.random(in: 0...5)]
        diceeRight.image = diceArray[Int.random(in: 0...5)]
    }
    
    func imageBorder(object: UIImageView) {
        object.layer.cornerRadius = object.frame.size.height / 5
    }
    
    func buttonBorder(object: UIButton) {
        object.layer.cornerRadius = object.frame.size.height / 5
    }
}
