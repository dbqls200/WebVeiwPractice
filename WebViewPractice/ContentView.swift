//
//  ContentView.swift
//  WebViewPractice
//
//  Created by 김유빈 on 2023/02/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            // Safari App으로 이동해서 Web 열기
            SafariApp()
            
            // WKWebView로 Web 열기
            WKWebViewPracticeView()
            
            // SFSafariView로 Web 열기
            SFSafariViewPractice()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
