//
//  TabButtonView.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct TabButtonView: View {
    @State var selectedTag = 1
    var body: some View {
        TabView(selection: $selectedTag) {
            HomeTabView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }.tag(1)
            
            WeatherTabView()
                .tabItem {
                    Label("お天気", systemImage: "cloud.sun")
                }
                .tag(2)
                .badge("!")
            
            NewsTabView()
                .tabItem {
                    Label("ニュース", systemImage: "newspaper")
                }
                .tag(3)
                .badge(2)
        }
    }
}

struct HomeTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 100)
            Text("HOME").font(.system(size: 20))
        }
    }
}

struct WeatherTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun")
                .resizable()
                .frame(width: 100, height: 100)
            Text("お天気ページ").font(.system(size: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint.opacity(0.2))
        .ignoresSafeArea()
    }
}

struct NewsTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "newspaper")
                .resizable()
                .frame(width: 100, height: 100)
            Text("ニュースと解説").font(.system(size: 20))
        }
    }
}
#Preview {
    TabButtonView()
}

#Preview {
    HomeTabView()
}

#Preview {
    WeatherTabView()
}

#Preview {
    NewsTabView()
}
