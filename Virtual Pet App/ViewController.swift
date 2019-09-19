//
//  ViewController.swift
//  Virtual Pet App
//
//  Created by Minh Do on 9/14/19.
//  Copyright © 2019 Minh Do. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        currentAnimal = dog;
        currentAnimal.toDog();
        updateView();
    }

    @IBOutlet weak var animalBackground: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var timePlayed: UILabel!
    @IBOutlet weak var timeFed: UILabel!
    
    @IBOutlet weak var happinessBar: DisplayView!
    @IBOutlet weak var foodLevelBar: DisplayView!
    
    var dog:Animal = Animal();
    var cat:Animal = Animal();
    var bird:Animal = Animal();
    var bunny:Animal = Animal();
    var fish:Animal = Animal();
    
    var currentAnimal:Animal!;
    var audioPlayer = AVAudioPlayer();
    
    
    @IBAction func playHit(_ sender: Any) {
        currentAnimal.play();
        updateView();
    }
    
    @IBAction func feedHit(_ sender: Any) {
        currentAnimal.feed();
        updateView();
    }
    
    
    @IBAction func dogHit(_ sender: Any) {
        currentAnimal = dog;
        currentAnimal.toDog();
        updateView();
        let sound = Bundle.main.path(forResource: "dog", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!));
            audioPlayer.play();
        } catch {
            print(error)
        }
    }
    
    @IBAction func catHit(_ sender: Any) {
        currentAnimal = cat;
        currentAnimal.toCat()
        updateView();
        let sound = Bundle.main.path(forResource: "cat", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!));
            audioPlayer.play();
        } catch {
            print(error)
        }
    }
    
    
    @IBAction func birdHit(_ sender: Any) {
        currentAnimal = bird;
        currentAnimal.toBird()
        updateView();
        let sound = Bundle.main.path(forResource: "bird", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!));
            audioPlayer.play();
        } catch {
            print(error)
        }
    }
    
    @IBAction func bunnyHit(_ sender: Any) {
        currentAnimal = bunny;
        currentAnimal.toBunny()
        updateView();
        let sound = Bundle.main.path(forResource: "bunny", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!));
            audioPlayer.play();
        } catch {
            print(error)
        }
    }
    
    @IBAction func fishHit(_ sender: Any) {
        currentAnimal = fish;
        currentAnimal.toFish()
        updateView();
        let sound = Bundle.main.path(forResource: "fish", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!));
            audioPlayer.play();
        } catch {
            print(error)
        }
    }
    
    func updateView () {
        animalBackground.backgroundColor = currentAnimal.color;
        animalImage.image = currentAnimal.image;
        timePlayed.text = String(currentAnimal.timePlayed);
        timeFed.text = String(currentAnimal.timeFed);
        happinessBar.value = CGFloat(currentAnimal.happiness) / 10.0;
        foodLevelBar.value = CGFloat(currentAnimal.foodLevel) / 10.0;
        happinessBar.color = currentAnimal.color;
        foodLevelBar.color = currentAnimal.color;
        
    }
}

