#UITouch
##事件的类型
- 触摸事件
- 运动事件
- 远程控制事件

##事件处理方法
`响应者类通过复写以下方法，可以监听触摸事件`
   
```   
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
```
##UITouch类中得常用属性

- window     触摸产生时所处的窗口
- view		触摸产生的所处的视图	
- tapCount   短时间内轻击屏幕的次数
- phase
- locationInView
- previousLocationInView
- 
##事件传递

`点击屏幕 -> ios捕获触摸将其打包成UIEvent对象 -> 事件队列 ->UIApplication对象从事件队列中取出最前面的事件并将其分发 -> 应用程序的主窗口 UIWindow -> 在由窗口对象发送事件给“第一响应者(触摸的视图)处理”
`
##响应者链的基本概念
***UIResponder是所有响应者对象的基类***   
`
第一响应者 -> 传递给父视图 -> 其视图控制器 -> UIWindow - UIApllacation
`
#UIGesturerecognize 手势
##-轻拍   
***UITapGestureRecognizer***

- numberOfTapsRequired 轻拍几下
- numberOfTouchRequired 需要几个手指    
- [self.view addGestureRecognizer:tapGestureRecognizer]  添加手势

##-缩放   
***UIPinchGestureRecognizer***

- scale 缩放比例
- velocity 速率
 
##-旋转  
***UIRotationGestureRecognizer***

- rotation  旋转
- velocity  速率

##-横扫   
***UISwipeGestureRecognizer***  

- numberOfTouchesRequired 手指数
- direction  横扫方向
- typedef enum {   
   UISwipeGestureRecognizerDirectionRight = 1 << 0,   
   UISwipeGestureRecognizerDirectionLeft  = 1 << 1,   
   UISwipeGestureRecognizerDirectionUp    = 1 << 2,   
   UISwipeGestureRecognizerDirectionDown  = 1 << 3   
}  UISwipeGestureRecognizerDirection;

##-拖动  
***UIPanGestureRecognizer***

- maximunNumberOfTouches 最多手指数
- minimunNumberOfTouches 最少手指数

##-点击屏幕边缘
   
***UIScreenEdgePanGestureRecognizer***

- edges
- 
##-长按  
***UILongPressGestureRecognizer***

- minimunPressDuration 最小按压时间
- numberOfTapsRequired 需要手指数