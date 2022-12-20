//
//  MusicViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 11/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)
        
        
        let circleImage = UIImageView(frame : CGRect(x: 10, y: 30,
                                                     width:350, height: 250))
        circleImage.backgroundColor = .blue
        circleImage.clipsToBounds = true
        circleImage.image = #imageLiteral(resourceName: "GetHelp logo-2")
        
        self.container.addSubview(circleImage)
        
        
        let Play = UIButton(frame: CGRect(x:0, y: 300, width: 150, height: 100))
        Play.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Play.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Play.addTarget(self, action: #selector(PlayAction), for: .touchUpInside)
        Play.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Play.setTitle("Play", for: .normal)
        
        self.container.addSubview(Play)
        
        
      
        
        let Pause = UIButton(frame: CGRect(x:200, y: 300, width: 150, height: 100))
        Pause.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Pause.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Pause.addTarget(self, action: #selector(PauseAction), for: .touchUpInside)
        Pause.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Pause.setTitle("Pause", for: .normal)
        
        self.container.addSubview(Pause)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "wav")!))
            audioPlayer.prepareToPlay()
            

        
        }
        
        catch{
            print (error)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   func backAction()
   {
    self.present(OthersViewController(), animated: true, completion: nil)
    }
    
    func PauseAction()
    {
       audioPlayer.stop()
       audioPlayer.pause()
    }
    
    func restartAction()
    {
        if audioPlayer.isPlaying
        {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
            
        else{
            audioPlayer.play()
        }
    }
    
    func PlayAction()
    {
        audioPlayer.play()
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
