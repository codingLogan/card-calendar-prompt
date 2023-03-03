# Card Calendar Prompt

This project adds a simple playing-card based calendar section to your PROMPT. Quarters of the year are represented by _suits_, and the week of the year is represented by Ace-King.

For example a typical prompt shows a username followed by the current directory. With this plugin you can put a card into your prompt that signifies the week of the year.

March 2nd is 9th week of the first quarter so we get `9♥` returned from the plugin (you can put it anywhere in your prompt!).

```sh
9♥ <username> ~/dev/card-calendar-prompt $ _
```

Quarters of the year are represented as follows

| Month         | Q#  | Symbol  | Weeks |
| ------------- | --- | ------- | ----- |
| Jan, Feb, Mar | Q1  | Heart   | 1-13  |
| Apr, May, Jun | Q2  | Club    | 14-26 |
| Jul, Aug, Sep | Q3  | Diamond | 27-39 |
| Oct, Nov, Dec | Q4  | Spade   | 40-52 |
| Final days    | Q4  | Joker   | 53    |

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

## Pre-requisites

Unix `date` command must be available in your shell, and your machine must be able to run `bash` scripts

## Bash Setup

Add the following lines to the end of your `~/.bashrc` file. (feel free to customize the PS1 prompt to your liking)

```sh
# Card Calendar plugin
source ~/dev/card-calendar-prompt/prompt.sh
CALENDAR_CARD=$(get_calendar_card)
PS1="$CALENDAR_CARD $PS1"
```

The source line should be the path to where you saved the plugin, and the PS1 line is just an example of prepending the card to the prompt.

## Supported Shells

ZShell, Bash Shell
