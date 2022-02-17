# apps

flutter run 

## Android 

- Fist run 

I/flutter (27680): StatefulWidget - createElement
I/flutter (27680): StatefulWidget - createState
I/flutter (27680): StatefulWidget::State - initState
I/flutter (27680): StatefulWidget::State - didChangeDependencies
I/flutter (27680): StatefulWidget::State - build

- Press + 
I/flutter (27680): StatefulWidget::State - setState
I/flutter (27680): StatefulWidget::State - build

a. On App buton HOME
Step 1:
- On App > Press HOME
I/flutter (27680): AppLifecycleState - inactive
I/flutter (27680): AppLifecycleState - paused

Step 2: From list app, open again
I/flutter (27680): AppLifecycleState - resumed

b. On App -> press buton BACK (single screen) 

Step 1:
- On App > Press HOME
I/flutter (27680): AppLifecycleState - inactive
I/flutter (27680): AppLifecycleState - paused
I/flutter (27680): AppLifecycleState - detached


Step 2: From list app, open again 
I/flutter (27680): StatelessWidget - createElement
I/flutter (27680): StatelessWidget - build
I/flutter (27680): StatefulWidget - createElement
I/flutter (27680): StatefulWidget - createState
I/flutter (27680): StatefulWidget::State - initState
I/flutter (27680): StatefulWidget::State - didChangeDependencies
I/flutter (27680): StatefulWidget::State - build

Giống như việc mở app


c. On App buton TASK/Tắt màn hình
- On App > Press TASK 
I/flutter (27680): AppLifecycleState - inactive
I/flutter (27680): AppLifecycleState - paused

- Press TASK -> move back 
I/flutter (27680): AppLifecycleState - resume



## iOS 

- Fist run 

I/flutter (27680): StatefulWidget - createElement
I/flutter (27680): StatefulWidget - createState
I/flutter (27680): StatefulWidget::State - initState
I/flutter (27680): StatefulWidget::State - didChangeDependencies
I/flutter (27680): StatefulWidget::State - build

- Press + 
I/flutter (27680): StatefulWidget::State - setState
I/flutter (27680): StatefulWidget::State - build

a. On App buton HOME
Step 1:
- On App > Press HOME
flutter: AppLifecycleState - inactive
flutter: AppLifecycleState - paused

Step 2: From list app, open again(open app from Home)
flutter: AppLifecycleState - inactive
flutter: AppLifecycleState - resumed

