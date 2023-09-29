//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 조승용 on 2023/09/29.
//

import UIKit



class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.tintColor = UIColor.systemPink
        // viewDidLoad에서 준비하지 않으면 색깔 깜빡거릴수도
        
        // To-Do:
        // - 심볼에서, 하나를 임의로 추출해서,
        // - 이미지와 텍스트를 설정을 한다
        
        // DRY!
        // Do not Repeat Yourself!
        
        
        
        reload()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        Image.image = UIImage(systemName: symbol)
        Label.text = symbol
        
        print("viewDidLoad")
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("와 눌렸다.....")
        reload()
    }

}
