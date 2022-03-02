import UIKit
import Flutter

class ViewController: UIViewController {
    var label: UILabel?
    
  override func viewDidLoad() {
    super.viewDidLoad()
      
      label = UILabel(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
      self.view.addSubview(label!)

    // Make a button to call the showFlutter function when pressed.
    let button = UIButton(type:UIButton.ButtonType.custom)
    button.addTarget(self, action: #selector(showFlutter), for: .touchUpInside)
    button.setTitle("Show Flutter!", for: UIControl.State.normal)
    button.frame = CGRect(x: 120.0, y: 210.0, width: 160.0, height: 40.0)
    button.backgroundColor = UIColor.blue
    self.view.addSubview(button)
      
      let button2 = UIButton(type: UIButton.ButtonType.custom)
      button2.addTarget(self, action: #selector(navDetail), for: .touchUpInside)
      button2.setTitle("Nav Detail", for: UIControl.State.normal)
      button2.frame = CGRect(x: 120, y: 300, width: 160, height: 40)
      button2.backgroundColor = UIColor.red
      self.view.addSubview(button2)
  }

  @objc func showFlutter() {
    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    let flutterViewController =
        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    present(flutterViewController, animated: true, completion: nil)
  }
    
    @objc func navDetail() {
        let viewController = ViewControllerTwo()
        viewController.data = "这是从第一个界面传递进来的数据"
        self.present(viewController, animated: true, completion: nil)
    }
}
