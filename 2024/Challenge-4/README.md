# Challenge 4 - 2024

Welcome to **Challenge Four** of Fermyon’s **Advent of Spin 2024**! 🎅🏽

As part of the fourth challenge, we have something special for you. 😇

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction to this yearly challenge.

This year the stakes are a bit higher, and the challenges are, well, more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa’s latest app idea and make use of different features provided by Spin, such as [Key-Value Stores](https://developer.fermyon.com/spin/v3/kv-store-api-guide), [Serverless AI](https://developer.fermyon.com/spin/v3/serverless-ai-api-guide) and [Component Dependencies](https://developer.fermyon.com/spin/v3/writing-apps#using-component-dependencies). Your task is to help the elves get the project up and running before Christmas Eve. 

Don't fret - the elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server and can help answer questions along the way.

## 🎅🏽 Santa’s App Idea

As you can imagine, Santa and his elves are busy these days. Once built, the new app will support them in completing several Christmas-related tasks. With every challenge, you are asked to add a new feature to the application.

- [Challenge 1: Wishlist Manager](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-1)
- [Challenge 2: Naughty-Or-Nice Scoring System](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-2)
- [Challenge 3: Git Suggestions](https://github.com/fermyon/advent-of-spin/tree/main/2024/Challenge-3)

### Spec


During the Advent of Spin, Santa’s elves discovered Spin and WebAssembly and were immediately hooked. They couldn’t believe how efficient, lightweight, and fun the technology was, describing it as **“the perfect gift for developers.”** 

Before long, they had transformed Santa’s workshop into a tech-powered wonderland. Spin apps managed everything from toy inventory to reindeer schedules, wishlist management and even cookie recipes were now shared through lightning-fast APIs.

Excited to share their newfound love for Spin, the elves came up with a creative idea: a holiday-themed treasure hunt powered by Spin itself. They hid clues, riddles, and challenges across a series of HTTP endpoints, inviting developers to explore and solve their way to the end. Each step is a chance to flex your problem-solving skills and enjoy the magic of the holiday season through code.

Make your way through the treasure hunt, and at the end, you’ll find the instructions for the 4th and final challenge. Good luck, and happy hunting!

Start with this 👉🏼 `curl https://treasurehunt.fermyon.app/start`

## Test

You can run one of our [Hurl](https://hurl.dev) test suite (`test.hurl`), which will carry out tests, similar to what the elves will use your application for, when you submit it. Ensure you have `hurl` [installed](https://hurl.dev/docs/installation.html).

```shell
# Run tests
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