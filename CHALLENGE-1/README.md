# Challenge 1

Welcome to challenge one of Fermyon’s Advent of Spin!

This first challenge will introduce you to:

- Spin CLI
- Deploying first application to Cloud
- Advent of Spin test harness
- Submission process

We want to keep this first challenge rather trivial, but push it a little beyond “Hello, world!”.

The elves have decided that Santa wants to migrate away from AWS (Arctic Web Services), but their legacy systems weren’t built to be API first.

Let’s change that by deploying our first JSON Hello World! API endpoint.

## Spec

You can write your application in ANY language that compiles to WebAssembly. Though to skip the boilerplate, use `spin new` and use one of our language templates.

If you want to use a language not provided by `spin new`, you can join us in the Ferymon [Discord](https://discord.gg/AAFNfS7NGf) for setup assistance.

Your application must:

- Set a `Content-Type: application/json` header in the response
- Respond with a JSON payload. The JSON must have the key "message" with the value "Hello, world!"

## Test

You can run our [Hurl](https://hurl.dev) test suite with `make test`. Ensure you have `hurl` installed.

## Submit

Enter your Fermyon Cloud endpoint as serviceUrl below and run the command

```shell
hurl --variable serviceUrl="" submit.hurl
```
