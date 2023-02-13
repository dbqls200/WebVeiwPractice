//
//  SafariApp.swift
//  WebViewPractice
//
//  Created by 김유빈 on 2023/02/14.
//

import SwiftUI

struct SafariApp: View {
    var body: some View {
        Link(destination: URL(string: "https://www.naver.com" )!) {
            Text("Safari App으로 이동해서 보여주기")
        }
    }
}

struct SafariApp_Previews: PreviewProvider {
    static var previews: some View {
        SafariApp()
    }
}
