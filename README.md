## Install Custom Tide Version

```fish
#!/usr/bin/env fish

# Check for necessary commands
if not type -q curl; or not type -q tar
    echo "This script requires 'curl' and 'tar' to be installed."
    exit 1
end

# Temporary directory for the installation files
set tide_tmp_dir (mktemp -d)

# Downloading Tide
curl -L https://codeload.github.com/BGoodatit/tide/tar.gz/main | tar -xzC $tide_tmp_dir

# Installing Tide
cp -R $tide_tmp_dir/tide-main/{completions,conf.d,functions} $__fish_config_dir

# Initialize the tide configuration
source $__fish_config_dir/conf.d/_tide_init.fish
exec fish --init-command "set -g fish_greeting; emit _tide_init_install"

# Cleanup
echo "Installation completed. Please restart your Fish shell."
rm -r $tide_tmp_dir
```

---


<div align="center"><img src="../assets/images/logo.svg" width="61.8%"/><br>[![ci_badge][]][actions] ​ [![license_badge][]][license] ​ [![blazing_badge][]][blazing_tweet] <!-- 0 width spaces on this line --></div>

#

<img src="../assets/images/header.png" width="50%" align="right"/>

**The ultimate Fish prompt.**

- **Fast:** Asynchronous rendering makes Tide instantly responsive in any situation.
- **Friendly:** An interactive configuration wizard lets you design your prompt efficiently.
- **Flexible:** Pure-Fish construction means you can easily control existing content or create your own that will integrate seamlessly.

## Installation

### System Requirements

- The **latest** version of [Fish](https://fishshell.com/), currently 3.6.4.
- A [Nerd Font](https://github.com/ryanoasis/nerd-fonts) installed and enabled in your terminal.

Install with [Fisher](https://github.com/jorgebucaran/fisher):
```console
fisher install IlanCosman/tide@v6
```

<details>
  <summary>Install manually</summary>

This script may not work for all use cases.

```fish
set -l _tide_tmp_dir (command mktemp -d)
curl https://codeload.github.com/ilancosman/tide/tar.gz/v6 | tar -xzC $_tide_tmp_dir
command cp -R $_tide_tmp_dir/*/{completions,conf.d,functions} $__fish_config_dir
fish_path=(status fish-path) exec $fish_path -C "emit _tide_init_install"
```
</details>

## Features

### Configuration Wizard

Run `tide configure` to open the wizard in your terminal.

![configuration_wizard](../assets/animations/configuration_wizard.gif)

### Flexible

Using the [`items`][https://github.com/IlanCosman/tide/wiki/Configuration#items] list for each side of the prompt, you have full control of which and where prompt sections display.

### Extendable

If there isn't an item that fits your needs you can make your own (and hopefully submit a pull request) or ask for it to be made by opening an issue.

### Asynchronous Rendering

Tide runs everything in the background so that your prompt will always feel snappy.

![async](../assets/animations/async.gif)

Asynchronous rendering also lets Tide display more information than other prompts. For example, most prompts don't display the number of untracked, modified, or deleted files in a git repository because it's too slow to compute.

### Current directory that just works

The current working directory is the most important part of any shell prompt. Tide highlights the critical parts and truncates with the least loss of information when horizontal space is scarce.

<div align="center"><img src="../assets/images/pwd.png"/></div>

When the full directory doesn't fit, the leftmost segment is truncated to its shortest unique prefix. In the example above, `Documents` becomes `Doc` instead of `D` because that could be confused with `Downloads`. Important segments are bold and never truncated. These include the last segment, root of a Git repository etc.

<sup>_Tip_: If you copy-paste a truncated path and hit <kbd>tab</kbd>, it will complete to the original.</sup>

## Documentation

See the [Wiki](https://github.com/IlanCosman/tide/wiki) for documentation.

## Contributing

From the smallest typo to the largest feature, contributions of any size or experience level are welcome!

If you're interested in helping contribute to Tide, please take a look at the [Contributing Guide](CONTRIBUTING.md).

## Fonts

### Meslo Nerd Font

A gorgeous monospace font designed by Jim Lyles for Bitstream, customized for Apple, enhanced by André Berg, and finally patched by Roman Perepelitsa of [Powerlevel10k](https://github.com/romkatv/powerlevel10k/) with scripts originally developed by Ryan McIntyre of [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts). Contains all the glyphs and symbols that Tide may need. Battle-tested in dozens of different terminals on all major operating systems.

### Font Installation

Download these four ttf files:

- [MesloLGS NF Regular.ttf](../assets/fonts/mesloLGS_NF_regular.ttf?raw=true)
- [MesloLGS NF Bold.ttf](../assets/fonts/mesloLGS_NF_bold.ttf?raw=true)
- [MesloLGS NF Italic.ttf](../assets/fonts/mesloLGS_NF_italic.ttf?raw=true)
- [MesloLGS NF Bold Italic.ttf](../assets/fonts/mesloLGS_NF_bold_italic.ttf?raw=true)

Open each file and click "Install". This will make the `MesloLGS NF` font available to all applications on your system. Configure your terminal to use this font.

## Acknowledgments

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k/) - Inspired Tide's creation. Because Tide aims to replicate Powerlevel10k's amazing capabilities, small sections of documentation have been borrowed when rewording the language would reduce clarity.
- [Starship](https://github.com/starship/starship) - Inspired elements of Tide's documentation and community health files.
- [Spacefish](https://github.com/matchai/spacefish) - Inspired some of Tide's items.
