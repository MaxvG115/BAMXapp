import UIKit
import CoreNFC

class ViewController: UIViewController {

    
    @IBOutlet weak var AuthBtn: UIButton!
    
    @IBOutlet weak var ConfigBtn: UIButton!

    @IBOutlet weak var topConstraintHeight: NSLayoutConstraint!
    @IBAction func ShowSignInPop(_ sender: Any) {
        topConstraintHeight.constant=0;
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        print("Clicked")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AuthBtn.layer.borderWidth=1
        AuthBtn.layer.borderColor=UIColor.black.cgColor

        topConstraintHeight.constant=800;
    }

}

