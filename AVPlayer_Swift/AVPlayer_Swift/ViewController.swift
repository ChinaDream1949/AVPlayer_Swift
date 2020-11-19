//
//  ViewController.swift
//  AVPlayer_Swift
//
//  Created by MR.Sahw on 2020/11/18.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let palyer = AVPlayer(url: Bundle.main.url(forResource: "Warcraft", withExtension: "mp4")!)
        
//        let palyerLayer = AVPlayerLayer(player: palyer)
//        palyerLayer.frame = videoView.bounds
//
//        videoView.layer.addSublayer(palyerLayer)
        
        let palyerVC = AVPlayerViewController()
        palyerVC.player = palyer
        addChild(palyerVC)
        
        palyerVC.view.frame = videoView.bounds
        
        videoView.addSubview(palyerVC.view)
        palyerVC.didMove(toParent: self)
        
        
        // tableView
        tableView.dataSource = self
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 18
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "我是一条评论"
        return cell
    }
    
    
}
