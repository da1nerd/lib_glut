# LibGLUT

LibGLUT offers Crystal bindings for [Freeglut](http://freeglut.sourceforge.net/).

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

You must also install `cmake`, `freeglut`, and `opengl`.

## Usage

```crystal
require "lib_glut"
```

TODO: Write usage instructions here

### Extensions

Since freeglut does not currently support passing context to callback functions I've included some additional methods that add this feature.
All extensions are named after their corresponding function with an `_x` appended.

For example:
```crystal
LibGLUT.display_func # standard freeglut method
LibGLUT.display_func_x # extended function with support for passing in a context.
```

The ability to pass context to a c function means we can preserve closure while calling these methods.

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
