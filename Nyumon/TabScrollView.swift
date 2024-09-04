//
//  TabScrollView.swift
//  Nyumon
//
//  Created by USER on 2024/07/16.
//

import SwiftUI

struct TabScrollView: View {
    @State var selectedTag2 = 1
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = .gray.withAlphaComponent(0.5)
    }
    
    
    
    var body: some View {
        TabView(selection: $selectedTag2) {
            HomeTabView2().tag(1)
            WeatherTabView2().tag(2)
            NewsTabView2().tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

struct HomeTabView2: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 100)
            Text("HOME").font(.system(size: 20))
        }
    }
}

struct WeatherTabView2: View {
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

struct NewsTabView2: View {
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
    TabScrollView()
}

#Preview {
    HomeTabView2()
}

#Preview {
    WeatherTabView2()
}

#Preview {
    NewsTabView2()
}


