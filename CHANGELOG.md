# Changelog

## [v6.1.1] - 2024-06-01
### Added
- Initial release of Tide v6.1.1

## [v4.3.4][] (Apr 14 2021)

- Git item now works correctly in bare git repositories ([#145][])
- Git item now actually works in `.git` directory, and added tests to make sure
- Made `tide bug-report` more powerful and also check for oh-my-fish on the user's machine

## [v4.3.3][] (Apr 11 2021)

### Bug fixes

- Git item now works correctly in `.git` directory and in submodules ([#138][])
- Vi mode prompt char will display correct `$status` ([#126][])
- `alt+arrow` directory switching will work as before ([#139][])
- Avoid killing user's background jobs

## [v4.3.2][] (Mar 26 2021)

### Bug fixes

- Fixed a bug where git staged/dirty counters wouldn't display
- Use `$status` instead of `$pipestatus[-1]` to account for the `not` command.
- Safer fix for the commandline not highlighting bug ([#130][])

## [v4.3.1][] (Mar 24 2021)

### Bug fixes

- Fixed a bug where the commandline wouldn't highlight on startup ([#130][])

## [v4.3.0][] (Mar 22 2021)

### Features

- Remove on startup items that the user doesn't have a required tool for
- Always add a space after the prompt, even without `prompt_char` item ([#129][])

### Bug fixes

- Fix pwd markers which had been broken for a while
- Don't error when the left prompt is too long ([#121][] - @mfossen)
- Fix multi-line prompt when there are no items on the second line

### CI/Testing

- Use mega-linter instead of super-linter
- Fix bug in release action

## [v4.2.0][] (Mar 04 2021)

### Features

- Add PHP item ([#91][])
- Add chruby item ([#100][])

### Bug fixes

- Load fish_prompt only if session is interactive ([#107][] - @chvolkmann)
- Make virtual_env item smarter in avoiding generic names ([#97][])

### Internal

- Updated code for Fish 3.2.0
- Refactor printing logic, much faster now ([#111][])
- Use builtin `disown` instead of function, small speed increase
- Don't even create `fish_mode_prompt` function, tiny speed improvement

### CI/Testing

- Add syntax checking for Fish
- Add format checking for Fish
- Add PHP item tests
- Add chruby item tests

[prettier action]: https://github.com/actionsx/prettier
[super-linter]: https://github.com/github/super-linter
[v1.0.0]: https://github.com/IlanCosman/tide/tree/v1.0.0
[v1.1.0]: https://github.com/IlanCosman/tide/tree/v1.1.0
[v1.1.1]: https://github.com/IlanCosman/tide/tree/v1.1.1
[v1.1.2]: https://github.com/IlanCosman/tide/tree/v1.1.2
[v1.2.0]: https://github.com/IlanCosman/tide/tree/v1.2.0
[v1.3.0]: https://github.com/IlanCosman/tide/tree/v1.3.0
[v1.3.1]: https://github.com/IlanCosman/tide/tree/v1.3.1
[v1.3.2]: https://github.com/IlanCosman/tide/tree/v1.3.2
[v1.4.0]: https://github.com/IlanCosman/tide/tree/v1.4.0
[v1.5.0]: https://github.com/IlanCosman/tide/tree/v1.5.0
[v2.0.0]: https://github.com/IlanCosman/tide/tree/v2.0.0
[v2.1.0]: https://github.com/IlanCosman/tide/tree/v2.1.0
[v2.2.0]: https://github.com/IlanCosman/tide/tree/v2.2.0
[v2.3.0]: https://github.com/IlanCosman/tide/tree/v2.3.0
[v2.4.0]: https://github.com/IlanCosman/tide/tree/v2.4.0
[v2.5.0]: https://github.com/IlanCosman/tide/tree/v2.5.0
[v3.0.0]: https://github.com/IlanCosman/tide/tree/v3.0.0
[v3.1.0]: https://github.com/IlanCosman/tide/tree/v3.1.0
[v3.2.0]: https://github.com/IlanCosman/tide/tree/v3.2.0
[v4.0.0]: https://github.com/IlanCosman/tide/tree/v4.0.0
[v4.1.0]: https://github.com/IlanCosman/tide/tree/v4.1.0
[v4.1.1]: https://github.com/IlanCosman/tide/tree/v4.1.1
[v4.2.0]: https://github.com/IlanCosman/tide/tree/v4.2.0
[v4.3.0]: https://github.com/IlanCosman/tide/tree/v4.3.0
[v4.3.1]: https://github.com/IlanCosman/tide/tree/v4.3.1
[v4.3.2]: https://github.com/IlanCosman/tide/tree/v4.3.2
[v4.3.3]: https://github.com/IlanCosman/tide/tree/v4.3.3
[v4.3.4]: https://github.com/IlanCosman/tide/tree/v4.3.4
