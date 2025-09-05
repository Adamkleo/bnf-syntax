# bnf-syntax.nvim

Simple syntax highlighting for BNF (Backus-Naur Form) grammar files in Neovim.

## Installation

### Lazy.nvim
```lua
{
  "yourusername/bnf-syntax"
}
```

### Packer
```lua
use "yourusername/bnf-syntax"
```

## Usage

The plugin automatically detects `.bnf` files and applies syntax highlighting. No configuration required.

Example BNF syntax that will be highlighted:
```bnf
<expression> ::= <term> | <expression> "+" <term>
<term> ::= <factor> | <term> "*" <factor>
<factor> ::= "(" <expression> ")" | <number>
```

## Configuration

Optionally customize the filetype and extension:

```lua
require("bnf-syntax").setup({
  filetype = "bnf",
  extension = "bnf"
})
```

## License

MIT
