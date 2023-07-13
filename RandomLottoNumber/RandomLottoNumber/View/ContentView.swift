//
//  ContentView.swift
//  RandomLottoNumber
//
//  Created by kaikim on 2023/07/10.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        NavigationStack {
                
            HStack {
                LottoMainView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
