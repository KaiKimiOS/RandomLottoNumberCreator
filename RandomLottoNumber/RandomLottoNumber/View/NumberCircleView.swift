//
//  NumberCircleView.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI

struct NumberCircleView: View {
    
    var lottoNumber : LottoViewModel
    var lotto: LottoData
    
    var body: some View {
       
            HStack{
                ForEach(lotto.randomResult, id: \.self) { number in
                    
                    ZStack{
                        
                        Circle()
                            .foregroundColor(lotto.numColor(number))
                            .frame(width: 50)
                        
                        Text("\(number)")
                    }
                }
            }
            .padding()
        
            .contextMenu{
                Button {
                    lottoNumber.removeNumber(lotto)
                } label: {
                    Image(systemName: "trash.slash")
                    Text("삭제")
                }
            }
        }
    }
//Sharlink 에서 저장된 숫자가 안나옴
    



struct NumberCircleView_Previews: PreviewProvider {
    static var previews: some View {
        NumberCircleView(lottoNumber: LottoViewModel(), lotto: LottoData(id: UUID(), number1: 1, number2: 45))
    }
}
