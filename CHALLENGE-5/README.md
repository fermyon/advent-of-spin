# Challenge 5

Welcome to challenge five of Fermyon’s Advent of Spin!

The elves are really enjoying their usage of Spin and want to kick things up a notch and write their first stateful application. Ruh oh.

While the distance calculator service is pretty efficient and fast, they want to memoize the responses to avoid duplicate calculations. As such, you need to write a key value store using Planetscale.

Why Planetscale? Well, it has a pretty cool free tier and they provide HTTP APIS for their database, which is perfect for serverless and WASM environments.

Link: https://www.npmjs.com/package/@planetscale/database


## Spec

- Provide a `PUT` endpoint at `/${key}` that accepts any string based payload and writes it to the database
- Provide a `GET` endpoint at `/${key}` that returns the value for the given key
  - Response should be JSON `{ "value": "blah" }`

As always, if you need any assistance, you can join us in the Ferymon [Discord](https://discord.gg/AAFNfS7NGf).

## Test

You can run our [Hurl](https://hurl.dev) test suite with `make test`. Ensure you have `hurl` installed.

## Submit

There's no submission on this one, just have fun! If you've submitted your responses for the previous 4, we'll be in touch about the SWAG 😀
