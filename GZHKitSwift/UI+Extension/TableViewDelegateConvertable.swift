//
//  TableViewDelegateConvertable.swift
//  GZHKitSwiftExample
//
//  Created by 顾振华 on 2018/8/2.
//  Copyright © 2018年 顾振华. All rights reserved.
//

import UIKit.UITableView

@objc protocol TableViewDelegateConvertable: UITableViewDelegate {
    @objc optional var willDisplayCell: (_ tableView: UITableView, _ cell: UITableViewCell, _ indexPath: IndexPath) -> Void { get set }
}

//extension TableViewDelegateConvertable {
//    
//    public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        willDisplayCell?(tableView, cell, indexPath)
//    }
//    
//    public func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
//        
//    }
//    
//    
//    public func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
//    
//    }
//    
//    public func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
//        
//    }
//    
//    public func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
//        
//    }
//    
//    public func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool {
//        
//    }
//}
