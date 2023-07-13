//
//  AddView.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI

struct AddView: View {
    
    var lottoViewModel: LottoViewModel
    @Binding var starRange: String
    @Binding var endRange: String
    @Binding var addTrueFalse: Bool
    
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .leading) {
                
                Group{
                    TextField("시작범위(기본값:1)", text: $starRange)
                    TextField("마지막범위(기본값:45)", text: $endRange)
                    Spacer()
                    
                }
                .padding()
                .font(.largeTitle)
                Spacer()
                
                HStack {
                    Spacer()
                    Button {
                        lottoViewModel.addNumber(num1: Int(starRange) ?? 1 , num2:Int(endRange) ?? 45)
                        addTrueFalse = false
                        
                    } label: {
                        Text("추가하기").font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
                
            }.navigationTitle("범위설정")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
//
//struct AddView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddView()
//    }
//}
