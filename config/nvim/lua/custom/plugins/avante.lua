return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- 最新版を常に取得する場合に設定します
  opts = {
    -- 任意のオプションをここに追加
  },
  build = "make", -- ソースからビルドする場合は `make BUILD_FROM_SOURCE=true` を実行
  -- Windows用: `build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"`
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- 以下の依存関係はオプション
    "nvim-tree/nvim-web-devicons", -- または `echasnovski/mini.icons`
    "zbirenbaum/copilot.lua", -- providers='copilot'用

    {
      -- 画像貼り付けサポート
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- 推奨設定
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true, -- Windowsユーザー向け
        },
      },
    },
    {
      -- lazy=trueの場合は適切に設定が必要
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
