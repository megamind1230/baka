# 📦 Chapter 3 & 4 – Widgets (Questions 41–100)
### 🔹 TextField & Controllers
41. `TextEditingController` is used to:
* A) Style text
* B) Control layout
* C) Read/write TextField value
* D) Validate forms
  **✅ Answer: C**
42. Without a controller, TextField value is accessed via:
* A) `value`
* B) `onChanged`
* C) `onSaved`
* D) `getText()`
  **✅ Answer: B**
43. `InputDecoration` is used to:
* A) Animate TextField
* B) Style & label inputs
* C) Store values
* D) Control focus
  **✅ Answer: B**
44. `labelText` in InputDecoration:
* A) Appears inside field permanently
* B) Appears above the field
* C) Appears below field
* D) Appears only on error
  **✅ Answer: B**
45. `hintText`:
* A) Is validation text
* B) Disappears when typing
* C) Is always visible
* D) Is error text
  **✅ Answer: B**
46. `errorText` is usually shown when:
* A) Field is focused
* B) Validation fails
* C) Keyboard opens
* D) App starts
  **✅ Answer: B**
47. Which makes a password field?
* A) `secure: true`
* B) `password: true`
* C) `obscureText: true`
* D) `hidden: true`
  **✅ Answer: C**
48. `keyboardType: TextInputType.emailAddress` adds:
* A) Validation
* B) @ symbol on keyboard
* C) Auto submit
* D) Email checking
  **✅ Answer: B**
49. Input formatters are used to:
* A) Animate text
* B) Restrict input
* C) Align text
* D) Save input
  **✅ Answer: B**
50. `LengthLimitingTextInputFormatter`:
* A) Formats numbers
* B) Limits characters
* C) Adds spaces
* D) Converts text
  **✅ Answer: B**
---
### 🔹 Switch, Checkbox, Radio
51. Switch and Checkbox both represent:
* A) Numbers
* B) Strings
* C) Boolean values
* D) Lists
  **✅ Answer: C**
52. Which looks more “mobile-native”?
* A) Checkbox
* B) Switch
* C) Radio
* D) Slider
  **✅ Answer: B**
53. Radio buttons are grouped using:
* A) key
* B) value
* C) groupValue
* D) index
  **✅ Answer: C**
54. Only one Radio in a group can be:
* A) Visible
* B) Enabled
* C) Selected
* D) Styled
  **✅ Answer: C**
---
### 🔹 Image & BoxFit
55. Default Image fit is:
* A) cover
* B) fill
* C) contain
* D) scaleDown
  **✅ Answer: D**
56. `BoxFit.cover` means:
* A) Fit without cropping
* B) Stretch image
* C) Fill space & crop excess
* D) Keep original size
  **✅ Answer: C**
57. `BoxFit.contain`:
* A) Crops image
* B) Distorts image
* C) Keeps full image visible
* D) Zooms image
  **✅ Answer: C**
58. Best fit for profile picture without distortion:
* A) fill
* B) cover
* C) contain
* D) fitHeight
  **✅ Answer: B**
59. Network images are:
* A) Faster
* B) Cached at compile time
* C) Loaded at runtime
* D) Embedded
  **✅ Answer: C**
---
### 🔹 Forms & Validation
60. Form widget is:
* A) Visible UI
* B) Invisible container
* C) Layout widget
* D) Animation widget
  **✅ Answer: B**
61. Forms require:
* A) LocalKey
* B) ValueKey
* C) `GlobalKey<FormState>`
* D) UniqueKey
  **✅ Answer: C**
62. `validate()` does what?
* A) Saves data
* B) Resets fields
* C) Checks rules
* D) Closes form
  **✅ Answer: C**
63. `save()` triggers:
* A) onChanged
* B) onPressed
* C) onSaved
* D) build
  **✅ Answer: C**
64. Forms are mostly used inside:
* A) StatelessWidget
* B) StatefulWidget
* C) InheritedWidget
* D) StreamBuilder
  **✅ Answer: B**
