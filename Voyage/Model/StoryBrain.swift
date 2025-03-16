//
//  StoryBrain.swift
//  Voyage
//
//  Created by Deepanshu Bajaj on 12/12/24.
//

import Foundation
import UIKit

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "You\'ve been working all day, dreaming of what to eat after your 13 and a half hour shift. You\'ve got two options this late at night.",
            image: UIImage(named: "story1"),
            choice1: "Taco Bell", choice1Destination: 2,
            choice2: "Chick-fil-a", choice2Destination: 1
        ),
        Story(
            title: "You pull up to the drive through, but it was too late. They have already closed! There is just enought time to make it to Taco Bell if you hurry now. What shall you do?",
            image: UIImage(named: "story2"),
            choice1: "Drift your way back to Taco Bell.", choice1Destination: 2,
            choice2: "Go home and wonder what could have been.", choice2Destination: 5
        ),
        Story(
            title: "You gaze into the light at the end of the tunnel. It's the beautiful menu glowing in the night. You have two options to satisfy your cravings.",
            image: UIImage(named: "story3"),
            choice1: "The Cheesy Gordita Crunch", choice1Destination: 4,
            choice2: "The Legendary Beefy Crunch Burrito  ", choice2Destination: 3
        ),
        Story(
            title: "May the Legend of the Beefy Crunch Burrito be told for generations to come.",
            image: UIImage(named: "story4"),
            choice1: "Restart", choice1Destination: 0,
            choice2: "Try Another Time", choice2Destination: 0
        ),
        Story(
            title: "May your future be cheesy and forever crunchy.",
            image: UIImage(named: "story5"),
            choice1: "Restart", choice1Destination: 0,
            choice2: "Try Another Time", choice2Destination: 0
        ),
        Story(
            title: "I\'m not mad, I\'m just dissapointed.",
            image: UIImage(named: "story6"),
            choice1: "Restart", choice1Destination: 0,
            choice2: "Try Another Time", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getStoryImage() -> UIImage {
        return stories[storyNumber].image
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    func getChoiceDestination() -> Int {
        return storyNumber
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}
