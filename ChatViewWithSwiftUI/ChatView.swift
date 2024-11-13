//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by みんみん on 2024/11/13.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            // Message Area
            ScrollView {
                VStack {
                    ForEach(0..<15) { _ in
                        HStack {
                            Circle()
                                .frame(width: 60, height: 60)
                            Capsule()
                                .frame(height: 60)
                        }
                    }
                }
            }
            .background(.cyan)
        }
    }
}

#Preview {
    ChatView()
}