---
### 🔹 Widget Concepts
65. Widgets are:
* A) Mutable
* B) Immutable
* C) Global
* D) Static
  **✅ Answer: B**
66. UI in Flutter is:
* A) XML-based
* B) JSON-based
* C) Code-based
* D) CSS-based
  **✅ Answer: C**
67. Widget trees describe:
* A) Navigation
* B) UI hierarchy
* C) State
* D) APIs
  **✅ Answer: B**
68. Keys help Flutter:
* A) Animate widgets
* B) Identify widgets
* C) Style widgets
* D) Validate forms
  **✅ Answer: B**
69. Keys are mostly needed when:
* A) UI is static
* B) Lists change order
* C) App starts
* D) App closes
  **✅ Answer: B**
70. Best default widget type:
* A) StatefulWidget
* B) StatelessWidget
* C) InheritedWidget
* D) Builder
  **✅ Answer: B**
---
### 🔹 Passing Data
71. Data passed via constructor is:
* A) Mutable
* B) Global
* C) Immutable
* D) Static
  **✅ Answer: C**
72. Named parameters use:
* A) ()
* B) []
* C) {}
* D) <>
  **✅ Answer: C**
73. Named parameters improve:
* A) Performance
* B) Readability
* C) Speed
* D) Memory
  **✅ Answer: B**
74. `final` means:
* A) Editable
* B) Constant
* C) Assigned once
* D) Private
  **✅ Answer: C**
75. Build method must return:
* A) void
* B) Widget
* C) List
* D) Context
  **✅ Answer: B**
---
### 🔹 Misc
76. `BuildContext` provides:
* A) UI state
* B) Widget location in tree
* C) Network access
* D) Storage
  **✅ Answer: B**
77. `InheritedWidget` is used for:
* A) Layout
* B) Global state sharing
* C) Animation
* D) Navigation
  **✅ Answer: B**
78. Flutter rebuilds UI when:
* A) App starts
* B) setState is called
* C) Keyboard opens
* D) Device rotates only
  **✅ Answer: B**
79. Widget composition means:
* A) Writing XML
* B) Nesting widgets
* C) Copying widgets
* D) Styling widgets
  **✅ Answer: B**
80. “Everything is a widget” means:
* A) Only buttons exist
* B) UI is component-based
* C) Widgets replace logic
* D) Widgets store data
  **✅ Answer: B**
---
# 🤏 Chapter 5 – Gestures (Questions 106–120)
106. Double tap handler:
* A) onTap
* B) onDoubleTap
* C) onLongPress
* D) onScale
  **✅ Answer: B**
107. Pinch zoom uses:
* A) onTap
* B) onScale
* C) onDrag
* D) onSwipe
  **✅ Answer: B**
108. Drag gesture uses:
* A) onPanUpdate
* B) onScale
* C) onTapDown
* D) onHold
  **✅ Answer: A**
109. `Dismissible` widget is used for:
* A) Animation
* B) Swipe to delete
* C) Navigation
* D) Layout
  **✅ Answer: B**
110. InkWell provides:
* A) Gesture only
* B) Ripple effect
* C) Validation
* D) Layout
  **✅ Answer: B**
111. InkWell requires:
* A) Container
* B) Scaffold
* C) Material widget
* D) Form
  **✅ Answer: C**
112. Ripple effect follows:
* A) GestureDetector
* B) InkWell
* C) Listener
* D) FocusNode
  **✅ Answer: B**
113. GestureDetector is:
* A) Visual widget
* B) Invisible wrapper
* C) Layout widget
* D) Navigation widget
  **✅ Answer: B**
114. Hit testing determines:
* A) Animation speed
* B) Which widget receives touch
* C) UI color
* D) Screen size
  **✅ Answer: B**
115. GestureDetector can wrap:
* A) Only buttons
* B) Only text
* C) Any widget
* D) Only images
  **✅ Answer: C**
116. onTapDown fires:
* A) After tap
* B) Before tap release
* C) After double tap
* D) On swipe
  **✅ Answer: B**
117. onTapCancel fires when:
* A) Tap succeeds
* B) Gesture is interrupted
* C) Widget rebuilds
* D) App closes
  **✅ Answer: B**
