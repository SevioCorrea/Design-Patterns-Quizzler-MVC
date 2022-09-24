//
//  Question.swift
//  Design Patterns Quizzler
//
//  Created by Sévio on 25/08/22.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
