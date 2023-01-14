local _, addon = ...

-- Because of dependency loops with load order and initialization
-- Add to global variable, then have RXP load it when it's ready

RXPGuides_Themes = RXPGuides_Themes or {}

-- Ensure name exists without redundancy
for name, theme in pairs(addon.themes) do
  if not theme.name then theme.name = name end

  RXPGuides_Themes[name] = theme
end
