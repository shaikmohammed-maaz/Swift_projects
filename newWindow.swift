//
//  newWindow.swift
//  BasicsUi
//
//  Created by Maaz on 23/02/24.
//

import SwiftUI

struct newWindow: View {
        @Environment(\.openWindow) private var openWindow
        var body: some View {
            Button("Connection doctor") {
                openWindow(id: "connection-doctor") // Match the window's identifier.
            }
        }
}

#Preview {
    newWindow()
}
