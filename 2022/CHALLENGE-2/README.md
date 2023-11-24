# Challenge 2

Welcome to challenge two of Fermyon’s Advent of Spin!

This second challenge will introduce you to:

- Extending challenge one with:
  - Route Parameters
- Adding a second service to your Spin application
- Outbound HTTP for service-to-service calls

In-order to expand their PoC (Proof of Concept), the elves decided that they need to understand how multi-language components feel to develop and deploy. As such, they want their Hello World API to accept some personalization (name) and they want to ensure the casing is correct at all times for presentation - so they’re adding a new micro-service (component) to handle that.

## Spec

You can write your application in ANY language that compiles to WebAssembly. Though to skip the boilerplate, use `spin new` and use one of our language templates.

If you want to use a language not provided by `spin new`, you can join us in the Ferymon [Discord](https://discord.gg/AAFNfS7NGf) for setup assistance.

Your application must:

- Return HTTP 404 on `/`
- Expose an endpoint: `/lowercase`
  - Set a `Content-Type: application/json` header in the response
  - Accept a `POST` request with a JSON body containing a `value` property
  - Return the payload `{ message: lowercase_string_of_value }`
- Expose an endpoint: `/hello/*`
  - Set a `Content-Type: application/json` header in the response
  - Respond with a JSON payload. The JSON must have the key "message" with the value "Hello, world!"
  - When an extra segment of the path is available, example `/hello/RaWkOdE`, you must respond with that parameter in lower-case: "Hello, rawkode!"
    - While it's easy enough to lower-case in any language, ensure you add another service to handle this for you and use [`outbound_http`](https://github.com/fermyon/spin/tree/main/examples)

## Test

You can run our [Hurl](https://hurl.dev) test suite with `make test`. Ensure you have `hurl` installed.

## Submit

Enter your Fermyon Cloud endpoint as serviceUrl below and run the command

```shell
hurl -error-format long --variable serviceUrl="" submit.hurl
```
