//
//  SFSafariViewPractice.swift
//  WebViewPractice
//
//  Created by 김유빈 on 2023/02/14.
//

import SwiftUI
import SafariServices

struct SFSafariViewPractice: View {
    @State var showSafari = false
    @State var urlString = "https://www.naver.com"

    var body: some View {
        Button(action: {
            self.urlString = "https://www.naver.com"
            self.showSafari = true
        }) {
            Text("SFSafariView로 보여주기")
        }
        .sheet(isPresented: $showSafari) {
            SafariView(url:URL(string: self.urlString)!)
        }
    }
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}

struct SFSafariViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        SFSafariViewPractice(urlString: "https://www.naver.com")
    }
}
