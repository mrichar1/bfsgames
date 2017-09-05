# Beltane Big Book of Games

Download `games.pdf` for the book itself.

## Development

This book is built using `LaTeX`, with several game-specific macros.

## Adding New Games

Each game lives in it's own `.tex` file. These are collated into a single book automatically.

1. Create a new game file

```
\begin{minipage}{\textwidth}
% Game name, and 1 or more categories
\game{Eating Food}{Meal}{Tig}
% Equipment required to play the game
\equip{knife, fork, spoon}
% Number of players
\play{1 or more players}
% 'Also known as' (if game has several common names)
\aka{Lunch}
\\*
Put the game instructions here!
% Optional links to other, similar games (use game name)
\refer{Breakfast}
\end{minipage}    \vfill
```

2. Save and commit, using `git tag` to update the book version when finished.
3. Run `make` to build a new `games.pdf`

### Dependencies

* `LaTeX`
* `LaTeX` packages: `cclicenses`, `imakeidx`
* `Make` (some sub-scripts use `bash`)
