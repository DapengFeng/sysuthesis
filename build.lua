#!/usr/bin/env texlua

module = "sysuthesis"

-- supportdir = "./testfiles/support"
checksuppfiles = {"*.tex"}

docfiles = {
  "CHANGELOG.md",
  "sysuthesis-example.tex",
  "spine.tex",
  "sysusetup.tex",
  "data",
  "ref"
}
installfiles = {"*.cls", "*.bst", "*.bbx", "*.cbx", "logo", "scan"}
sourcefiles = {"*.dtx", "*.ins", "*.bst", "*.bbx", "*.cbx", "logo", "scan"}
tagfiles = {"*.dtx", "CHANGELOG.md", "package.json"}
textfiles = {"*.md"}
typesetdemofiles = {"sysuthesis-example.tex", "spine.tex"}

checkengines = {"xetex"}
stdengine = "xetex"

-- include .tds.zip in build output
packtdszip = true

-- specify some files of their correct TDS locations
tdslocations = {
  "bibtex/bst/sysuthesis/*.bst",
  "tex/latex/sysuthesis/logo/sysu_*.pdf",
  "tex/latex/sysuthesis/scan/scan-*.pdf",
}

typesetexe = "xelatex"
unpackexe = "xetex"
bibtexexe = "bibtex"
bibtexopts = ""
biberopts = "--quiet"

specialtypesetting = specialtypesetting or {
  ["sysuthesis-example.tex"] = {
    func = function (file)
      local name = jobname(file)
      local errorlevel = tex(file)
      if errorlevel == 0 then
        -- Return a non-zero errorlevel if anything goes wrong
        errorlevel =(
          bibtex(name) +
          bibtex(name .. "-appendix-a") +
          tex(file) +
          bibtex(name) +
          bibtex(name .. "-appendix-a") +
          tex(file) +
          tex(file)
        )
      end
      return errorlevel
    end
  }
}

checkopts = "-file-line-error -halt-on-error -interaction=nonstopmode"
typesetopts = "-shell-escape -file-line-error -halt-on-error -interaction=nonstopmode"

lvtext = ".tex"

maxprintline = 79 -- keep compatibility with existing test files

function docinit_hook()
  for _, file in pairs({"dtx-style.sty"}) do
    cp(file, unpackdir, typesetdir)
  end
  return 0
end

function update_tag(file, content, tagname, tagdate)
  local url = "https://github.com/DapengFeng/sysuthesis"
  local date = string.gsub(tagdate, "%-", "/")
  if string.match(file, "%.dtx$") then
    if string.match(content, "%d%d%d%d/%d%d/%d%d [0-9.]+") then
      content = string.gsub(content, "%d%d%d%d/%d%d/%d%d [0-9.]+",
        date .. " " .. tagname)
    end
    if string.match(content, "\\def\\version{[0-9.]+}") then
      content = string.gsub(content, "\\def\\version{[0-9.]+}",
        "\\def\\version{" .. tagname .. "}")
    end

  elseif string.match(file, "CHANGELOG.md") then
    local previous = string.match(content, "/compare/(.*)%.%.%.HEAD")
    local gittag = 'v' .. tagname

    if gittag == previous then return content end
    content = string.gsub(content,
      "## %[Unreleased%]",
      "## [Unreleased]\n\n## [" .. gittag .."] - " .. tagdate)
    content = string.gsub(content,
      previous .. "%.%.%.HEAD",
      gittag .. "...HEAD\n" ..
      string.format("%-14s", "[" .. gittag .. "]:") .. url .. "/compare/"
        .. previous .. "..." .. gittag)

  elseif string.match(file, "package.json") then
    content = string.gsub(content,
      "\"version\": \"[0-9.]+\"",
      "\"version\": \"" .. tagname .. "\"")
  end

  return content
end