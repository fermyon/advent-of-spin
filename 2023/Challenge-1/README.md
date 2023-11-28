# Challenge 1 - 2023

Welcome to challenge one of Fermyon’s Advent of Spin - the 2023 edition!

This first challenge will introduce you to:

- Spin CLI
- Using the Key Value Store
- Serving static content
- Deploying first application to Cloud (or somewhere else publily available)
- The advent of Spin test harness and submission process

If this is your first time with Spin, [challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is a very easy introduction to Spin. this year we want to push it a bit.

The elves have decided to help Santa use one of the easiest and best serverless experiences for Santa's new web application. Your task s to help the elves get the project going.

The elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, and can help answer questions along the way.

## Spec

You can write your application in ANY language that compiles to WebAssembly. Though to skip the boilerplate, use `spin new` and use one of our language templates.

Your application must:

- Have a front-end hosted on `/index.html`. The elves will check if an index.html file exists in the root of you application, and will take a picture to show Santa. Santa likes pretty things, especially pretty pictures of animals, landscapes, or something to help bring along the Christmas spirit.
- But the application also has to help Santa and the elves remembering all the presents to hand out. So the application need to be able to store Matt (the Fermyon head of elves) top-three wishes. You'll have to implement an endpoint at `/data`. The endpoint mst support two HTTP methods: POST and GET.
- The elves will call `/data?advent` - using `advent` as the key for Matt's wishlist. The body of the POST call to `/data?advent` will contain a JSON object which can look like this:
```JSON
{
    "value": "<Matt's automated wishlist>"
}
```
-When posting, the elves expect an HTTP status code 201 to be returned.
- The elves will then call `/data?advent` once again using the HTTP GET method, and expect to see the wishlist items they just posted.
- This time the elves expect an HTTP status code of 200, and a body looking like this:
```JSON
{
    "value": "<Matt's automated wishlist>"
}
```
- Also the header in the response should contain `Content-Type: application/json` 

## Test

You can run our [Hurl](https://hurl.dev) test suite with `hurl --test test.hurl`, which will carry out tests, similar to what the elves will use you application for, when you submit it. Ensure you have `hurl` installed.

## Submit

Once the application is deployed, enter the endpoint as serviceUrl below and run the command - e.g., `x-mas.fermyon.app`

> Note: Do not add a trailing `/` to the serviceUrl.

```shell
hurl --error-format long --variable serviceUrl="x-mas.fermyon.app" submit.hurl
```

After the submission, Matt's wish list should be stored in your applications KV store. Go check out what Matt wants for Christmas! 

Please don't hesitate to reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server if you have any questions, they may be busy this time a year, but they are always ready to help and answer questions.

Remember, it may be you, who the elves will deliver a nice award to, if you do this really well.

Note: If you're not using the Fermyon cloud to host your application, please reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, so we can register your submission. If you submit using Fermyon Cloud, we will contact you for any awards you may win.