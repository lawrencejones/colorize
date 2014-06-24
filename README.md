colorize
========

Allows for natural language outputting of ANSI terminal colors with JS Strings.

Example usage.

```coffee
(require 'colorize')(String)

console.log 'this is red'.red
console.log 'and I am blue'.blue
console.log 'we can also stack styles'.orange.bold
```

Resultant Output

![output.png](https://raw.githubusercontent.com/LawrenceJones/colorize/master/img/example.png)
