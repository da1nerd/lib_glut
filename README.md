# lib_glut

LibGlut offers Crystal bindings for [Freeglut](http://freeglut.sourceforge.net/).

A few adjustments have been made to nomenclature to follow the Crystal style guide
and improve readability:

* the `glut` prefix has been removed from all functions and constants.
* method names are snake_case rather than camelCase.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  lib_glut:
    github: neutrinog/lib_glut
```

## Usage

```crystal
require "lib_glut"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/neutrinog/lib_glut/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [neutrinog](https://github.com/neutrinog) Joel Lonbeck - creator, maintainer
