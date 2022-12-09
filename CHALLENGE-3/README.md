# Challenge 3

Welcome to challenge three of Fermyon’s Advent of Spin!

This second challenge will introduce you to:

- Bartholomew

In the next phase of Santa's software rewrite, the Christmas elves will use the Bartholomew framework to add a static website to the API first design they built using Fermyon's Spin framework. This will allow Santa to easily manage and share information about his upcoming trip delivering presents to children around the world. The elves are excited to use the Bartholomew framework to add this important feature to the new software.

## Spec

Add a Bartholomew component. This is a static site generator that will allow you to add a homepage to be the basis of our API in future challenges.

As always, if you need any assistance, you can join us in the Ferymon [Discord](https://discord.gg/AAFNfS7NGf).

Your application must:

- Return HTTP 200 on `/`
  - Set a `Content-Type: text/html` header in the response
  - There must be a `<h1>` on the page that contains the text: "Welcome to the Advent of Spin!"
  - This page must also contain the text "Santa's on his way" in the body

## Test

You can run our [Hurl](https://hurl.dev) test suite with `make test`. Ensure you have `hurl` installed.

## Submit

Enter your Fermyon Cloud endpoint as serviceUrl below and run the command

```shell
hurl --variable serviceUrl="" submit.hurl
```
