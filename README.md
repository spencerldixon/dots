# Dots

Dots is a habit and progress tracker, inspired by the dot collector at Bridgewater assosciates, and the book Atomic Habits, by James Clear. Dots is designed to be a catch all metrics tracker and remain fairly agnostic about the data it is collecting.

There are 4 main concepts to dots:

- Track - the thing you want to monitor (i.e. Fitness)
- Experiment - A split test, your methodology to achieving your goals (a particular diet, workout routine etc)
- Metric - a measurement against your goals (i.e. Lap time, bodyweight)
- Dot - a datapoint against both an experiment and metric

## Installation

```
bundle install
yarn install
rails db:create db:migrate
```

## How to use Dots

1. Set up a track for each area of your life you would like to track (i.e. Health, Finance)
2. Set up the measurable metrics for each of these areas (for health, you could track your bodyweight, strength on certain exercises). This forces you to have a tangible way to measure your progress.
3. Set up a single experiment for each track. Experiments encompass your methodology for achieving your goals, for example, the experiment for your health track could be 'run 3 hours per week'. When you are ready to try a different methodology, you can create a new experiment ('run 2 hours per week and weight train for 3 hours per week). You can look back on your experiments to see if they made a positive or negative difference to your progress.
4. Keep putting dots in! Dots are meant to be added ad-hoc and build up a picture over time.
