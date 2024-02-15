# Guide for myself

## Create new Formula / Cask

```sh
brew create --tap mayniklas/personal <url>
```

## Check for errors

```sh
brew style mayniklas/personal --fix
brew test <formula>
brew audit --arch all --online --strict <formula>
```

## Update Formula / Cask

## Update Formula / Cask using livecheck

```sh
brew bump <formula>
brew bump-cask-pr <formula>
brew bump-formula-pr <formula>
```

### Update Python dependencies

```sh
brew update-python-resources <formula>
```
