# NTS Homebrew Tap

Install the NTS Radio terminal client:

```sh
brew install r-ohan/nts/nts
```

Or add the tap first:

```sh
brew tap r-ohan/nts
brew trust r-ohan/nts
brew install nts
```

Recent Homebrew versions require explicit trust before they load formulae from
a third-party tap by short name. The direct install command above trusts only
this formula and needs no separate setup.

For a `Brewfile`:

```rb
tap "r-ohan/nts"
brew "nts"
```

The formula builds the Rust client from its tagged source release and installs
`mpv` as a runtime dependency. Source and project documentation live at
[r-ohan/nts-radio-cli](https://github.com/r-ohan/nts-radio-cli).
