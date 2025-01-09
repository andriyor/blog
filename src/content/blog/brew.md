---
title: Reproducible macOS environment with Homebrew
description: Lorem ipsum dolor sit amet
pubDate: Jan 8 2025
---
When I got a new Mac, I wanted a fresh, clutter-free setup without dragging along unnecessary apps from my previous machine. As i already use Homebrew for managing packages and love clarity of a categorized app list that keeps me organized and in control, I decided to create a  [Brewfile](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f) - a single, well-structured list of all the essential apps and tools I truly need. I store this file in a Git repository on [GitHub](https://github.com/andriyor/environment/blob/master/Brewfile) to keep it synchronized across devices and easily share it with others.

I also learned about the NixOS package manager from [this](https://www.youtube.com/watch?v=Z8BL8mdzWHI&t=1327s) video video, and I was surprised to discover that it can even manage macOS settings. However, I found the configuration approach to be a bit redundant for my needs.

Homebrew does have some security [concerns](https://www.sainnhe.dev/post/dont-use-homebrew/), but they aren't critical for me. I also prefer installing pre-bundled apps, unlike MacPorts, which takes a different approach.