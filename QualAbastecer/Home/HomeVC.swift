import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
    
}

extension HomeVC: HomeScreenDelegate {
    func tappedStartButton() {
    }
}
