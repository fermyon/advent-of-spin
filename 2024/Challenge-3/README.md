# Challenge 3 - 2024

Welcome to **Challenge Three** of Fermyon’s **Advent of Spin 2024**! 🥳

As part of the third challenge,  you’ll dive into [Serverless AI](https://developer.fermyon.com/spin/v3/serverless-ai-hello-world.md) and harden your knowledge about component dependencies - one of the features that has been added to Spin as part of the recent [Spin 3.0 release](https://www.fermyon.com/blog/introducing-spin-v3).

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction to this yearly challenge.

This year the stakes are a bit higher, and the challenges are, well, more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa’s latest app idea and make use of different features provided by Spin, such as [Key-Value Stores](https://developer.fermyon.com/spin/v3/kv-store-api-guide), [Serverless AI](https://developer.fermyon.com/spin/v3/serverless-ai-api-guide) and [Component Dependencies](https://developer.fermyon.com/spin/v3/writing-apps#using-component-dependencies). Your task is to help the elves get the project up and running before Christmas Eve. 

Don't fret - the elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server and can help answer questions along the way.

## 🎅🏽 Santa’s App Idea

As you can imagine, Santa and his elves are busy these days. Once built, the new app will support them in completing several Christmas-related tasks. With every challenge, you are asked to add a new feature to the application.

- [Challenge 1: Wishlist Manager](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-1)
- [Challenge 2: Naughty-Or-Nice Scoring System](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-2)

### Spec

Santa leaned back in his favorite chair, staring at the flickering glow of the fireplace in the North Pole’s main workshop. Around him, elves hustled and bustled, checking the latest data from their newly developed app. The **wishlist management system** had been a lifesaver, keeping track of every child’s hopes and dreams in one place. The **naughty-or-nice scoring system** had streamlined Santa’s toughest decision-making. Yet something still felt... off.

“Even with all this tech, picking the right gift is harder than ever,” Santa said with a sigh. “We have the wishlists, but what about the kids who don’t write exactly what they want? Or the ones who list *everything*?”

The elves paused, glancing at each other nervously. No one had an answer—until Matt, the head elf stepped forward.

“Santa,” Matt began, adjusting his green hat, “what if we could use AI to help us? What if we take the name, age and likes of a child and use that data to generate tailored gift ideas?”

Santa raised an eyebrow. “AI? Isn’t that... a bit futuristic for us?”

Matt chuckled. “Not at all! With the Spin SDK, we can make something magical. The AI could suggest gifts based on each child’s unique profile. It won’t replace us—it’ll *help* us make better decisions. Every gift will feel personal and perfect.”

The workshop grew quiet as the elves considered the idea. Then Radu, Santa’s most trusted advisor, spoke up. “It’s brilliant, Santa! With wishlist management and naughty-or-nice scoring already in place, this could tie everything together. Plus, we’d have more time to focus on building and crafting the gifts.”

Santa’s face softened, and a warm smile spread across his lips. “Matt, you might be onto something. If this can bring more joy to children, it’s worth a try. Let’s make it happen!”

And with that, the third feature request for Santa's new app was set in stone.

### Backend Requirements

In this challenge, you'll deepen your knowledge of Spin Component Dependencies. Let's begin by exploring the Gift-Suggestion-Generator Wasm Component.

### Gift-Suggestion-Generator Wasm Component

Implement the gift-suggestion-generator Wasm component using Python 🐍. Since you've already created a Wasm Component during the 2nd challenge, Santa's Python Champion elves Karthik and Joel have prepared an excellent template to jumpstart your development. Check out the [`./template` folder here on GitHub](./template/gift-suggestion-component/).

The template provides a [WIT world](./template/gift-suggestion-component/wit/world.wit) and a Python module (`app.py`). Additionally, the Spin SDK for Python is already added as a dependency. All you’ve to do, is activate the Virtual Environment for Python, come up with a creative prompt and use the AI inferencing APIs provided by the Spin SDK for Python.

Once you're done with implementing your Wasm component, use the `componentize-py componentize` command (exact flags and args are documented in [`README.md`](./template/gift-suggestion-component/README.md) located within the template to compile your code down into a Wasm component). 

### Gift Suggestions API

The elves expect a new HTTP API endpoint at `/api/generate-gift-suggestions` accepting `POST` requests. To receive meaningful gift suggestions, they will sent the JSON objects using the following schema as request payload:

```json
{
    "name": "Riley Parker",
    "age" : 15,
    "likes": "Computers, Programming, Mechanical Keyboards" 
}
```

Again the elves want you to use Rust for implementing the Spin Component. If you completed the 2nd challenge, you may remember that Michelle provided amazing tips. If you haven’t looked into the 2nd challenge, consider - at least - [reading the specs of the challenge](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-2#spec).

Now it's time to integrate the `gift-suggestion-generator` Wasm component you built in the previous section using Spin Component Dependencies and call the `suggest` function exported by the component.

WebAssembly has a deny-by-default capability-based security model. As your Wasm component wants to interact with a Large Language Model, you must allow your Spin component access to an AI model and configure the component dependency to inherit these permissions. 

*Hint: Santa’s elves were pretty confident that `llama2-chat`  could be a good LLM for generating creative gift suggestions. They also mentioned that Spin 3.0.0 introduced a breaking change when doing local AI inferencing (model files have a different location now) and gave us this link [https://developer.fermyon.com/spin/v3/ai-sentiment-analysis-api-tutorial](https://developer.fermyon.com/spin/v3/ai-sentiment-analysis-api-tutorial).*

The elves will try to invoke your custom naughty-or-nice endpoint (e.g. `/api/generate-gift-suggestions`). They expect the following:

- To receive a response with the status code set to `200`
- The content-type header should be set to `application/json`
- To receive the JSON object as the response body using the structure below

```json
{    
    "name": "Riley Parker",
    "giftSuggestions": "I bet Riley would be supper happy with a new low profile mechanical keyboard or a couple of new books about software engineering"
}
```

Additionally, the elves will send a mal-formatted request to your `/api/generate-gift-suggestions` endpoint and expect a response with the status code set to `400`.

### Frontend Requirements

Add a new view (or page) to the frontend you created as part of Challenge 1, allowing Santa and his elves to enter the name, age, and likes (or interests) of a particular person and invoke the gift-suggestion API you added to the backend before.

The elves will check if the gift-suggestion UI is available at either `index.html/#/gift-suggestions` (for SPAs) or `/gift-suggestions.html` (for pain HTML5 frontends).

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

> Note: Do not add a trailing / to the serviceUrl.
> 

```
hurl --error-format long --variable serviceUrl="https://x-mas.fermyon.app" submit.hurl
```

If you want to participate in the swag award, go [here](../../README.md#Prizes) and check out how to participate.

## Nobody Must Code Alone!

Please don’t hesitate to reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server if you have any questions, they may be busy this time a year, but they are always ready to help and answer questions. This is a great opportunity to meet others in the community as well. We’ll also post on [X/Twitter](https://twitter.com/fermyontech) and [LinkedIn](https://www.linkedin.com/company/fermyon), dropping some helpful resources and videos.

Remember there are prizes for each challenge. So it may be you, to whom the elves will deliver a nice award to.

Note: If you submit using Fermyon Cloud, we will contact you for any awards you may win. If you aren’t using the Fermyon cloud to host your application, please reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) to register your submission