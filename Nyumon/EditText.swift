//
//  EditText.swift
//  Nyumon
//
//  Created by USER on 2024/07/11.
//

import SwiftUI

func docURL(_ fileName: String) -> URL? {
    let fileManager = FileManager.default
    do {
        let docsUrl = try fileManager.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        let url = docsUrl.appendingPathComponent(fileName)
        return url
    } catch {
        return nil
    }
}

func saveText(_ textData: String, _ fileName: String) {
    guard let url = docURL(fileName) else {
        return
    }
    do {
        let path = url.path
        try textData.write(toFile: path, atomically: true, encoding: .utf8)
    } catch let error as NSError {
        print(error)
    }
}

func loadText(_ fileName: String) -> String? {
    guard let url = docURL(fileName) else {
        return nil
    }
    do {
        let textData = try String(contentsOf: url, encoding: .utf8)
        return textData
    } catch {
        return nil
    }
}

struct EditText: View {
    @FocusState var isInputActive: Bool
    @State private var theText: String = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $theText)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading, .bottom, .trailing])
                .navigationTitle("メモ")
                .focused($isInputActive)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("読み込む") {
                            if let data = loadText("sample.txt") {
                                theText = data
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("保存") {
                            isInputActive = false
                            saveText(theText, "sample.txt")
                        }
                    }
                }
        }
    }
}

#Preview {
    EditText()
}
