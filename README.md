# Petamorikei Tap

Casks that Homebrew does not ship.

| Cask | Notes |
|---|---|
| `withsecure-elements-agent` | WithSecure Elements Agent, keyless installer. Activate it after install with `sudo /Library/WithSecure/bin/activator --subscription-key <key>`, then approve the system extension and Full Disk Access in System Settings. |

## How do I install these casks?

`brew install --cask petamorikei/tap/<cask>`

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "petamorikei/tap"
cask "petamorikei/tap/<cask>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
