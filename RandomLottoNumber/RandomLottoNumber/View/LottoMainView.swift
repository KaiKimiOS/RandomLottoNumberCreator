//
//  LottoMainView.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI

struct LottoMainView: View {
    
    @StateObject var lottoNumber: LottoViewModel = LottoViewModel()
    @State var addTrueFalse: Bool = false
    @State var starRange: String = ""
    @State var endRange: String = ""
    
    var body: some View {
        
        VStack {
            List(lottoNumber.numbers) { data in
                
                NumberCircleView(lottoNumber: lottoNumber, lotto: data)
                
            }
            .listStyle(.plain)
            
            HStack{
                Button {
                    lottoNumber.addNumber(
                        num1: Int(starRange) ?? 1,
                        num2: Int(endRange) ?? 45
                    )
                } label: {
                    Text("재생성")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                }
            }
            .background(Color.blue)
            .cornerRadius(10)
            
        }.navigationTitle("로또번호 생성기")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        addTrueFalse = true
                    } label: {
                        Label("추가", systemImage: "plus")
                    }
                    
                }
            }
        
            .sheet(isPresented: $addTrueFalse) {
                AddView(lottoViewModel: lottoNumber, starRange: $starRange, endRange: $endRange, addTrueFalse: $addTrueFalse)
            }
        
    }
    
}






struct LottoMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            LottoMainView()
        }
    }
}
