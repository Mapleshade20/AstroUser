return {
  "CRAG666/code_runner.nvim",
  cmd = "RunCode",
  keys = {
    {
      "<leader>rr",
      "<cmd>RunCode<cr>",
      desc = "Run Current",
    },
    {
      -- Modify this section to detect between Go and C++
      "<leader>rb",
      function()
        -- Get the file extension of the current buffer
        local file_ext = vim.fn.expand "%:e"

        -- Check if it's a Go file
        if file_ext == "go" then
          vim.cmd "!go mod tidy && go build ."
        -- Check if it's a C++ file
        elseif file_ext == "cpp" then
          local file_name = vim.fn.expand "%:t:r" -- get file name without extension
          local dir = vim.fn.expand "%:p:h" -- get directory of the file

          -- Compile and build the C++ file
          vim.cmd("!" .. "cd " .. dir .. " && g++ -o " .. file_name .. ".bin " .. vim.fn.expand "%")
        else
          print "Unsupported file type for building"
        end
      end,
      desc = "Build Current",
    },
  },
  opts = {
    mode = "toggleterm",
    focus = false,
    filetype = {
      python = "python -u",
      go = { "cd $dir ;", "go mod tidy;", "go run $dir" },
      cpp = { "cd $dir ;", "g++-11 -o %:p:r.bin $file ;", "%:p:r.bin" },
    },
  },
}
