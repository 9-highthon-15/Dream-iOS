//
//  ActionSheetView.swift
//  highthon
//
//  Created by 노가현 on 2/18/24.
//

import SwiftUI

struct CustomActionSheet: UIViewControllerRepresentable {
    @Binding var isPresented: Bool

    func makeUIViewController(context: Context) -> UIViewController {
        return UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if isPresented {
            let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

            let shareAction = UIAlertAction(title: "공유하기", style: .default)
            let reportAction = UIAlertAction(title: "신고하기", style: .destructive)
            let mailAction = UIAlertAction(title: "메일보기", style: .default)
            let cancelAction = UIAlertAction(title: "취소", style: .cancel) { _ in
                self.isPresented = false
            }

            alertController.addAction(shareAction)
            alertController.addAction(mailAction)
            alertController.addAction(reportAction)
            alertController.addAction(cancelAction)

            DispatchQueue.main.async {
                uiViewController.present(alertController, animated: true, completion: nil)
            }
        }
    }
}

struct ActionSheetView: View {
    @State private var isShowingActionSheet = false

    var body: some View {
        Button(action: {
            self.isShowingActionSheet = true
        }) {
            Image("point")
        }
        CustomActionSheet(isPresented: $isShowingActionSheet)
    }
}

#Preview {
    ActionSheetView()
}
