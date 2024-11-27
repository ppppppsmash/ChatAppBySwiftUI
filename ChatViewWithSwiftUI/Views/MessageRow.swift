//
//  MessageRow.swift
//  ChatViewWithSwiftUI
//
//  Created by みんみん on 2024/11/14.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack(alignment: .top) {
            userThumb
            messageText
            messageState
            Spacer()
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
        .background(.cyan)
}

extension MessageRow {
    private var userThumb: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 48, height: 48)
    }
    
    private var messageText: some View {
        Text("hello world!")
            .padding()
            .background(.white)
            .cornerRadius(30)
            // Text(Date().description)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("既読")
            Text(formattedDataString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    
    private var formattedDataString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}
