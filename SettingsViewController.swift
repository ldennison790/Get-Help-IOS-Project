//
//  SettingsViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 07/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    var label: UILabel = {
        let Label = UILabel(frame: CGRect(x: 0, y: 10, width: 400, height : 100))
        Label.text = "Pick your background colour!"
        Label.font = UIFont.systemFont(ofSize: 28)
        Label.textColor = .black
        
        
        
        return Label
        
        
        
    }()
    
    
   
    
    var backColor = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(label)
        
        let Black = UIButton(frame: CGRect(x:10, y: 100, width: 170, height: 65))
        Black.setBackgroundImage(UIImage(color: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Black.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Black.addTarget(self, action: #selector(blackAction), for: .touchUpInside)
        Black.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0), for: .normal)
        Black.setTitle("", for: .normal)
        
        let Red = UIButton(frame: CGRect(x:10, y: 200, width: 170, height: 65))
        Red.setBackgroundImage(UIImage(color: UIColor(red: 252/255, green: 21/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Red.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Red.addTarget(self, action: #selector(redAction), for: .touchUpInside)
        Red.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Red.setTitle("", for: .normal)
        
        let Green = UIButton(frame: CGRect(x:10, y: 300, width: 170, height: 65))
        Green.setBackgroundImage(UIImage(color: UIColor(red: 8/255, green: 252/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Green.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Green.addTarget(self, action: #selector(greenAction), for: .touchUpInside)
        Green.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Green.setTitle("", for: .normal)
        
        let Yellow = UIButton(frame: CGRect(x:190, y: 100, width: 170, height: 65))
        Yellow.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 250/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Yellow.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Yellow.addTarget(self, action: #selector(yellowAction), for: .touchUpInside)
        Yellow.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Yellow.setTitle("", for: .normal)
        
        let  Purple = UIButton(frame: CGRect(x:190, y: 200, width: 170, height: 65))
        Purple.setBackgroundImage(UIImage(color: UIColor(red: 206/255, green: 0/255, blue: 247/255, alpha: 1.0)), for: .normal)
        Purple.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Purple.addTarget(self, action: #selector(purpleAction), for: .touchUpInside)
        Purple.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Purple.setTitle("", for: .normal)
        
        let LightBlue = UIButton(frame: CGRect(x:190, y: 300, width: 170, height: 65))
        LightBlue.setBackgroundImage(UIImage(color: UIColor(red: 0/255, green: 252/255, blue: 252/255, alpha: 1.0)), for: .normal)
        LightBlue.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        LightBlue.addTarget(self, action: #selector(lightblueAction), for: .touchUpInside)
        LightBlue.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        LightBlue.setTitle("", for: .normal)
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)

        
        self.view.addSubview(Back)
        self.view.addSubview(Black)
        self.view.addSubview(Red)
        self.view.addSubview(Green)
        self.view.addSubview(Yellow)
        self.view.addSubview(Purple)
        self.view.addSubview(LightBlue)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func blackAction()
    {
        var backColor = "Black"
    }
    
    func redAction()
    {
        var backColor = "Red"
    }
    
    func greenAction()
    {
        var backColor = "Green"
    }
    
    func yellowAction()
    {
        var backColor = "Yellow"
    }
    
    func purpleAction()
    {
        var backColor = "Purple"
    }
    
    func lightblueAction()
    {
        var backColor = "LightBlue"
    }
    
    func backAction()
    {
        self.present(OthersViewController(),animated: true,completion: nil)
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
