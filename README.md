# Dev Container features

This repository contains a set of [Visual Studio Code Remote - Containers](https://code.visualstudio.com/docs/remote/containers) features that can be used to customize your development container definitions.

## Features

Each feature is contained in its own folder under the [src](src) folder. Each feature folder contains a `README.md` file with instructions on how to use the feature, as well as a `devcontainer-feature.json` file that defines the feature.

The features are designed to be used with the [devcontainer.json](https://code.visualstudio.com/docs/remote/devcontainerjson-reference) file in your development container definition. You can add features to your `devcontainer.json` file using the `features` property.