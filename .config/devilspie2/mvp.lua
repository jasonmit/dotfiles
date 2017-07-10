-- the debug_print command does only print anything to stdout
-- if devilspie2 is run using the --debug option
-- debug_print("Window Name: " .. get_window_name());
-- debug_print("Application name: " .. get_application_name())

if (string.match(get_window_name(), "- mpv")) then
   undecorate_window();
end
