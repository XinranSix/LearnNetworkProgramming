add_rules("mode.debug", "mode.release")

for _, filepath in ipairs(os.files("./**.c")) do
target(path.basename(filepath))
    add_files(filepath)
    set_kind("binary")
end


