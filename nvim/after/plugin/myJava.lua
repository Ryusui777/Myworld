-- Function to save all open files in a directory
local function save_all_files_in_directory(directory)
    -- Ensure that the directory exists
    local handle = io.popen('ls -A "' .. directory .. '"')
    local result = handle:read("*a")
    handle:close()

    -- Split result into file names
    local file_names = {}
    for file_name in result:gmatch("[^\r\n]+") do
        table.insert(file_names, file_name)
    end

    -- Go through each file and save
    for _, file_name in ipairs(file_names) do
        local file_path = directory .. '/' .. file_name
        if vim.fn.filereadable(file_path) == 1 then
            -- Open the file if it's not already open
            vim.cmd('edit ' .. file_path)
            -- Save the file
            vim.cmd('write')
        end
    end
end

-- Command to run the function with user input for directory
vim.api.nvim_create_user_command('Ryu', function(opts)
    local directory = opts.args or vim.fn.getcwd()
    print('Saving all files in ' .. directory)
    save_all_files_in_directory(directory)
end, { nargs = '?' })




