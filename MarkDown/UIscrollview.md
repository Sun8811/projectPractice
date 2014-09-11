#UIScrollView
----

##基本概念和用法
 - UIScrollView是一个可以滑动的视图，用于显示更多的内容
 - 可以通过手势放大和缩小显示的 
 
##常用属性

- contentSize 视图内容的大小
- tracking  还没有拖动的时候为YES 否则为NO (足迹，车辙)
- zoomBounding 		当内容放大到最大或者缩小到最小的时候值为YES
- zooming  	正在缩放的时候值是YES，否则为NO
- decelerating    手指松开后还在继续滚动中，为YES
- decelerationRate   手指放开后的减速率
- maximumZoomScale  能放大的最大比例
- minimumZoomScale  能缩小的最小比例
- pagingEnable   //分页滑动
- scrollEnable  //是否滑动
- showHorizontalScrollIndicator
- bounces  是否 有弹性
- contentInset  // 下拉刷新