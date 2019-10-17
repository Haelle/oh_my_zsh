# Ansible Oh-my-zsh

An Ansible role to install oh-my-zsh with few plugins.

This role install Monospace-regular fonts for powerline, enable it in the terminal

## Usages
- Navi with `<Ctrl+G>`
- fzf alias to vim: `vfzf`

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
