# Contributing to homebrew-tap

First off, **thank you** for considering contributing! I truly believe in open source and the power of community collaboration. Unlike many repositories, I actively welcome contributions of all kinds - from bug fixes to new features.

## My Promise to Contributors

- **I will respond to every PR and issue** - I guarantee feedback on all contributions
- **Bug fixes are obvious accepts** - If it fixes a bug, it's getting merged
- **New features are welcome** - I'm genuinely open to new ideas and enhancements
- **Direct line of communication** - If I'm not responding to a PR or issue, email me directly at johnvondrashek@gmail.com

## What This Tap Contains

This is a personal Homebrew tap for Catholic-themed macOS applications:

- **Praymodoro** - A prayerful Pomodoro timer with Catholic saints as desktop companions
- **Council of Chalcedon** - An educational visual novel re-enacting the Fourth Ecumenical Council (451 AD)

## Ways to Contribute

### Reporting Issues

- Cask installation failures
- Version mismatches or outdated SHA256 hashes
- Broken download URLs
- Missing or incorrect app metadata

### Submitting Cask Updates

When a new version of an application is released, you can help by:

1. Updating the `version` field
2. Calculating the new SHA256 hash (`shasum -a 256 <file>`)
3. Verifying the download URL works

### Adding New Casks

If you have a Catholic-themed macOS application you'd like to add:

1. Create a new `.rb` file in the `Casks/` directory
2. Follow the existing cask format
3. Test with `brew install --cask <your-cask>`
4. Submit a PR with a description of the application

## Code of Conduct

This project follows the [Rule of St. Benedict](CODE_OF_CONDUCT.md) as its code of conduct.

## Questions?

- Open an issue
- Email: johnvondrashek@gmail.com
