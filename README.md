```markdown
ios-project-template/
├── AppDelegate
│   ├── AppDelegate.swift
│   └── SceneDelegate.swift
├── Base
│   └── BaseViewController.swift
├── Constants
│   ├── Noti.swift
│   ├── UserDefaults.swift
│   └── Verify.swift
├── Controllers
│   ├── Page1
│   │   ├── Base.lproj
│   │   │   └── Main.storyboard
│   │   └── ViewController.swift
│   └── Page2
├── Extensions
│   ├── String+Extension.swift
│   └── UIImage+Extension.swift
├── Models
│   ├── model1.swift
│   └── model2.swift
├── Modules
│   ├── Account
│   ├── Articles
│   └── Players
├── Resources
│   └── Assets.xcassets
│       ├── AppIcon.appiconset
│       │   └── Contents.json
│       └── Contents.json
├── Supporting\ Files
│   ├── Base.lproj
│   │   └── LaunchScreen.storyboard
│   └── Info.plist
├── Utils
│   ├── DelegateHelper
│   │   └── DelegateHelper.swift
│   ├── Libs
│   ├── Network
│   ├── Stores
│   └── UIComponents
│       ├── Alert
│       ├── Hud
│       └── Input
└── Views
    ├── View1
    └── View2
```

> `Modules` 是根据功能抽象出来的模块，App 可以全局调用，一般只包含业务逻辑，不涉及 UI 层面的操作
>
> `UIComponents` 里放的是自定义的 UI 组件，可以灵活地创建不同样式和功能的 UI 界面，给  `Views` 和 `Controlles` 调用