//
//  QuestionModel.swift
//  PET
//
//  Created by Ivana Jovasevic on 2017-10-26.
//  Copyright © 2017 TEAMX. All rights reserved.
//
enum emotionID
{
    case happy
    case sad
    case angry
    case excited
    case scared
}
enum state
{
    case initial
    case correct
    case incorrect
    case skipped
    
}

let TIER_SIZE = 2;
let QUESTION_SIZE = 10;
import Foundation

class QuestionClass {
    
    init(){
        self.questionID = 0
        self.levelID = 0
        self.emotion = .happy
        self.errCnt = 0
        self.questionState = .initial
    }
    
    
    
    var questionID: Int
    var levelID: Int
    var emotion: emotionID
    var errCnt: Int
    var questionState: state
    //file reference to load image file
}

class QArray{
    var questionArray = [[QuestionClass]]()
    
    init() {
        for i in 0..<TIER_SIZE {
            for j in 0..<QUESTION_SIZE {
                questionArray[i][j].levelID = i+1
                questionArray[i][j].questionID = j+1
            }
        }
        
    }
}
