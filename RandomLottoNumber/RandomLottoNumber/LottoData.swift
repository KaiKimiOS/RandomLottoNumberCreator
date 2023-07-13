//
//  LottoData.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI


struct LottoData: Identifiable{
    
    var id : UUID = UUID()
    var number1: Int
    var number2: Int
    
    var randomResult : [Int] {
        get{
            var result = [Int]()
            while result.count < 6 {
                let num = (number1...number2).randomElement()!

                guard !result.contains(num) else { continue}

                result.append(num)

                
            }
            return result.sorted(by: <)
        }
    }
    
    func numColor(_ num:Int)->Color{
        switch num {
        case 1...10 :
            return .yellow
        case 11...20:
            return .cyan
        case 21...30:
            return .pink
        case 31...40:
            return .gray
        case 41...45:
            return .green
        case 46...50:
            return .orange
        case 51...60:
            return .brown
        default:
            return .red
        }
        
    }
}