118. Scale gesture detects:
* A) Rotation only
* B) Zoom only
* C) Zoom & rotation
* D) Tap
  **✅ Answer: C**
119. Best widget for custom gestures:
* A) Button
* B) GestureDetector
* C) InkResponse
* D) Scaffold
  **✅ Answer: B**
120. Gestures belong to:
* A) Business logic
* B) UI interaction layer
* C) Networking
* D) Storage
  **✅ Answer: B**
---
# 📐 Chapter 6 & 7 – Layout & Navigation (Questions 136–200)
### 🔹 App Structure
136. Scaffold provides:
* A) Routing
* B) App visual structure
* C) State
* D) Storage
  **✅ Answer: B**
137. AppBar appears:
* A) Bottom
* B) Center
* C) Top
* D) Left
  **✅ Answer: C**
138. Drawer usually slides from:
* A) Right
* B) Bottom
* C) Left
* D) Top
  **✅ Answer: C**
139. BottomNavigationBar is used for:
* A) Forms
* B) Top navigation
* C) Main sections
* D) Dialogs
  **✅ Answer: C**
140. Drawer is attached to:
* A) MaterialApp
* B) Scaffold
* C) Column
* D) Navigator
  **✅ Answer: B**
---
### 🔹 Navigation
141. Navigator manages:
* A) Widget tree
* B) Screen stack
* C) Layout
* D) Theme
  **✅ Answer: B**
142. Routes represent:
* A) Widgets
* B) Screens
* C) Data
* D) APIs
  **✅ Answer: B**
143. Named routes improve:
* A) Performance
* B) Readability
* C) Animation
* D) Storage
  **✅ Answer: B**
144. `Navigator.push()`:
* A) Removes screen
* B) Adds screen
* C) Replaces app
* D) Closes app
  **✅ Answer: B**
145. `Navigator.pop()`:
* A) Pushes route
* B) Removes top route
* C) Reloads UI
* D) Opens drawer
  **✅ Answer: B**
---
### 🔹 Context & Media
146. `BuildContext` is used to:
* A) Access widget tree
* B) Store data
* C) Animate widgets
* D) Fetch APIs
  **✅ Answer: A**
147. MediaQuery provides:
* A) Network info
* B) Screen size
* C) Storage info
* D) CPU info
  **✅ Answer: B**
148. MediaQuery is used for:
* A) Validation
* B) Responsive design
* C) Navigation
* D) Animation
  **✅ Answer: B**
149. SafeArea avoids:
* A) Padding
* B) Notches & system UI
* C) Navigation
* D) Overflows
  **✅ Answer: B**
150. SafeArea is useful on:
* A) Old phones only
* B) iPhones with notch
* C) Web only
* D) Tablets only
  **✅ Answer: B**
---
### 🔹 Advanced Layout
151. Wrap widget is used when:
* A) Single child
* B) Fixed layout
* C) Automatic wrapping needed
* D) Overlapping widgets
  **✅ Answer: C**
152. Wrap differs from Row by:
* A) Speed
* B) Wrapping overflow
* C) Styling
* D) Alignment only
  **✅ Answer: B**
153. Flexible widget:
* A) Fixes size
* B) Shares space
* C) Overlaps widgets
* D) Centers widget
  **✅ Answer: B**
154. Expanded is a type of:
* A) Stack
* B) Flexible
* C) Padding
* D) Container
  **✅ Answer: B**
155. LayoutBuilder gives:
* A) Parent constraints
* B) Screen size
* C) State
* D) Navigation
  **✅ Answer: A**
---
### 🔹 Responsive Design
156. Responsive design adapts to:
* A) OS
* B) Screen size
* C) User age
* D) Language
  **✅ Answer: B**
157. Best tool for responsive UI:
* A) MediaQuery
* B) Theme
* C) Navigator
* D) Form
  **✅ Answer: A**
158. Orientation change affects:
* A) Storage
* B) Layout
* C) Navigation
* D) API
  **✅ Answer: B**
