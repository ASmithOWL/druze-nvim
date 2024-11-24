-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

  use({'nvim-treesitter/playground'})

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }

  use {
      'akinsho/toggleterm.nvim', tag = "*", config = function()
        require("toggleterm").setup()
    end
    }

  use({
      "asmithowl/synthdruze.nvim",
      as="synthdruze",
      config = function()
          vim.cmd.colorscheme('synthdruze')
      end
  })

  use 'mfussenegger/nvim-dap'

  use {"ryanoasis/vim-devicons"}

  use { "mracos/mermaid.vim" }

  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }

  use {
      "lukas-reineke/indent-blankline.nvim",
      commit = "2546441840172cc41e70f67c52e205cc7aa3e6ed"
  }

    use({
        "iamcco/markdown-preview.nvim"
    })

    -- packer.nvim
    use({
        "robitx/gp.nvim",
        config = function()
            local conf = {
                -- For customization, refer to Install > Configuration in the Documentation/Readme
            }
            require("gp").setup(conf)

            -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
        end,
    })
end)
