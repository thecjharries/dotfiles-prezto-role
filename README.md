# `dotfiles-role-prezto`

[![Build Status](https://travis-ci.org/thecjharries/dotfiles-role-prezto.svg?branch=master)](https://travis-ci.org/thecjharries/dotfiles-role-prezto)
[![GitHub tag](https://img.shields.io/github/tag/thecjharries/dotfiles-role-prezto.svg)](https://github.com/thecjharries/dotfiles-role-prezto)

## Requirements

Fedora 27 is recommended.

## Role Variables

Defaults are below.

```yml
---
owning_user: "{{ ansible_user }}"
owning_group: "{{ ansible_user }}"
root_dir: "/home/{{ ansible_user }}"
config_dir: "{{ root_dir }}/.config"

prezto_src_path: /opt/prezto
```

Additionally, these `vars` are set:

```yml
---
needed_packages:
  - zsh
```

## Dependencies

```yml
---
- src: git+https://github.com/thecjharries/dotfiles-role-common-software.git
- src: git+https://github.com/thecjharries/dotfiles-role-package-installer.git
- src: git+https://github.com/thecjharries/dotfiles-role-generic-template.git
- src: git+https://github.com/thecjharries/dotfiles-role-git.git
- src: git+https://github.com/thecjharries/dotfiles-role-repo-installer.git
```

## Example Playbook

```yml
---
- hosts: all

  roles:
    - role: dotfiles-role-prezto
```

## License

ISC
