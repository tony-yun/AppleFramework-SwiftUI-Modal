//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 윤태웅 on 10/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework?
    
    var body: some View {
        VStack(spacing: 20) {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
            } else {
                Text("Nothing selected.")
            }
            
            Button(action: {
                
            }, label: {
                Text("Button")
            })
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
        }.padding()
    }
}

#Preview {
    FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
}
