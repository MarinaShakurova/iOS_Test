//
//  Tests.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class Tests {
    enum Test{
        case first
        case second
        case third
        
        var question11: String{
            switch self{
            case .first: return "1. Нет, можно вызвать только public"
            case .second: return "2. Одни методы не могут вызывать другие"
            case .third: return "3. Да, можно"
            }
        }
        
        var question12: String{
            switch self{
            case .first: return "1. После каждого выполнения блока finally"
            case .second: return "2. Перед тем, как сборщик мусора уничтожит объект"
            case .third: return "3. После того, как сборщик мусора уничтожит объект"
            }
        }
        
        var question13: String{
            switch self{
            case .first: return "Да"
            case .second: return "Нет"
            case .third: return "Не знаю"
            }
        }
        
        var question14: String{
            switch self{
            case .first: return "yield"
            case .second: return "wait"
            case .third: return "notify"
            }
        }
        
        var question15: String{
            switch self{
            case .first: return "HashMap"
            case .second: return "LinkedHashMap"
            case .third: return "WeakHashMap"
            }
        }
    }
    
    let answered: Test
    var status: Int
    let name: String
    var correct: Int
    let description: String
    
    var answerAction: (()-> Void)?
    
    init(answered: Test, status: Int, name: String, description: String, correct: Int){
        self .answered = answered
        self.status = status
        self.name = name
        self.description = description
        self.correct = correct
    }
}
