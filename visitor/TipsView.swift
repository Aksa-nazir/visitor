//
//  TipsView.swift
//  visitor
//
//  Created by aksa nazir on 06/02/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips",withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    var body: some View {
        List(tips, id: \.text) { tip in
            if tip.children != nil {
               Label(tip.text, systemImage: "quote.bubble")
                .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        navigationTitle("tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
