//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Zack Falgout on 5/24/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier:  "playSongVC"){
            
        }

        performSegue(withIdentifier: "playSongVC", sender: songTitle){
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
            
        }
    }

}
