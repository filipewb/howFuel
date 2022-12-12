import UIKit

class CalculatorVC: UIViewController {
    
    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

extension CalculatorVC: CalculatorScreenDelegate {
    
    func tappedCalculateButton() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0")
                                    as? Double) ?? 0.0
        
        let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0")
                                    as? Double) ?? 0.0
        
        if ethanolPrice / gasPrice > 0.7 {
            print("melhor usar gasolina")
        } else {
            print("melhor usar alcool")
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
}
