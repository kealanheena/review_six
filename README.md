# Review Six

This is my sixth review at Makers.

You can see me do this review here:

## Challenge

Make an application that organises grades in the order 'Green, Amber, Red'. It should be displayed as a string with the amount of each result followed by a line break. If 'Red, Green, Amber' was given as an argument it would print the console like this:

```
"Green: 1\nAmber: 1\nRed: 1"
```

|   input   |   Output   |
|-----------|------------|
|''|rasie error nogrades supplied|
|green| 'Green: 1'|
|green, green| 'Green: 2'|
|green, red | 'Green: 1 Red: 1' |
|green, amber, red, Gren |'Green: 1 \n Amber: 1 \n Red: 1 \n Uncounted: 1 |

## User Stories

```
As a user,
So I can count my test scores,
I would like to see a counter for my test scores.

As a user,
So I can see the different levels of test scores,
I would like the counter to be split into green amber & red.

As a user,
So I can see each of the test scores,
I would like them to be printed in a list below the counters. 
```

## Features

- Counts test scores and displays them in three different counters(green amber & red)
- Displays all test scores

## Tech Used

- Ruby
- Rspec
- Rubocop

## Getting Started

This app is used in the terminal:

You can run it in IRB create an instance of the grades class an enter a string with any amount of test scores(green amber & red) each seperated by a comma. e.g. "Red, Red, Amber, Green, Red, Amber, Green"


## Running The Tests

You can run tests by running rspec in the terminal in the review_six directory.

### Test Coverage

#### Unit Tests

- #format_grades
  - Green Grades
    - should return 'Green: 1' when 'Green' is passed
    - should return 'Green: 2' when 'Green, Green' is passed
    - should return 'Green: 3' when 'Green, Green, Green' is passed
  - Amber Grades
    - should return 'Amber: 1' when 'Amber' is passed
    - should return 'Amber: 2' when 'Amber, Amber' is passed
  - Red Grades
    - should return 'Red: 1' when 'Red is passed
    - should return 'Red: 2' when 'Red, Red' is passed
  - Uncounted Grades
    - should return 'Uncounted: 1' when 'Uncounted' is passed
    - should return 'Uncounted: 2' when 'Uncounted, Uncounted' is passed
  - if multiple types of grades are passed
    - if two grades are passed
      - should return 'Green: 1\nAmber: 1' when 'Green, Amber' is passed
      - should return 'Green: 1\nRed: 1' when 'Green, Red' is passed
      - should return 'Amber: 1\nRed: 1' when 'Amber, Red' is passed
    - if three grades are passed
      - should return 'Green: 1\nAmber: 1\nRed: 1' when 'Green, Amber, Red' is passed
      - should return 'Green: 1\nAmber: 1\nRed: 1' when 'Amber, Green, Red' is passed
      - should return 'Green: 1\nAmber: 1\nRed: 1' when 'Red, Green, Amber' is passed

## Versioning

review_six uses rubocop version 0.71.0 running bundle install will install rubocop version 0.71.0.