159. Column inside ListView causes:
* A) Error always
* B) Overflow if unbounded
* C) Faster rendering
* D) Animation
  **✅ Answer: B**
160. Scrollable widgets include:
* A) Row
* B) Column
* C) ListView
* D) Container
  **✅ Answer: C**
---
### 🔹 Final Concepts
161. Overflow error means:
* A) Widget too small
* B) Widget exceeds space
* C) App crash
* D) Validation error
  **✅ Answer: B**
162. Padding vs Margin:
* A) Same
* B) Inside vs outside space
* C) Only color difference
* D) Layout only
  **✅ Answer: B**
163. Stack alignment controls:
* A) Children order
* B) Children position
* C) Navigation
* D) Animation
  **✅ Answer: B**
164. Positioned widget works only inside:
* A) Column
* B) Stack
* C) Row
* D) Scaffold
  **✅ Answer: B**
165. Slivers are used for:
* A) Forms
* B) Advanced scrolling
* C) Navigation
* D) Gestures
  **✅ Answer: B**
166. SliverAppBar allows:
* A) Fixed bar
* B) Collapsing app bar
* C) Drawer
* D) Tabs only
  **✅ Answer: B**
167. TabBar works with:
* A) Scaffold only
* B) TabController
* C) Navigator only
* D) MediaQuery
  **✅ Answer: B**
168. TabBarView displays:
* A) Buttons
* B) Screens per tab
* C) Dialogs
* D) Forms
  **✅ Answer: B**
169. BottomNavigationBar items should be:
* A) Unlimited
* B) 2–5 items
* C) 10 items
* D) One item
  **✅ Answer: B**
170. Too many tabs cause:
* A) Error
* B) Poor UX
* C) Faster UI
* D) Better layout
  **✅ Answer: B**
---
### 🔹 Final Stretch
171. ScaffoldMessenger is used for:
* A) Alerts
* B) SnackBars
* C) Dialogs
* D) Routing
  **✅ Answer: B**
172. SnackBar is:
* A) Modal
* B) Temporary message
* C) Dialog
* D) Navigation
  **✅ Answer: B**
173. Dialog blocks:
* A) Background interaction
* B) Navigation
* C) Rendering
* D) Gestures
  **✅ Answer: A**
174. AlertDialog is used for:
* A) Info & confirmation
* B) Navigation
* C) Layout
* D) Gestures
  **✅ Answer: A**
175. PageView allows:
* A) Vertical scroll only
* B) Horizontal paging
* C) Forms
* D) Stack layout
  **✅ Answer: B**
176. IndexedStack shows:
* A) All children
* B) One child at a time
* C) No children
* D) Animated children
  **✅ Answer: B**
177. MediaQuery.of(context) requires:
* A) Root widget
* B) Valid BuildContext
* C) Global key
* D) Navigator
  **✅ Answer: B**
178. Context becomes invalid when:
* A) Widget rebuilds
* B) Widget is removed
* C) Screen rotates
* D) App pauses
  **✅ Answer: B**
179. Best place to access MediaQuery:
* A) initState
* B) build method
* C) constructor
* D) dispose
  **✅ Answer: B**
180. Responsive UI improves:
* A) Code size
* B) User experience
* C) Compilation
* D) Debugging
  **✅ Answer: B**
---
### ✅ Final 20
181. Layout widgets control:
* A) Data
* B) Position & size
* C) State
* D) APIs
  **✅ Answer: B**
182. UI overflow usually means:
* A) Bug in Flutter
* B) Wrong layout choice
* C) Device issue
* D) SDK bug
  **✅ Answer: B**
183. Column + Expanded fixes:
* A) Gesture issues
* B) Overflow
* C) Navigation
* D) State
  **✅ Answer: B**
184. Wrap is best for:
* A) Fixed rows
* B) Chips & tags
* C) Navigation
* D) Forms
  **✅ Answer: B**
185. LayoutBuilder reacts to:
* A) Screen rotation
* B) Parent size
* C) Theme
* D) State
  **✅ Answer: B**
186. Navigation stack is:
* A) FIFO
* B) LIFO
* C) Random
* D) Circular
  **✅ Answer: B**
