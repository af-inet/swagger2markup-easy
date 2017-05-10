# swagger2markup-easy

A skeleton project for generating documentation (markup) using [swagger2markup-cli](https://github.com/Swagger2Markup/swagger2markup-cli).

# usage

replace `swagger.yaml` with your swagger file.

`make`.
- outputs documentation for `swagger.yaml` to `./docs` directory.
- `./swagger2markup-cli` is cloned as a dependency.

`make clean`
- removes `./docs` directory.

# configuration

Edit [config.properties](config.properties) to modify the behavior of swagger2markup.

See [Swagger2Markup's Documentation](https://github.com/Swagger2Markup/swagger2markup/blob/master/src/docs/asciidoc/usage_guide.adoc#swagger2markup-properties) for all available properties.
