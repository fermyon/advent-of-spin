# Challenge 2 - 2024

Welcome to **Challenge Two** of Fermyon’s **Advent of Spin 2024**! 🥳

As part of the second challenge, you will dive into component dependencies, one of the features that has been added to Spin as part of the recent [Spin 3.0 release](https://www.fermyon.com/blog/introducing-spin-v3).

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction to this yearly challenge.

This year the stakes are a bit higher, and the challenges are more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa's latest app idea and make use of different features provided by Spin, such as [Key-Value Stores](https://developer.fermyon.com/spin/v3/kv-store-api-guide), [Serverless AI](https://developer.fermyon.com/spin/v3/serverless-ai-api-guide) and [Component Dependencies](https://developer.fermyon.com/spin/v3/writing-apps#using-component-dependencies). Your task is to help the elves get the project up and running before Christmas Eve.

The elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, and can help answer questions along the way.

## 🎅🏽 Santa's App Idea

As you can imagine, Santa and his elves are busy these days. Once built, the new app will support them in completing several Christmas-related tasks. With every challenge, you are asked to add a new feature to the application.

### Spec

This challenge is all about one of the latest Spin features called **Component Dependencies, which allow you to seamlessly integrate remote components into your application**. We highly recommend reading the [Spin 3.0 announcement post](https://www.fermyon.com/blog/introducing-spin-v3), if you aren't familiar with  **Component Dependencies**.

Now that Santa and his elves can use the new app you built them (point in favor of the nice-scale for you thanks to [Challenge 1](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-1) 😁) to manage all the wish lists, it’s time to add a very important feature:  naughty-or-nice scoring. From time to time, Santa wants to check if a particular person was naughty or nice over the past year. A simple score on a scale from `1` (super naughty) to `100` (super nice) will help Santa pack the correct Christmas gifts for that person.

Santa knows the key to a successful workshop is picking the right tool for the job. Some elves use delicate hand-carved tools for intricate toys, while others rely on automated machinery for high-demand gifts. But different elves specialize in different tools, which can cause bottlenecks in the gift-making process. Wouldn't it be great if there were a way to make all the tools work together seamlessly? Well, while we can't fix manufacturing magic, we *can* solve this kind of problem in software!

When designing the **naughty-or-nice scoring feature**, Santa decided to leverage the power of **WebAssembly Interface Types (WITs)** and the **WebAssembly Component Model**. These tools allow the API for this feature to be portable across programming languages, so developers can choose the best "workshop tool" (language) for the job. Even better, they won’t need to reinvent the wheel just because they're using different tools.

Matt - the head elf - told Santa that [Spin 3.0](https://www.fermyon.com/blog/introducing-spin-v3) added many features to streamline the developer experience when working with WebAssembly Components and that it might be super smart to use those new features for implementing the naughty-or-nice scoring feature to streamline development and make his APIs flexible enough to fit anyone’s workshop. Let's get building!

### Backend Requirements

#### Naughty-Or-Nice Calculator Wasm Component

Although you can choose any language to implement the naughty-or-nice component, the elves would love to see the component being implemented using JavaScript or TypeScript. We heard from one of the elves, that they found [`componentize-js`](https://github.com/bytecodealliance/ComponentizeJS) and [`jco`](https://github.com/bytecodealliance/jco) to be great tools for bootstrapping Wasm Components with JavaScript and/or TypeScript and it might just bump your nice-score up a point or two.

We’ve been wracking our brains trying to determine how to identify a person’s naughty-or-nice score without much success. Therefore, we're going to hand the power over to you. It’s totally up to you how you calculate the naughty-or-nice score. You could return a simple hard-coded value (😢), you could randomize a value, or you could implement a custom logic to determine the naughty-or-nice score. Again, it’s up to you!

Once you're done with implementing your Wasm component, use the `jco componentize` command (exact flags and args are documented in [this section WebAssembly Component Model Book](https://component-model.bytecodealliance.org/language-support/javascript.html#implementing-a-js-webassembly-component)), to build the Wasm component. Avoid specifying the `disable` flag.

#### Naughty-Or-Nice HTTP API

The elves expect a new HTTP API endpoint at `/api/naughty-or-nice/:name` accepting `GET` requests, where `:name` should be a route parameter containing the name of a person.

This time, the elves want you to use Rust for implementing the Spin Component. Michelle - one of Santa’s most trusted elves - told us, that the `http-rust` template for Spin dramatically simplifies writing Spin Apps with Rust. Additionally, she gave us this hint linking to the [Spin Language Guide for Rust](https://developer.fermyon.com/spin/v3/rust-components), we’re pretty confident you’ll find this link super helpful.

Now it's time to integrate the naughty-or-nice Wasm component you built in the previous section using Spin Component Dependencies and call the `scoring` function exported by the component. Looks like Michelle generously left us a few more bread crumbs depending on how to import our dependency from a [local component](https://developer.fermyon.com/spin/v3/writing-apps#dependencies-from-a-local-component). 

The elves will try to invoke your custom naughty-or-nice endpoint (e.g. `/api/naughty-or-nice/John%20Doe`). They expect the following:

- to receive a response with the status code set to `200`
- the content-type header should be set to `application/json`
- to receive the JSON object as the response body using the structure below

```json
{    
    "name": "John Doe",
    "score": 99
}
```

*As the name of the person is sent to the API as part of the URL, you might process the name - in some way 😅 - to make it human-readable.*


### Frontend Requirements

Add a new view (or page) to the frontend you created as part of [Challenge 1](../Challenge-1/README.md), allowing Santa and his elves to enter the name of a particular person and invoke the naughty-or-nice scoring API you added to the backend before.

The elves will check if the naughty-or-nice scoring UI is available at either `index.html/#/naughty-or-nice` (for SPAs) or `/naughty-or-nice.html` (for pain HTML5 frontends).

### Deployment to Fermyon Cloud

Before trying to deploy you app to Fermyon Cloud, verify that you've installed version `0.10.0` of the `cloud` plugin. You can use the following commands to update the plugin feed and install version `0.10.0` of the `cloud` plugin for Spin:

```bash
# Update the plugin feed
spin plugins update

# Install version 0.10.0 of the cloud plugin
spin plugins install cloud -v 0.10.0
```

## Test

You can run one of our [Hurl](https://hurl.dev) test suites (`test.hurl` and `test.spa.hurl`), which will carry out tests, similar to what the elves will use your application for, when you submit it. Ensure you have `hurl` [installed](https://hurl.dev/docs/installation.html).

```shell
# Test for SPAs
hurl --test test.spa.hurl
```

Or

```shell
# Test for traditional HTML5 frontends
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
