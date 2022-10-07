# MPS model concurrent access (and thread safety)

## [Plugins | Undoable actions](https://www.jetbrains.com/help/mps/2021.1/progress-indicators.html#undoableactions)

-   Changes to the models require undoable actions, which can be executed through the  executeCommandInEDT()

## [Open API - accessing models from code](https://www.jetbrains.com/help/mps/2021.1/open-api-accessing-models-from-code.html)

### [Using commands](https://www.jetbrains.com/help/mps/2021.1/open-api-accessing-models-from-code.html#usingcommands)

1.  models and nodes can be changed through **undoable actions**
2.  modules, their properties and dependencies can be performed through **repository commands**
3.  radical changes to the project, such as a VCS update or a complete project reload, need an  **external update action**  to be performed - no node-level notifications are fired in such cases, only **model replaced** or **module changed** notifications are triggered.

### [Concurrent access](https://www.jetbrains.com/help/mps/2021.1/open-api-accessing-models-from-code.html#concurrentaccess)

-   you need to obtain a read or write action before you start performing your operations
-   Commands get all write permissions automatically and so always gain exclusive access to the repository
-   update the model in an action, that can be undone, i.e. executeCommand
-   Handy baseLanguage extension **jetbrains.mps.lang.access**.

## [IntelliJ | General Threading Rules](https://plugins.jetbrains.com/docs/intellij/general-threading-rules.html?q=commands)

-   Read/write lock mechanism
-   **Reading** data is allowed from any thread.
-   **Reading** data from the UI thread does not require any special effort. However, **read operations** performed from any other thread need to be wrapped in a **read action**.

-   **Writing** data is only allowed from the UI thread, and write operations always need to be wrapped in a **write action**.
-   To pass control from a background thread to the Event Dispatch Thread (EDT) ApplicationManager.getApplication().invokeLater() .

## [IntelliJ | What are the rules of working with Documents?](https://plugins.jetbrains.com/docs/intellij/documents.html#what-are-the-rules-of-working-with-documents)

-   The general read/write action rules are in effect
-   Besides, any **operations which modify the contents of the document** must be wrapped in a **command**.