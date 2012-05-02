---
source:
- meta
authors:
- name: 7rans
  email: transfire@gmail.com
copyrights:
- holder: Rubyworks
  year: '2004'
  license: BSD-2-Clause
requirements:
- name: rake
- name: minitest
  groups:
  - test
  development: true
- name: detroit
  groups:
  - build
  development: true
dependencies: []
alternatives: []
conflicts: []
repositories:
- uri: git://github.com/rubyworks/enumargs.git
  scm: git
  name: upstream
resources:
- uri: http://rubyworks.github.com/enumargs
  label: Website
  type: home
- uri: http://github.com/rubyworks/enumargs
  label: Source Code
  type: code
- uri: http://github.com/rubyworks/enumargs/issues
  label: Issue Tracker
  type: bugs
- uri: http://chat.us.freenode.net/rubyworks
  label: IRC Channel
  type: chat
categories: []
extra: {}
load_path:
- lib
revision: 0
created: '2004-08-01'
summary: ! 'When your #each has parameters and you need Enumerable too.'
title: Enumerable::Arguments
version: 2.0.0
name: enumargs
description: ! 'This is a simple reimplementation of the core Enumerable module

  to allow its methods to take and pass-on arbitrary arguments to the

  underlying #each call. This library uses Enumerator and scans

  Enumerable so it can alwasy stay in sync.'
organization: rubyworks
date: '2012-05-02'