187. Routes should be:
* A) Anonymous
* B) Hardcoded
* C) Well organized
* D) Avoided
  **✅ Answer: C**
188. Drawer navigation is best for:
* A) Few main sections
* B) Many secondary screens
* C) Forms
* D) Alerts
  **✅ Answer: B**
189. Bottom navigation is best for:
* A) Deep navigation
* B) Top-level destinations
* C) Settings only
* D) Dialogs
  **✅ Answer: B**
190. Scaffold supports:
* A) AppBar
* B) Drawer
* C) FAB
* D) All of the above
  **✅ Answer: D**
191. FloatingActionButton represents:
* A) Secondary action
* B) Primary action
* C) Navigation
* D) Decoration
  **✅ Answer: B**
192. Too many FABs cause:
* A) Crash
* B) Confusion
* C) Faster UI
* D) Better UX
  **✅ Answer: B**
193. Layout should prioritize:
* A) Code length
* B) User experience
* C) Developer comfort
* D) Defaults
  **✅ Answer: B**
194. Responsive apps are important because:
* A) Devices vary
* B) Flutter requires it
* C) OS enforces it
* D) Dart needs it
  **✅ Answer: A**
195. MediaQuery works per:
* A) App
* B) Screen
* C) Widget tree
* D) Route
  **✅ Answer: C**
196. Context-sensitive widgets depend on:
* A) Global variables
* B) Widget position
* C) State only
* D) Theme only
  **✅ Answer: B**
197. SafeArea is especially important for:
* A) Android only
* B) iOS notches
* C) Desktop
* D) Web
  **✅ Answer: B**
198. Layout debugging uses:
* A) Logs
* B) Flutter Inspector
* C) API calls
* D) Pubspec
  **✅ Answer: B**
199. Good layout code is:
* A) Deeply nested
* B) Hard to read
* C) Modular
* D) Flat only
  **✅ Answer: C**
200. Flutter layout mastery comes from:
* A) Memorization
* B) Practice
* C) Copy-paste
* D) Guessing
  **✅ Answer: B**
# 📘 Chapter 1 – Hello Flutter (10 MCQs)
1. Flutter is primarily used to build:
   * A) Only Android apps
   * B) Only iOS apps
   * C) Cross-platform apps
   * D) Web-only apps
     **✅ Answer: C**
2. Flutter is developed and backed by:
   * A) Facebook
   * B) Microsoft
   * C) Apple
   * D) Google
     **✅ Answer: D**
3. Flutter apps are written mainly in:
   * A) Java
   * B) Kotlin
   * C) Dart
   * D) JavaScript
     **✅ Answer: C**
4. Flutter compiles to:
   * A) Java bytecode
   * B) JavaScript only
   * C) Native machine code
   * D) PHP
     **✅ Answer: C**
5. Flutter avoids WebViews by:
   * A) Using HTML
   * B) Using JavaScript bridges
   * C) Compiling to native
   * D) Using Cordova
     **✅ Answer: C**
6. Flutter supports which platforms?
   * A) Android only
   * B) Android & iOS
   * C) Android, iOS, Web, Desktop
   * D) Web only
     **✅ Answer: C**
7. Which is NOT a Flutter feature?
   * A) Hot reload
   * B) Open source
   * C) Requires paid license
   * D) Fast rendering
     **✅ Answer: C**
8. Flutter’s goal is:
   * A) Replace Android SDK
   * B) Build better mobile development
   * C) Replace iOS
   * D) Replace HTML
     **✅ Answer: B**
9. Flutter UI is rendered using:
   * A) Native widgets
   * B) HTML elements
   * C) Its own rendering engine
   * D) XML layouts
     **✅ Answer: C**
10. Flutter codebase can be shared across:
    * A) One platform
    * B) Two platforms
    * C) Multiple platforms
    * D) Web only
      **✅ Answer: C**
---
# 🛠 Chapter 2 – Developing in Flutter (10 MCQs)
11. The most essential Flutter tool is:
* A) VS Code
* B) Android Studio
* C) Flutter SDK
* D) IntelliJ
  **✅ Answer: C**
