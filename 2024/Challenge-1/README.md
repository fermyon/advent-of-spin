# Challenge 1 - 2024

Welcome to **Challenge One** of Fermyon’s **Advent of Spin 2024**! 🥳

This first challenge will introduce you to:

- Spin CLI
- Implementing a simple frontend
- Serving static content
- Using the Key-Value Store
- Deploying your first application to Cloud (or somewhere else publicly available)
- The Advent of Spin test harness and submission process

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction to this yearly challenge.

This year the stakes are a bit higher, and the challenges are more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa's latest app idea and make use of different features provided by Spin, such as [Key-Value Stores](https://developer.fermyon.com/spin/v3/kv-store-api-guide), [Serverless AI](https://developer.fermyon.com/spin/v3/serverless-ai-api-guide) and [Component Dependencies](https://developer.fermyon.com/spin/v3/writing-apps#using-component-dependencies). Your task is to help the elves get the project up and running before Christmas Eve.

The elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, and can help answer questions along the way.

## 🎅🏽 Santa's App Idea

As you can imagine, Santa and his elves are busy these days. Once built, the new app will support them in completing several Christmas-related tasks. With every challenge, you are asked to add a new feature to the application.

### Spec

The first challenge is about laying the foundation for Santa's new app and implementing a simple wishlist management feature.

You can write Spin apps using ANY language that compiles to WebAssembly. To skip the boilerplate, use `spin new` and use one of our existing templates.

*Hint: As you'll be asked to add more and more features to the Spin App during **Advent of Spin 2024**, we recommend starting using the `http-empty` template and adding more and more components to the Spin App using the `spin add` command.* 

#### Create a Wishlist Management Frontend

Santa and his elves really need a simple frontend to get things done as quick as possible. The first feature is all about dealing with massive amounts of wishlists that flood Santa's mailbox.

Build a simple frontend allowing Santa and his elves to add and list all wishlists. 

Although Santa has no opinions on the tech stack you choose, he asked his elves to check if an `index.html` file exists in the root of your application and to take a screenshot to show Santa your amazing work. 🎄

Kids all around the world get supper excited when it's time to create their wishlists for Christmas. Although all those wishlists differ in color, form, and length, the elves were able to discover a  common pattern over the past centuries:

```json
{
 name: "John Doe",
 items: [
        "Ugly Sweater",
        "Cozy Gloves"
    ]
}
```

*Hint: Santa really loves Christmas-themed apps. The elves told us that there are plenty of image-generation AIs available, that you could use the generate awesome images. We caught the elves talking about [Chat GPT](https://chatgpt.com) and [Microsoft Designer](https://designer.microsoft.com/), maybe it's worth using them to create a Christmas-y image for your frontend app.*


#### Create a Wishlist Management Backend

Santa thought about using a Key-Value Store to ensure all wishlists are stored securely and are instantly available if needed. Luckily, Spin SDKs dramatically streamline interaction with Key-Value stores and make exposing necessary features for managing wishlists over HTTP easy. 

Add another component to your Spin App. The API component should expose the following endpoints:

- `GET /api/wishlists` - To retrieve all wishlists at once
- `POST /api/wishlists`- To store a new wishlist

The elves will store wishlists by sending `POST` requests to `/api/wishlists`

The body of the `POST` call to `/api/wishlists` will contain the wishlist as JSON:

```json
{
    "name": "John Doe",
    "items": [
        "Ugly Sweater",
        "Gingerbread House",
        "Stanley Cup Winter Edition"
    ]
}
```

When posting, the elves expect an HTTP status code `201` to be returned. Requests with mal-formatted payloads should respond with a *Bad Request* HTTP status code (`400`).

While browsing all wishlists using the frontend, a `GET` should be sent to `/api/wishlists` which must respond with an array containing all wishlists. The response must also have a `Content-Type` HTTP header set to `application/json`. The schema of the response body must look like this:

```JSON
[ 
    {
        "name": "John Doe",
        "items": [
            "Ugly Sweater",
            "Gingerbread House",
            "Stanley Cup Winter Edition"
        ]
    },
    {
        "name": "Jane Smith",
        "items": [
            "Holiday Costume for Jack 🐶",
            "Decision-Making Dice",
        ]
    },
]
```

## Test

You can run our [Hurl](https://hurl.dev) test suite (`test.hurl`), which will carry out tests, similar to what the elves will use your application for, when you submit it. Ensure you have `hurl` [installed](https://hurl.dev/docs/installation.html).

```shell
hurl --test test.hurl
```

## Submit

Once the application is deployed, enter the endpoint as serviceUrl below and run the command - e.g., `https://x-mas.fermyon.app`

> Note: Do not add a trailing `/` to the serviceUrl.

```shell
hurl --error-format long --variable serviceUrl="https://x-mas.fermyon.app" submit.hurl
```

If you want to participate in the swag award, go [here](../../README.md#Prizes) and check out how to participate.

## Nobody Must Code Alone!

Please don't hesitate to reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server if you have any questions, they may be busy this time a year, but they are always ready to help and answer questions. This is a great opportunity to meet others in the community as well. We’ll also post on [X/Twitter](https://twitter.com/fermyontech) and [LinkedIn](https://www.linkedin.com/company/fermyon), dropping some helpful resources and videos.

Remember there are prizes for each challenge. So it may be you, to whom the elves will deliver a nice award to.

Note: If you submit using Fermyon Cloud, we will contact you for any awards you may win. If you aren't using the Fermyon cloud to host your application, please reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) to register your submission
