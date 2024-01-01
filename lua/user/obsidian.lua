local status_ok, obsidian = pcall(require, "obsidian")
  if not status_ok then
    return
end

obsidian.setup{
  use_advanced_uri = true,
  dir = "~/vimwiki/",
  templates = {
    subdir = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    -- A map for custom variables, the key should be the variable and the value a function
    substitutions = {},
  },
  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "diary",
    -- Optional, if you want to change the date format for the ID of daily notes.
    -- date_format = "%Y-%m-%d",
    -- Optional, if you want to change the date format of the default alias of daily notes.
    alias_format = "%B %-d, %Y",
    -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
    template = "Diary.md"
  },
}
