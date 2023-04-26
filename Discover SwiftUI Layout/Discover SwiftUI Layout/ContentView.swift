//
//  ContentView.swift
//  Discover SwiftUI Layout
//
//  Created by Omar Radwan on 19/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("shouldDisplayAnimation")
    var shouldDisplayAnimation = true
    
    var body: some View {
        ScrollView {
            VStack {
                images

                VStack(alignment: .leading) {
                    Text("title")
                        .font(.headline)
                        .foregroundColor(.red)
                    Text("subtitle")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    ratings
                    Text("description")
                }
                
            }
            .padding()
        }
    }
    
    var images: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack {
                    Image("cover")
                        .resizable()
                        .scaledToFit()
                    .frame(height: 350)
                    .id("cover")
                    
                    ForEach(0..<3) { i in
                        Image("image-\(i)")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                            .id("image-\(i)")
                    }
                }
            }.onAppear{
                guard shouldDisplayAnimation else {return}
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation {
                        proxy.scrollTo(
                            "image-0",
                            anchor: .trailing)
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        withAnimation {
                            proxy.scrollTo("cover")
                            shouldDisplayAnimation = false
                        }
                    }
                }
            }
        }
    }
    
    var ratings: some View {
        HStack(spacing: 0) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
