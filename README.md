# Ansible Oh-my-zsh

## Fonts

You need the latest Meslo Font :
```
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip
unzip Meslo.zip -d ~/.local/share/fonts/Meslo
fc-cache -fv
```

Old way to install : [⚠ Change the default font in the terminal ⚠](https://github.com/romkatv/powerlevel10k#manual-font-installation)

An Ansible role to install oh-my-zsh with few plugins.

This role install Meslo LGS NF fonts for PowerLevel10k, run `p10k configure` in
the terminal to configure the prompt (it should run automatically)

## Usages

- `<Ctrl+G>` : trigger Navi (help to search for unix commands)
- fzf alias to vim: `vfzf`
- `Ctrl-u` : clear current prompt
- `pp_json xxx` : pretty print JSON
- `Esc Esc` : prefix your current or previous commands with sudo
- `Ctrl+r` : history search

### base64 & JWT

Encode & decode base64 strings :

```shell
$ encode64 "oh-my-zsh"
b2gtbXktenNo
$ e64 "oh-my-zsh"
b2gtbXktenNo
```

And for JWT directly :

```shell
$ jwt eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c

=Header==
{
  "alg": "HS256",
  "typ": "JWT"
}
==Payload==
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}

```

## Role Variables

All variables are in `defaults/main.yml`.

### `users`

_This is mandatory._

List of Unix users:

```yaml
users:
  - foo
  - bar
```

### `zsh_plugins`

List of zsh plugins, available plugins are listed on [oh-my-zsh plugins page](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

Plugins that adds aliases & completions :

- [ansible](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ansible)
- [bundler](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bundler)
- [common-aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases)
- [debian](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/debian)
- [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker)
- [docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose)
- [encode64](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/encode64)
- [gem](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gem)
- [rails](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rails)
- [ruby](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ruby)
- [systemd](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemd)

Plugins usage :

- [command-not-found](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found) : show a hint when a command is not found
- [dirhistory](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory) : This plugin adds keyboard shortcuts for navigating directory history and hierarchy.
- [fzf](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf) : add fzf support (no default command set)
- [gitignore](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gitignore) : can generate gitignore from templates !
- [jsontools](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jsontools) : usefull json tools command line
- [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo) : Easily prefix your current or previous commands with sudo by pressing esc twice

## Example Playbook

```yaml
- hosts: localhost
  roles:
    - role: oh_my_zsh
      users:
        - foo
```

## Linters

```shell
yamllint **/*.yml
ansible-lint **/*.yml
```

## Development usage

To run it locally create a symlink : `cd /etc/ansible/roles & sudo ln -s /path/to/oh_my_zsh .`

## License

BSD

## TODO
revoir le readme
  documenter les raccourci
  documenter les plugins choisi
repasser sur le nommage

where is navi ?
