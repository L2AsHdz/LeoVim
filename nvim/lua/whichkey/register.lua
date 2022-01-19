local wk = require('which-key')
wk.register({
  ["<leader>"] = {
    s = "Save File",
    q = "Quit NeoVim",
    Q = "Force Exit",
    k = "Next Tab",
    j = "Prev Tab",
    p = "Jump to Tab",
    t = "Open Terminal",
    w = "Jump Word",
    c = "Jump Char 2",
    C = "Jump Char 1",
    l = "Jump Line",
    L = "Jump Line Text",
    e = {
      name = "Ale Errors",
      n = "Next Error",
      p = "Prev Error"
    },
    r = {
      name  = "Ranger",
      g = "Open Ranger"
    },
    m = {
      name = "Move Tab",
      j = "Move Tab Left",
      k = "Move Tab Right"
    },
    b = {
      name = "Buffer",
      b = "Sayonara",
      o = "Close everything else"
    },
    n = {
      name = "NvimTree",
      t = "Open NvimTree",
      r = "Refresh NvimTree"
    },
    f = {
      name = "Fzf",
      f = "Find Files",
      b = "Find Open Buffers",
      l = "Find Line",
      g = "Find Text",
      t = "Find Text Coc",
      G = {
        name = "Git",
        b = "Find Branches",
        t = "Find Tags"
      }
    },
    g = {
      name = "Git",
      a = "Stage Hunk",
      u = "Undo Hunk",
      n = "Next Hunk",
      p = "Prev Hunk",
      s = "Git Status",
      h = "Preview Hunk",
      m = "Show Commit"
    },
    d = {
      name = "DiffView",
      v = "Open DiffView",
      h = "Open DiffviewFileHistory",
      q = "Quit DiffView",
      f = "Toggle DiffViewFiles",
      r = "Refresh DiffView"
    },
    c = {
      name = "Coc",
      d = "Coc Definition",
      t = "Coc Type Definition",
      i = "Coc Implementation",
      R = "Coc References",
      r = "Coc Rename",
      f = "Coc Format Selected",
      s = "Coc Codeaction Selected",
      a = "Coc Codeaction",
      x = "Coc Fix Current",
      e = "Coc Extensions",
      c = "Coc Commands",
      o = "Coc Symbol",
      O = "Coc Symbols",
      n = "Coc Next",
      p = "Coc Prev"
    },
    S = {
      name = "Sessions",
      s = "Session Save",
      c = "Session Close",
      d = "Session Delete"
    }
  }
})
