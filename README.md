# SwiftGithubOpenAPI
Taking Github's OpenAPI.yaml file and pairing it with swift-openapi-generator

## Setup
This uses [Github OpenAPI](https://github.com/github/rest-api-description) OpenAPI yaml as source input. Specificaly [this](https://github.com/github/rest-api-description/blob/31d31192bacb4e883b7c66c930f4a95078bcaa5a/descriptions-next/api.github.com/dereferenced/api.github.com.deref.yaml) file.

This branch has GeneratedSources in each project folder and no swift-openapi-generator plugin enabled.

The following was done to make it build:
1. All yaml `paths:` operations were removed.
2. `webhooks:` was renamed to `paths:`
3. All `externalDocs:` were removed

## Basic usage
When using `JSONDecoder` to decode the types, you'll want to use `.iso8601` date decoding.
```swift
import Push

func foo(data: Data) throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let data = pushEventString.data(using: .utf8)!
        
        let decoded = try decoder.decode(Push.Components.Schemas.WebhookPush.self, from: data)
        print(decoded)
}
```