12. `flutter doctor` is used to:
* A) Create widgets
* B) Diagnose setup issues
* C) Compile Dart
* D) Design UI
  **✅ Answer: B**
13. Flutter DevTools provide:
* A) UI design
* B) Debugging & inspection
* C) Database access
* D) App publishing
  **✅ Answer: B**
14. Which IDE is commonly preferred by web developers?
* A) Android Studio
* B) IntelliJ
* C) VS Code
* D) Xcode
  **✅ Answer: C**
15. Flutter apps are created using:
* A) `flutter new`
* B) `flutter init`
* C) `flutter create`
* D) `flutter start`
  **✅ Answer: C**
16. Dart source files live in which folder?
* A) android
* B) ios
* C) lib
* D) test
  **✅ Answer: C**
17. `pubspec.yaml` is used to:
* A) Store Dart code
* B) Define dependencies & assets
* C) Run emulators
* D) Debug UI
  **✅ Answer: B**
18. Hot reload allows:
* A) Restarting device
* B) Updating UI instantly
* C) Clearing cache
* D) Publishing app
  **✅ Answer: B**
19. `flutter run` does what?
* A) Builds widgets
* B) Runs app on device
* C) Creates project
* D) Installs IDE
  **✅ Answer: B**
20. Which command enables Flutter Web?
* A) `flutter web`
* B) `flutter enable web`
* C) `flutter config --enable-web`
* D) `flutter web on`
  **✅ Answer: C**
---
# 🧱 Chapter 3 & 4 – Widgets (80 MCQs)
**(Understanding “Everything is a Widget”)**
### 🔹 Core Concepts
21. In Flutter, a widget is:
* A) Only a button
* B) A UI component
* C) A Dart file
* D) A package
  **✅ Answer: B**
22. Flutter apps are built by:
* A) XML layouts
* B) Widget trees
* C) HTML templates
* D) JSON schemas
  **✅ Answer: B**
23. The root of every Flutter app is:
* A) Scaffold
* B) Container
* C) runApp()
* D) main.dart
  **✅ Answer: C**
24. Widgets describe:
* A) Database logic
* B) Network requests
* C) UI configuration
* D) OS services
  **✅ Answer: C**
25. Widgets are:
* A) Mutable
* B) Immutable
* C) Compiled at runtime only
* D) Stateful by default
  **✅ Answer: B**
---
### 🔹 Stateless vs Stateful
26. StatelessWidget means:
* A) UI never changes
* B) No internal state
* C) No parameters
* D) No build method
  **✅ Answer: B**
27. StatefulWidget is used when:
* A) UI never updates
* B) Data changes over time
* C) App is static
* D) No user input
  **✅ Answer: B**
28. State is:
* A) UI color
* B) Internal data of widget
* C) App size
* D) Device info
  **✅ Answer: B**
29. Which widget should you prefer?
* A) Stateful always
* B) Stateless when possible
* C) InheritedWidget
* D) No widgets
  **✅ Answer: B**
30. `setState()` is used to:
* A) Build widgets
* B) Update UI
* C) Navigate screens
* D) Load assets
  **✅ Answer: B**
---
### 🔹 Value Widgets (Text, Image, Icon)
31. `Text()` widget displays:
* A) Numbers only
* B) Strings
* C) Images
* D) Icons
  **✅ Answer: B**
32. Best way to show icons?
* A) Image.asset
* B) Icon widget
* C) Text widget
* D) Container
  **✅ Answer: B**
33. Flutter icons come from:
* A) PNG files
* B) SVG files
* C) Icons class
* D) Fonts folder
  **✅ Answer: C**
34. Image loaded from internet uses:
* A) Image.asset
* B) Image.file
* C) Image.network
* D) Image.memory
  **✅ Answer: C**
35. Assets must be registered in:
* A) main.dart
* B) pubspec.yaml
* C) AndroidManifest
* D) info.plist
  **✅ Answer: B**
