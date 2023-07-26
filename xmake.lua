add_rules("mode.debug", "mode.release")

if is_plat("windows") then
    add_cxflags("/utf-8", "/std:c++20")
    add_links("ws2_32")
else
    add_cxflags("-fexec-charset=UTF-8", "-fextended-identifiers", "-finput-charset=UTF-8")
end

for _, filepath in ipairs(os.files("./**.c")) do
target(path.basename(filepath))
    add_files(filepath)
    set_kind("binary")
end

