# Challenge 4 - 2023

Welcome to the fourth and final, challenge of Fermyon’s Advent of Spin 2023! 🥳

If this is your first time with Spin, [Challenge 1 from 2022](../../2022/CHALLENGE-1/README.md), is the perfect introduction. Also, feel free to try all the other challenges from 2022 and 2023.

This year the stakes are higher, and the challenges...more challenging. The Fermyon elves have decided to help Santa use Serverless WebAssembly for Santa's new web application. Your task is to help the elves get the project up and running before Christmas Eve.

The elves will hang out in the Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server, and can help answer questions along the way.

## Spec

Christmas is almost here, and because of a well-planned gifting operation this year, the elves have found themselves with some spare time before Christmas!

The elves are now idle all day, napping in the hay with the Reindeers or eating too much Christmas pudding. So we need to keep them engaged with something. Your challenge this week is to help the elves solve a game of [Bulls'n'Cows](https://en.wikipedia.org/wiki/Bulls_and_Cows). 

The game is pretty straight forward, the game master (Fermyon Cloud in this case), decides a secret combination of three (3) digits, where each digit is between the value of 0 and 4 (both included). None of the values are use more than once in the secret combination. Please note, this is a slight variation over the usual rules, you'll see described in the Wiki article above. Main reason is to make sure you can solve it within the service limits for Fermyon Cloud, which currently exists [Quota and Limits](https://developer.fermyon.com/cloud/faq#quota-limits).

Now it's your job to help the elves, by writing a Spin application, which can guess the secret combination 🕵️‍♀️

This challenge is a bit more complicated in how we validate your submission, so bear over with us. We have deployed an application - the game - at `https://bulls-n-cows.fermyon.app/`. You may find an intriguing UI there, but it doesn't work yet (The DevRel elves didn't have time to complete it yet!). So what you need to do is to use the API at `https://bulls-n-cows.fermyon.app/api` to play the game.

First call to the API must contain your first guess as a URL parameter called `guess` - e.g., `curl https://bulls-n-cows.fermyon.app/api?guess=012`.
You will receive a response in the following format (sample data):

```json
{
    "cows":3,
    "bulls":0,
    "gameId":"1836633b-8dd1-41c2-b084-644b37c6fd1b",
    "guesses":1,
    "solved":false
}
```

- `cows` indicate how many cows were in the guess - i.e., digits which are used, but in the wrong position
- `bulls` indicate how many bulls were in the guess - i.e., digits which are in the right position
- `gameId` is your gameID, which you will have to use in subsequent requests, using a URL parameter called `id` - e.g., `curl https://bulls-n-cows.fermyon.app/api?guess=012&id=1836633b-8dd1-41c2-b084-644b37c6fd1b`
- `guesses` - the number of guesses tried so far for this game (id)
- `solved` - has the game been solved? true/false

Please note the constraints (variation) to the game we host in Fermyon Cloud:
- The secret combination consists of three (3) digits - e.g., `123`
- Each digit is between the value of 0 and 4 (both included) - i.e., `0` `1` `2` and `4` are all valid digits
- None of the digits are use more than once in the secret combination - e.g., `123` is used, `113` is not used

A sneak peak of the code used in the game engine is here: https://github.com/mikkelhegn/bullsncows.

## Test

You can run our [Hurl](https://hurl.dev) test suite with `hurl --test test.hurl`, which will carry out tests, similar to what the elves will use you application for, when you submit it. Ensure you have `hurl` [installed](https://hurl.dev/docs/installation.html).

## Submit

Once the application is deployed, enter the endpoint as serviceUrl below and run the command - e.g., `https://x-mas.fermyon.app`

> Note: Do not add a trailing `/` to the serviceUrl.

```shell
hurl --error-format long --variable serviceUrl="https://x-mas.fermyon.app" submit.hurl
```

Please note for this challenge, the `hurl` test is simple to pass. We will check the Bulls'n'Cows app to see if you completed the challenge, and solved a game. No cheating 😉

Remember, if you want to participate in the swag award, go [here](../../README.md#Prizes) and check out how to participate.

## Nobody Must Code Alone!

Please don't hesitate to reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) server if you have any questions, they may be busy this time a year, but they are always ready to help and answer questions. This is a great opportunity to meet others in the community as well. We’ll also post on [X/Twitter](https://twitter.com/fermyontech) and [LinkedIn](https://www.linkedin.com/company/fermyon), dropping some helpful resources and videos.

Remember there are prizes for each challenge. So it may be you, to whom the elves will deliver a nice award to.

Note: If you submit using Fermyon Cloud, we will contact you for any awards you may win. If you aren't using the Fermyon cloud to host your application, please reach out to the elves on Fermyon [Discord](https://discord.gg/AAFNfS7NGf) to register your submission
