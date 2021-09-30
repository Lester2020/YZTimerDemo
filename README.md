# YZTimerDemo

在使用NSTimer，如果使用不得当特别会引起循环引用，造成内存泄露。为了解决这个问题我尝试下面几种实现方式。

## 解决方案

- 在controller中的dealloc前是否timer
- 对定时器NSTimer封装
- 使用iOS10以后的API解决
- 使用NSProxy进行解决
