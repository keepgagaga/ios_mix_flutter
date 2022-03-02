//
//  ViewControllerTwo.swift
//  ios_mix_flutter
//
//  Created by sand on 2022/3/2.
//

import UIKit

class ViewControllerTwo: UIViewController {
    var data: String?
    var delegate: ViewControllerTwoProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        button.setTitle("返回", for: UIControl.State())
        button.addTarget(self, action: #selector(ret), for: .touchUpInside)
        self.view.addSubview(button)
        
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 280, height: 30))
        label.text = data
        self.view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    
    @objc func ret() {
        delegate?.sentData(data: "第2个界面传递的值")
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol ViewControllerTwoProtocol {
    func sentData(data: String)
}
