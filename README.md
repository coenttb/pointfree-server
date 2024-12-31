# pointfree-web: A modular web foundation in Swift

`pointfree-web` is a modern fork of [pointfreeco/swift-web](https://www.github.com/pointfreeco/swift-web), supplemented with types from [pointfreeco/pointfreeco](https://www.github.com/pointfreeco/pointfreeco) providing modular tools to simplify web development in Swift.

## Features and Modules

pointfree-web is modular by design. Here's an overview of its core components:

### **AppSecret**
- Manages secure app secrets with ease.

### **DatabaseHelpers**
- Simplifies interactions with your database through reusable helper functions.

### **DecodableRequest**
- Decodes incoming HTTP requests directly into Swift types using `Codable`.

### **FoundationPrelude**
- Extends Foundation utilities, including support for HTTP client operations and URL requests.

### **HttpPipeline**
- Core HTTP pipeline utilities, including:
  - `Conn`: Connection handler.
  - `Method`: HTTP method definitions.
  - `Middleware`: Middleware utilities for request/response processing.
  - `Response`: Simplifies HTTP response creation.
  - `SignedCookies`: Utilities for working with signed cookies.
  - `Status`: HTTP status management.

### **LoggingDependencies**
- Implements lightweight logging utilities to integrate with your app's dependency system.

### **MediaType**
- Provides definitions and utilities for handling media types.

### **NioDependencies**
- Extensions for working seamlessly with SwiftNIO.

### **UrlFormEncoding**
- Utilities for URL form decoding and encoding, tailored for modern web apps.

## Installation

To use pointfree-web in your project, add it to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/pointfree-web.git", branch: "main")
]
```

## Related projects

* [coenttb/pointfree-html](https://www.github.com/coenttb/coenttb/pointfree-html): A Swift DSL for type-safe HTML forked from [pointfreeco/swift-html](https://www.github.com/pointfreeco/swift-html) and updated to the version on [pointfreeco/pointfreeco](https://github.com/pointfreeco/pointfreeco).
* [swift-css](https://www.github.com/coenttb/swift-css): A Swift DSL for type-safe CSS.
* [swift-html](https://www.github.com/coenttb/swift-html): A Swift DSL for type-safe HTML & CSS, integrating [swift-css](https://www.github.com/coenttb/swift-css) and [pointfree-html](https://www.github.com/coenttb/pointfree-html).
* [coenttb-html](https://www.github.com/coenttb/coenttb-html): Extends [swift-html](https://www.github.com/coenttb/swift-html) with additional functionality and integrations for HTML, Markdown, Email, and printing HTML to PDF.
* [coenttb-web](https://www.github.com/coenttb/coenttb-web): A collection of features for your Swift server, with integrations for Vapor.
* [coenttb-com-server](https://www.github.com/coenttb/coenttb-com-server): The backend server for coenttb.com, written entirely in Swift and powered by [Vapor](https://www.github.com/vapor/vapor) and [coenttb-web](https://www.github.com/coenttb/coenttb-web).
* [swift-languages](https://www.github.com/coenttb/swift-languages): A cross-platform translation library written in Swift.

## Feedback is Much Appreciated!
  
If you’re working on your own Swift web project, feel free to learn, fork, and contribute.

Got thoughts? Found something you love? Something you hate? Let me know! Your feedback helps make this project better for everyone. Open an issue or start a discussion—I’m all ears.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
> 
> [Link on Linkedin](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

pointfree-web is open-source software licensed under the MIT License. See the [LICENSE](LICENSE).
