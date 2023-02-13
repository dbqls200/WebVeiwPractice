//
//  WKWebViewPractice.swift
//  WebViewPractice
//
//  Created by 김유빈 on 2023/02/14.
//

import SwiftUI
import WebKit

struct WKWebViewPractice: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: url) else {
            return WKWebView()
        }
        let webView = WKWebView()

        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: UIViewRepresentableContext<WKWebViewPractice>) {
        guard let url = URL(string: url) else { return }
        
        webView.load(URLRequest(url: url))
    }
}

struct WKWebViewPracticeView: View {
    @State var showWK = false

    var body: some View {
        
        Button {
            self.showWK.toggle()
        } label: {
            Text("WKWebView로 보여주기")
                .sheet(isPresented: $showWK) {
                    WKWebViewPractice(url: "https://www.naver.com")
                }
        }
    }
}

struct WKWebViewPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        WKWebViewPracticeView()
    }
}
