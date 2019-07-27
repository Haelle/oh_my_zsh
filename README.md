# Ansible Oh-my-zsh

An Ansible role to install oh-my-zsh with few plugins.

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

## License

BSD