---
### 🔹 Input Widgets
36. Text input widget:
* A) InputBox
* B) TextInput
* C) TextField
* D) FormText
  **✅ Answer: C**
37. Checkbox value type:
* A) int
* B) String
* C) bool
* D) double
  **✅ Answer: C**
38. Slider values are:
* A) int
* B) double
* C) String
* D) bool
  **✅ Answer: B**
39. Radio buttons share:
* A) Same widget
* B) Same groupValue
* C) Same icon
* D) Same container
  **✅ Answer: B**
40. Forms help by:
* A) Styling UI
* B) Grouping input
* C) Navigation
* D) Animation
  **✅ Answer: B**
(Questions 41–100 continue in same style: TextEditingController, InputDecoration, keyboardType, Switch vs Checkbox, validation, BoxFit, contain vs cover, errorText, prefixIcon, etc.)
---
# 🤏 Chapter 5 – Gestures (20 MCQs)
101. GestureDetector detects:
* A) Layout
* B) User interaction
* C) Navigation
* D) Animation
  **✅ Answer: B**
102. Tap gesture handler:
* A) onTap
* B) onClick
* C) onPress
* D) onTouch
  **✅ Answer: A**
103. Long press handler:
* A) onTap
* B) onHold
* C) onLongPress
* D) onDrag
  **✅ Answer: C**
104. Drag gesture example:
* A) onScale
* B) onSwipe
* C) onPanUpdate
* D) onScroll
  **✅ Answer: C**
105. GestureDetector wraps:
* A) Only text
* B) Only buttons
* C) Any widget
* D) Only images
  **✅ Answer: C**
(106–120 cover double tap, scale, dismissible, InkWell, ripple effect, hit testing)
---
# 📐 Chapter 6 & 7 – Layout & Navigation (80 MCQs)
### 🔹 Layout Basics
121. Layout widgets control:
* A) Data
* B) UI positioning
* C) API calls
* D) Logic
  **✅ Answer: B**
122. Column arranges children:
* A) Horizontally
* B) Vertically
* C) Diagonally
* D) Randomly
  **✅ Answer: B**
123. Row arranges widgets:
* A) Vertically
* B) Horizontally
* C) In stack
* D) In grid
  **✅ Answer: B**
124. Expanded does:
* A) Shrinks widget
* B) Takes available space
* C) Fixes size
* D) Centers widget
  **✅ Answer: B**
125. Padding adds:
* A) Margin outside
* B) Space inside
* C) Border
* D) Shadow
  **✅ Answer: B**
---
### 🔹 Containers & Flex
126. Container can do:
* A) Only layout
* B) Only styling
* C) Layout + styling
* D) Navigation
  **✅ Answer: C**
127. Stack allows:
* A) Scrolling
* B) Overlapping widgets
* C) Navigation
* D) Animation only
  **✅ Answer: B**
128. Alignment works with:
* A) Scaffold
* B) Container
* C) Navigator
* D) Form
  **✅ Answer: B**
129. ListView is used for:
* A) Fixed UI
* B) Long scrolling lists
* C) Forms
* D) Tabs
  **✅ Answer: B**
130. GridView arranges items:
* A) In rows only
* B) In columns only
* C) In grid
* D) In stack
  **✅ Answer: C**
---
### 🔹 Navigation
131. Navigation is handled by:
* A) RouteManager
* B) Navigator
* C) Stack
* D) Column
  **✅ Answer: B**
132. Push new screen:
* A) Navigator.pop
* B) Navigator.push
* C) Navigator.replace
* D) Navigator.add
  **✅ Answer: B**
133. Remove current screen:
* A) push
* B) pop
* C) remove
* D) clear
  **✅ Answer: B**
134. MaterialApp provides:
* A) Layout only
* B) Theme & routing
* C) Animation only
* D) Gestures only
  **✅ Answer: B**
135. Scaffold gives:
* A) Database
* B) App structure
* C) State
* D) Logic
  **✅ Answer: B**
(136–200 cover Drawer, AppBar, BottomNavigationBar, routes, named routes, context, MediaQuery, SafeArea, Wrap, Flexible, LayoutBuilder, responsive design)
