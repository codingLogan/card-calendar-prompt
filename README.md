# Card Calendar Prompt

This project adds a simple playing-card based calendar section to your PROMPT. Quarters of the year are represented by _suits_, and the week of the current quarter is represented by Ace (low) up to King.  Because years have 52 or 53 weeks, standard card decks can represent calendar weeks!

For example a typical prompt shows a username followed by the current directory. With this plugin you can put a card into your prompt that signifies the week of the year.

March 2nd is 9th week of the first quarter so we get `9♥` returned from the plugin (you can put it anywhere in your prompt!).

```sh
9♥ <username> ~/dev/card-calendar-prompt $ _
```

Quarters of the year are represented as follows, the symbols may change slightly depending on the font you use.

| Month         | Q#  | Symbol | Weeks |
| ------------- | --- | ------ | ----- |
| Jan, Feb, Mar | Q1  | ♥      | 1-13  |
| Apr, May, Jun | Q2  | ♣      | 14-26 |
| Jul, Aug, Sep | Q3  | ♦      | 27-39 |
| Oct, Nov, Dec | Q4  | ♠      | 40-52 |
| Final days    | Q4  | 🂿      | 53    |

Cards numbers are represented in order, with "Ace" being the low instead of the high.

| Week Number of Quarter | Symbol |
| ---------------------- | ------ |
| 1                      | A      |
| 2                      | 2      |
| 3                      | 3      |
| 4                      | 4      |
| 5                      | 5      |
| 6                      | 6      |
| 7                      | 7      |
| 8                      | 8      |
| 9                      | 9      |
| 10                     | 10     |
| 11                     | J      |
| 12                     | Q      |
| 13                     | K      |

## Info About Cards & Calendars

There are always at least 52 weeks in a year, and there could be 53.

_The weeks of the year in a Gregorian calendar are numbered from week 1 to week 52 or 53, depending on several varying factors. Most years have 52 weeks, but if the year starts on a Thursday or is a leap year that starts on a Wednesday, that particular year will have 53 numbered weeks._

- https://www.timeanddate.com/

So, armed with this information, it is entirely possible to represent all 52 or 53 weeks of a year with a standard deck of face cards, + a Joker card for the 53rd week scenarios.

Now you know!

## Pre-requisites

Unix `date` command must be available in your shell, and your machine must be able to run `bash` scripts

## Bash Setup

Add the following lines to the end of your `~/.bashrc` file. (feel free to customize the PS1 string to your liking)

```sh
# Card Calendar plugin
source ~/dev/card-calendar-prompt/prompt.sh
CALENDAR_CARD=$(get_calendar_card)
PS1="$CALENDAR_CARD $PS1"
```

The source line should be the path to where you saved the plugin, and the PS1 line is just an example of prepending the card to the prompt.

## ZSH Setup

Add the following lines to the end of your `~/.zshrc` file. (feel free to customize the PROMPT string to your liking)

```
# Card Calendar plugin
source ~/dev/card-calendar-prompt/prompt.sh
CALENDAR_CARD=$(get_calendar_card)
PROMPT="$CALENDAR_CARD $PROMPT"
```

## Supported Shells

ZShell, Bash Shell
