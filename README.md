UITableViewHeaderFractionalHeightBug
====================================

In both iOS 6 and 7, setting UITableView's tableHeaderView with a fractional height causes gutter after tableHeaderView.

1) Run the project
2) Tap the "Make tableHeaderView's height 1" row a few times. The height of the tableHeaderView changes to 1.
3) Tap the "Make tableHeaderView's height 0.5" row a few times. The height of the tableHeaderView changes to 0.5 but each time you tap it, the gutter after the tableHeaderView increases.
