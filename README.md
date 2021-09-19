# Overview

This repository presents a concept for combining [Doorstop](https://github.com/doorstop-dev/doorstop) and [Literate Programming](https://en.wikipedia.org/wiki/Literate_programming) (LP).

## Setup

- Doorstop: `pip3 install doorstop`
- [NoWEB](https://github.com/nrnrnr/noweb): `apt-get install noweb`

## Usage

Run tests:

```
make test
```

## Concepts

### LP in Markdown

Using noweb LP syntax it is feasible to have a document being both noweb and Markdown compliant at the same time, putting the chunks within code blocks.

Short summary of NoWEB chunk syntax:
- chunk definition starts with `<<chunk>>=`
- chunk definition ends with `@`, or the start of another chunk definition
- Insert chunk into other chunk by `<<chunk>>`
- Multiple definitions of chunks append to chunk
- chunk definition start and end must begin at first column 

So when writing documentation, there is only the rule is not starting any line with double `<`.

Not all code blocks need be chunks. Having have requirements as pseudo-code blocks is a good idea.

For reasons, file suffix .md is used.

### Building

See Makefile for details.

#### Documentation

`doorstop publish ...`

All formats supported.

#### Code

- Publish document in Markdown format
   - `doorstop publish -m hello ...`
- Generate code from generated Markdown document
  - `notangle -Rhello.c hello.md > hello.c`
  - `notangle -Rhello.h hello.md > hello.h`
  - Templates can be added to notangle command
    - `notangle -Rhello.h hello.md header-template.md > hello.h`

### Migration

Migrating to LP is as simple as adding existing source files as a single chunks. Once in LP form smaller chunks can iteratively be extracted from larger chunks.

### Check in both LP and code

- LP is a good view for understanding the code
  - Narrative
- Code form is better for writing code
  - Tooling
- Doorstop can validate whether code and LP are in sync
  - Out-of-sync acceptable during development, not release
- If editing LP, update code by building code
- If editing code, paste changes back into LP chunks
  - Add narrative
  - Checking in out-of-sync code allows using diff after build to trace discrepancies, and iteratively fix them
- Good idea to review changes from both views

### Items referencing generated code

Allows for tracing whether generation of code has been reviewed.

## Future work

- Doorstop workflow
  - Editing items as separate files isn't feasible for high granularity items
  - The experimental doorstop-gui is unlikely to scale (2021-09-19)
    - [Doorhole](https://github.com/sevendays/doorhole) is a more promising candidate
- Build system compatibility and concepts
  - Editing generated code file should be supported
  - The makefile has several issues
- More intriguing examples than an over-engineered Hello World
  - More sources
  - Document hierarchies
  - More templates
  - More links
  - Have the build scripts and tests be LP too
  - More...
