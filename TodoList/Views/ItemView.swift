//
//  ItemView.swift
//  TodoList
//
//  Created by Russell Gordon on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    //receive a reference from parentView
    @Bindable var viewModel: TodoListViewModel
    
    var body: some View {
        Label(
            title: {
                TextField("", text: $currentItem.title, axis: .vertical).onSubmit {
                    viewModel.update(todo: currentItem)
                }
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                        viewModel.update(todo: currentItem)
                    }
                
            }
        )
    }
}

#Preview {
    @State var previewViewModel = TodoListViewModel()
    return List {
        ItemView(currentItem: .constant(firstItem), viewModel: previewViewModel)
        ItemView(currentItem: .constant(secondItem), viewModel: previewViewModel)
    }
}
