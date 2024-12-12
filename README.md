# 📒 Phonebook App

---

## 🍀 소개
**Phonebook App**은 iOS 플랫폼에서 연락처를 효율적으로 관리하기 위해 설계된 앱입니다. 사용자는 이름, 전화번호, 프로필 이미지를 저장하고 관리할 수 있으며, `Pokemon API`를 통해 랜덤 프로필 이미지를 생성할 수 있습니다. 앱은 `MVC 패턴`을 기반으로 구조화되어 있으며, `UserDefaults`를 활용해 데이터를 안전하게 저장합니다.

---

## ✨ 주요 기능

1. **연락처 목록 보기**
   - `UITableView`를 사용해 저장된 연락처 목록을 직관적으로 표시.
   - 연락처 정보: 이름, 전화번호, 프로필 이미지.

2. **새 연락처 추가**
   - 사용자 입력 폼:
     - 프로필 이미지는 랜덤으로 생성 가능.
     - 이름 및 전화번호 입력 기능.
   - 연락처를 저장 후 메인 화면에서 즉시 업데이트.

3. **랜덤 프로필 이미지 생성**
   - [Pokemon API](https://pokeapi.co/)를 활용해 랜덤 프로필 이미지를 제공.
   - 사용자 입력 창에 즉시 반영.

4. **데이터 저장 및 로드**
   - `UserDefaults`를 사용해 연락처 정보를 저장 및 불러오기 지원.
   - 앱 재실행 시에도 데이터 유지.

---

## 📂 프로젝트 구조 (MVC)

```
📆 phonebook
├── 📂 phonebook
│   ├── 📂 Controller
│   │   ├── 🔥 MainViewController.swift
│   │   └── 🔥 PhoneBookViewController.swift
│   ├── 📂 Model
│   │   ├── 📄 Contact.swift
│   │   ├── 📄 ContactManager.swift
│   │   ├── 📄 NetworkManager.swift
│   │   └── 📄 Pokemon.swift
│   ├── 📂 Resources
│   │   ├── 🎨 Assets.xcassets
│   │   ├── 📋 Info.plist
│   │   └── 🖥️ LaunchScreen.storyboard
│   ├── 📂 View
│   │   ├── 📂 MainView
│   │   │   ├── 📄 MainView.swift
│   │   │   └── 📄 MainViewCell.swift
│   │   └── 📂 PhoneBookView
│   │       └── 📄 PhoneBookView.swift
│   └── AppDelegate.swift
```

---

## 💡 사용 기술

- **Swift 5**
- **UIKit**: UI 컴포넌트 활용 및 화면 구성.
- **SnapKit**: 코드로 Auto Layout 구현.
- **UserDefaults**: 데이터 저장.
- **Pokemon API**: 랜덤 프로필 이미지 제공.

---

## 🔧 요구사항

- **Xcode 버전**: 16.1 이상
- **iOS 지원 버전**: iOS 16.0 이상
- **Swift 버전**: Swift 5 이상

---

## 🚀 실행 방법

1. **프로젝트 클론**  
   GitHub에서 프로젝트를 클론합니다.
   ```bash
   git clone https://github.com/your-repo/phonebook.git
   cd phonebook
   ```

2. **Xcode에서 열기**  
   Xcode에서 프로젝트 폴더를 엽니다.

3. **시뮬레이터 실행**  
   Xcode에서 빌드 타겟을 선택하고, iOS 시뮬레이터에서 실행합니다.

---

## 💻 실행 화면

| 연락처 목록 | 새 연락처 추가 | 랜덤 이미지 생성 |
|:--------:|:--------:|:--------:|
| <img src="https://via.placeholder.com/250" width="250"> | <img src="https://via.placeholder.com/250" width="250"> | <img src="https://via.placeholder.com/250" width="250"> |

---

## 🛠 트러블슈팅

개발 과정에서 발생했던 문제들을 해결한 내용을 [여기](https://velog.io/@daydreamplace/%EC%A0%9C%EB%AA%A9%EC%97%86%EC%9D%8C)에서 확인할 수 있습니다.

---

## 📚 프로젝트를 통해 배운 점

- **MVC 아키텍처**를 활용한 파일 구조화 및 관심사 분리.
- **API 통신**과 데이터를 활용한 UI 업데이트 경험.
- **UserDefaults**를 통한 간단한 데이터 영구 저장.

---

## 🖇️ 레퍼런스

- [Pokemon API 공식 문서](https://pokeapi.co/)
- [SnapKit 공식 문서](https://snapkit.io/docs/)
- [Swift Documentation](https://swift.org/documentation/)

