# NTS Homebrew Tap

Install the NTS Radio terminal client:

```sh
brew install r-ohan/nts/nts
```

Or add the tap first:

```sh
brew tap r-ohan/nts
brew install nts
```

For a `Brewfile`:

```rb
tap "r-ohan/nts"
brew "nts"
```

The formula builds the Rust client from its tagged source release and installs
`mpv` as a runtime dependency. Source and project documentation live at
[r-ohan/nts-radio-cli](https://github.com/r-ohan/nts-radio-cli).
