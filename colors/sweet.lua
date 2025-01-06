for k in pairs(package.loaded) do
    if k:match(".*sweet.*") then package.loaded[k] = nil end
end

require('sweet').setup()
require('sweet').colorscheme()
