//
//  CommonActionViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 06/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class CommonActionViewController: UIViewController {
    
    
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    var label: UILabel = {
        let Label = UILabel(frame: CGRect(x: 0, y: 250, width: 450, height : 200))
        Label.text = "Sorry, this mode is not avaliable for alpha testing"
        Label.font = UIFont.systemFont(ofSize: 17)
        Label.textColor = .white
        
        
        
        return Label
        
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 146/255, green: 173/255, blue: 184/225, alpha: 1.0)
        self.view.addSubview(container)
        self.view.addSubview(label)
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func backAction()
    {
        
        self.present(MainMenuViewController(),animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
