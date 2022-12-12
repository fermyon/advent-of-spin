# Challenge 4

Welcome to challenge four of Fermyon’s Advent of Spin!

This second challenge won't introduce you to any new concepts or SDKs, but we don't want to solidify the mindset that working with WebAssembly as a target, using your existing languages and toolchains, mean you can leverage those mature eco-systems of packages and examples.

This challenge is to help the elves write their first utility for Santa's big round the world trip. They need a service that can detect the distance between two points, as described by longitude and latitude coordinates.


## Spec

Add a new service to your Spin application that can calculate the distance between two lat/long coordinates. The distance will be calculated in nautical miles, rounded to the closest .1 mile.

- 33.94nm == 34nm
- 33.44nm == 33nm

As always, if you need any assistance, you can join us in the Ferymon [Discord](https://discord.gg/AAFNfS7NGf).

Your application must:

- Accept a JSON payload via POST request to `/distance-latlong`
  - Payload shape: `{ d1: { lat: 0f, long: 0f }, d2: { lat: 0f, long: 0f }}`
- Respond with the `Content-Type: application/json` header
  - Payload response: shape `{ distance: 0f }`

## Test

You can run our [Hurl](https://hurl.dev) test suite with `make test`. Ensure you have `hurl` installed.

## Submit

Enter your Fermyon Cloud endpoint as serviceUrl below and run the command

```shell
hurl --variable serviceUrl="" submit.hurl
```
