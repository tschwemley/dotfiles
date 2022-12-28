local M = {}

function M.create_tabgroup_with_tab(url)
  local tabgroup = window.new_tabgroup()
  local tab = tabgroup:new_tab(url)
  return tabgroup, tab
end

function M.create_named_tabgroup(name, color)
  local tabgroup = window.new_tabgroup()
  tabgroup:set_prop("name", name)
  tabgroup:set_prop("color", color)
  return tabgroup
end

function M.set_active_tab(tabgroup, tab)
  tabgroup:set_index(tab:index())
end

function M.get_active_tab(tabgroup)
  return tabgroup:current()
end

function M.get_tab_count(tabgroup)
  return #tabgroup
end

function M.close_tab(tab)
  tab:close()
end

function M.close_tabgroup(tabgroup)
  for _, tab in ipairs(tabgroup) do
    tab:close()
  end
end

return M
