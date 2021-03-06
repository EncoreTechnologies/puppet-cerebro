# Cerebro Puppet Module

[![Build Status](https://travis-ci.org/EncoreTechnologies/puppet-cerebro.svg?branch=master)](https://travis-ci.org/EncoreTechnologies/puppet-cerebro)
[![Puppet Forge](https://img.shields.io/puppetforge/v/encore/cerebro.svg?style=flat-square)](https://forge.puppet.com/encore/cerebro)
[![License](https://img.shields.io/github/license/EncoreTechnologies/puppet-cerebro.svg)](https://github.com/EncoreTechnologies/puppet-cerebro/blob/master/LICENSE)

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with cerebro](#setup)
    * [Beginning with cerebro](#beginning-with-cerebro)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Puppet module for managing and configuring [Cerebro](https://github.com/lmenezes/cerebro).

## Setup

### Beginning with cerebro

```puppet
include cerebro
```

## Usage

```puppet
class { 'cerebro':
  version => '0.8.1',
}
```

## Reference

See [REFERENCE.md](REFERENCE.md).
This module has been documented with [puppet-strings](https://github.com/puppetlabs/puppet-strings).

## Limitations

This module has been tested on:

- CentOS 7

## Development

Bug reports and pull requests are welcome on GitHub at https://github.com/EncoreTechnologies/puppet-cerebro.

To regenerate the [REFERENCE.MD](REFERENCE.md) file, please run the rake task as follows.
```console
 % bundle exec rake strings:generate\[',,,,false,true']
```
