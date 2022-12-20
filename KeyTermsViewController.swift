//
//  KeyTermsViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 11/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class KeyTermsViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    
    var ref: UILabel = {
    let ref = UILabel(frame: CGRect(x: 0, y: 90, width: 450, height: 30))
    ref.text = "Wavelength - Distance between two crests or troughs"
    ref.font = UIFont.systemFont(ofSize: 15)
    ref.textColor = .white
    
    
    
    return ref
    
    
    }()
    
    var ref1: UILabel = {
        let ref1 = UILabel(frame: CGRect(x: 0, y: 160, width: 450, height : 30))
        ref1.text = "Amplitude - The height of the wave, measured from"
        ref1.font = UIFont.systemFont(ofSize: 15)
        ref1.textColor = .white
        
        
        
        return ref1
        
        
    }()
    
    
    var ref6: UILabel = {
        let ref6 = UILabel(frame: CGRect(x: 0, y: 180, width: 450, height : 30))
        ref6.text = "the midpoint"
        ref6.font = UIFont.systemFont(ofSize: 15)
        ref6.textColor = .white
        
        
        
        return ref6
        
        
    }()
    
   
    
    var ref3: UILabel = {
        let ref3 = UILabel(frame: CGRect(x: 0, y: 250, width: 450, height : 30))
        ref3.text = "Frequency - Number of waves passing a point per"
        ref3.font = UIFont.systemFont(ofSize: 15)
        ref3.textColor = .white
        
        
        
        return ref3
        
        
    }()
    
    var ref7: UILabel = {
        let ref7 = UILabel(frame: CGRect(x: 0, y: 270, width: 450, height : 30))
        ref7.text = "second"
        ref7.font = UIFont.systemFont(ofSize: 15)
        ref7.textColor = .white
        
        
        
        return ref7
        
        
    }()
    
    
    var ref4: UILabel = {
        let ref4 = UILabel(frame: CGRect(x: 0, y: 340, width: 450, height : 30))
        ref4.text = "Sound cannot travel through a vacuum"
        ref4.font = UIFont.systemFont(ofSize: 15)
        ref4.textColor = .white
        
        
        
        return ref4
        
        
    }()
    
    
    var ref5: UILabel = {
        let ref5 = UILabel(frame: CGRect(x: 0, y: 410, width: 450, height : 30))
        ref5.text = "Ultrasound - sound above 20,00Hz"
        ref5.font = UIFont.systemFont(ofSize: 15)
        ref5.textColor = .white
        
        
        
        return ref5
        
        
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        self.container.addSubview(ref)
        self.container.addSubview(ref1)
        self.container.addSubview(ref4)
        self.container.addSubview(ref3)
        self.container.addSubview(ref5)
        self.container.addSubview(ref6)
        self.container.addSubview(ref7)
        
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 610, width: 400, height: 65))
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
        self.present(SoundViewController(), animated: true, completion: nil)
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
