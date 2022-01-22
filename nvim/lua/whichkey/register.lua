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
      G = {
        name = "Git",
        b = "Find Branches",
        t = "Find Tags"
      }
    },
    g = {
      name = "Git",
      a = "Stage Hunk",
      u = "Undo Stage Hunk",
      r = "Reset Hunk",
      f = "Stage File",
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
    S = {
      name = "Sessions",
      s = "Session Save",
      c = "Session Close",
      d = "Session Delete"
    }
  }
})
