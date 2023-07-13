//
//  LottoViewModel.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI



class LottoViewModel : ObservableObject{
    
    @Published var numbers: [LottoData] = [ LottoData(number1: 1, number2: 45)]
    
    func addNumber(num1:Int = 1, num2:Int = 45){
        numbers.append(LottoData(number1: num1, number2: num2))
    }

    func removeNumber(_ number:LottoData) {
        var index: Int = 0
        
        for i in self.numbers {
            if number.id ==  i.id {
                self.numbers.remove(at: index)
            }
            index += 1
        }
    }
}
