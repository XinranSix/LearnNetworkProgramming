add_rules("mode.debug", "mode.release")

add_includedirs("./include")
set_languages("cxx20")

for _, filepath in ipairs(os.files("./**.c")) do
target(path.basename(filepath))
    add_files(filepath)
    set_kind("binary")
end

