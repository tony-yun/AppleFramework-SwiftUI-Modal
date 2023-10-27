//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var vm = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    // binding으로 넘어와서 $ 추가.
                    ForEach($vm.models) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture{
                                vm.isShowingDetail = true
                                vm.selectedItem = item
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
        .sheet(isPresented: $vm.isShowingDetail) {
            FrameworkDetailView(framework: $vm.selectedItem)
        }
        // modal 창이 아니고 전체화면은 .sheet말고 .fullScreenCover 사용
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
