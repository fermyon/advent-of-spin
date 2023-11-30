# Challenge 1 - 2023

Welcome to Challenge One of Fermyon’s Advent of Spin 2023! 🥳

This first challenge will introduce you to:

- Spin CLI
- Using the Key Value Store
- Serving static content
- Deploying your first application to Cloud (or somewhere else publicly available)
- The Advent of Spin test harness and submission process

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction to this yearly challenge. 

This year the stakes are higher, and the challenges...more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa's new web application. Your task is to help the elves get the project up and running before Christmas Eve.

The elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, and can help answer questions along the way.

## Spec

You can write your application in ANY language that compiles to WebAssembly. To skip the boilerplate, use `spin new` and use one of our language templates.

Your application must:

- Have a front-end hosted on `/index.html`. The elves will check if an `index.html` file exists in the root of you application, and will take a screenshot to show Santa. Santa likes pretty things, especially pictures of animals, landscapes, or anything that has the Christmas spirit 🎄 

- The application also has to help Santa and the elves remember what presents to hand out. So the application need to be able to store Matt's (Head-Elf at Fermyon) top-three wishes. You'll have to implement an endpoint at `/data`. The endpoint must support two HTTP methods: POST and GET.🎅

- The elves will call `/data?advent` - using `advent` as the key for Matt's wishlist. 🎁 

The body of the POST call to `/data?advent` will contain a JSON object which can look like this:
```JSON
{
    "value": "<Matt's automated wishlist>"
}
```
- When posting, the elves expect an HTTP status code `201` to be returned.
- The elves will then call `/data?advent` once again using the HTTP GET method, and expect to see the wishlist items they just posted.
- This time the elves expect an HTTP status code of 200, and a body looking like this:
```JSON
{
    "value": "<Matt's automated wishlist>"
}
```
- Also the header in the response should contain `Content-Type: application/json` 

## Test

You can run our [Hurl](https://hurl.dev) test suite with `hurl --test test.hurl`, which will carry out tests, similar to what the elves will use you application for, when you submit it. Ensure you have `hurl` [installed](https://hurl.dev/docs/installation.html).

## Submit

Once the application is deployed, enter the endpoint as serviceUrl below and run the command - e.g., `https://x-mas.fermyon.app`

> Note: Do not add a trailing `/` to the serviceUrl.

```shell
hurl --error-format long --variable serviceUrl="https://x-mas.fermyon.app" submit.hurl
```

After the submission, Matt's wish list should be stored in your applications Key-Value store. Go check out what Matt wants for Christmas! 

## Nobody Must Code Alone!

Please don't hesitate to reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server if you have any questions, they may be busy this time a year, but they are always ready to help and answer questions. This is a great opportunity to meet others in the community as well. We’ll also post on [X/Twitter](https://twitter.com/fermyontech) and [LinkedIn](https://www.linkedin.com/company/fermyon), dropping some helpful resources and videos.

Remember there are prizes for each challenge. So it may be you, to whom the elves will deliver a nice award to.

Note: If you submit using Fermyon Cloud, we will contact you for any awards you may win. If you aren't using the Fermyon cloud to host your application, please reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) to register your submission
