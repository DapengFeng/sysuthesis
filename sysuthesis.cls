%%
%% This is file `sysuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% sysuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2024 by Dapeng Feng <fengdp5@mail2.sysu.edu.cn>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\newcommand\sysuthesisversion{1.2.0}
\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{sysuthesis}
[2024/06/06 {\sysuthesisversion} Sun Yat-sen University Thesis Template]
\newcommand\sysu@error[1]{%
  \ClassError{sysuthesis}{#1}{}%
}
\newcommand\sysu@warning[1]{%
  \ClassWarning{sysuthesis}{#1}%
}
\newcommand\sysu@debug[1]{%
  \typeout{Package sysuthesis Info: #1}%
}
\newcommand\sysu@patch@error[1]{%
  \sysu@error{Failed to patch command \protect#1}%
}
\newcommand\sysu@deprecate[2]{%
  \def\sysu@@tmp{#2}%
  \sysu@warning{%
    The #1 is deprecated%
    \ifx\sysu@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2017/04/15}{}{
  \sysu@error{%
    TeX Live 2017 or later version is required to compile this document%
  }
}
\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \sysu@error{XeLaTeX or LuaLaTeX is required to compile this document}
  \fi
\fi
\InputIfFileExists{sysuthesis-pdf-test-config.tex}{}{
  \InputIfFileExists{sysuthesis-log-test-config.tex}{}{}
}
\hyphenation{SYSU-Thesis}
\def\sysuthesis{SYSUThesis}
\def\version{\sysuthesisversion}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=sysu,
  prefix=sysu@,
  setkeys=\kvsetkeys}
\let\sysu@setup@hook\@empty
\newcommand\sysusetup[1]{%
  \let\sysu@setup@hook\@empty
  \kvsetkeys{sysu}{#1}%
  \sysu@setup@hook
}
\newcommand\sysu@define@key[1]{%
  \kvsetkeys{sysu@key}{#1}%
}
\kv@set@family@handler{sysu@key}{%
  \@namedef{sysu@#1@@name}{#1}%
  \def\sysu@@default{}%
  \def\sysu@@choices{}%
  \kv@define@key{sysu@value}{name}{%
    \@namedef{sysu@#1@@name}{##1}%
  }%
  \@namedef{sysu@#1@@check}{}%
  \@namedef{sysu@#1@@code}{}%
  \kv@define@key{sysu@value}{choices}{%
    \def\sysu@@choices{##1}%
    \@namedef{sysu@#1@@reset}{}%
    \@namedef{sysu@#1@@check}{%
      \@ifundefined{%
        ifsysu@\@nameuse{sysu@#1@@name}@\@nameuse{sysu@\@nameuse{sysu@#1@@name}}%
      }{%
        \sysu@error{Invalid value "#1 = \@nameuse{sysu@\@nameuse{sysu@#1@@name}}"}%
      }%
      \@nameuse{sysu@#1@@reset}%
      \@nameuse{sysu@\@nameuse{sysu@#1@@name}@\@nameuse{sysu@\@nameuse{sysu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{sysu@value}{default}{%
    \def\sysu@@default{##1}%
  }%
  \kvsetkeys{sysu@value}{#2}%
  \@namedef{sysu@\@nameuse{sysu@#1@@name}}{}%
  \kv@set@family@handler{sysu@choice}{%
    \ifx\sysu@@default\@empty
      \def\sysu@@default{##1}%
    \fi
    \expandafter\newif\csname ifsysu@\@nameuse{sysu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname sysu@#1@@reset\endcsname{%
      \@nameuse{sysu@\@nameuse{sysu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{sysu@choice}{\sysu@@choices}%
  \expandafter\let\csname sysu@\@nameuse{sysu@#1@@name}\endcsname\sysu@@default
  \expandafter\ifx\csname sysu@\@nameuse{sysu@#1@@name}\endcsname\@empty\else
    \@nameuse{sysu@#1@@check}%
  \fi
  \kv@define@key{sysu}{#1}{%
    \@namedef{sysu@\@nameuse{sysu@#1@@name}}{##1}%
    \@nameuse{sysu@#1@@check}%
    \@nameuse{sysu@#1@@code}%
  }%
}
\newcommand\sysu@option@hook[2]{%
  \expandafter\g@addto@macro\csname sysu@#1@@code\endcsname{#2}%
}
\sysu@define@key{
  thesis-type = {
    name = thesis@type,
    choices = {
      thesis,
      proposal,
      report,
    },
    default = thesis,
  },
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  main-language = {
    name = main@language,
    choices = {
      chinese,
      english,
    },
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
  system = {
    choices = {
      auto,
      mac,
      unix,
      windows,
    },
    default = auto,
  },
  fontset = {
    choices = {
      auto,
      windows,
      mac,
      ubuntu,
      fandol,
      none,
    },
    default = auto,
  },
  font = {
    choices = {
      auto,
      times,
      termes,
      stix,
      xits,
      libertinus,
      newcm,
      lm,
      newtx,
      none,
    },
    default = auto,
  },
  cjk-font = {
    name = cjk@font,
    choices = {
      auto,
      windows,
      windows-local,
      mac,
      mac-word,
      noto,
      fandol,
      none,
    },
    default = auto,
  },
  windows-font-dir = {
    name = windows@font@dir,
    default = {.},
  },
  math-font = {
    name = math@font,
    choices = {
      auto,
      stix,
      xits,
      libertinus,
      newcm,
      lm,
      newtx,
      none,
    },
    default = auto,
  },
  math-style = {
    name = math@style,
    choices = {
      GB,
      ISO,
      TeX,
    },
  },
  uppercase-greek = {
    name = uppercase@greek,
    choices = {
      italic,
      upright,
    },
  },
  less-than-or-equal = {
    name = leq,
    choices = {
      slanted,
      horizontal,
    },
  },
  integral = {
    choices = {
      upright,
      slanted,
    },
  },
  integral-limits = {
    name = integral@limits,
    choices = {
      true,
      false,
    },
  },
  partial = {
    choices = {
      upright,
      italic,
    },
  },
  math-ellipsis = {
    name = math@ellipsis,
    choices = {
      centered,
      lower,
      AMS,
    },
  },
  real-part = {
    name = real@part,
    choices = {
      roman,
      fraktur,
    },
  },
  output = {
    choices = {
      print,
      electronic,
    },
    default = print,
  },
}
\newif\ifsysu@degree@graduate
\newcommand\sysu@set@graduate{%
  \sysu@degree@graduatefalse
  \ifsysu@degree@doctor
    \sysu@degree@graduatetrue
  \fi
  \ifsysu@degree@master
    \sysu@degree@graduatetrue
  \fi
}
\sysu@set@graduate
\sysu@option@hook{degree}{%
  \sysu@set@graduate
}
\DeclareBoolOption[false]{openright}
\DeclareComplementaryOption{openany}{openright}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\ifsysu@openright
  \PassOptionsToClass{openright}{book}
\else
  \PassOptionsToClass{openany}{book}
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain,fontset=none]{ctexbook}[2017/04/01]
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
\RequirePackage{geometry}%
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{notoccite}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\AtEndPreamble{
  \ifx\tikzifexternalizing\@undefined\else
    \tikzifexternalizing{
      \renewcommand*\includepdf[2][]{}
    }{}
  \fi
}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifsysu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifXeTeX
  \RequirePackage{xeCJKfntef}
\else
  \RequirePackage{ulem}
\fi
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{url}
\AtEndPreamble{
  \@ifpackageloaded{biblatex}{}{
    \@ifpackageloaded{apacite}{}{
      \RequirePackage{natbib}
    }
  }
}
\AtEndOfPackageFile*{natbib}{
  \@ifpackageloaded{apacite}{}{
    \RequirePackage{bibunits}
  }
}
\newcommand\sysu@package@conflict[2]{%
  \AtEndOfPackageFile*{#1}{%
    \AtBeginOfPackageFile*{#2}{%
      \sysu@error{The "#2" package is incompatible with "#1"}%
    }%
  }%
}
\sysu@package@conflict{biblatex}{bibunits}
\sysu@package@conflict{biblatex}{chapterbib}
\sysu@package@conflict{biblatex}{cite}
\sysu@package@conflict{biblatex}{multibib}
\sysu@package@conflict{biblatex}{natbib}

\sysu@package@conflict{bibunits}{biblatex}
\sysu@package@conflict{bibunits}{chapterbib}
\sysu@package@conflict{bibunits}{multibib}

\sysu@package@conflict{unicode-math}{amscd}
\sysu@package@conflict{unicode-math}{amsfonts}
\sysu@package@conflict{unicode-math}{amssymb}
\sysu@package@conflict{unicode-math}{bbm}
\sysu@package@conflict{unicode-math}{bm}
\sysu@package@conflict{unicode-math}{eucal}
\sysu@package@conflict{unicode-math}{eufrak}
\sysu@package@conflict{unicode-math}{mathrsfs}
\sysu@package@conflict{unicode-math}{newtxmath}
\sysu@package@conflict{unicode-math}{upgreek}

\sysu@package@conflict{natbib}{biblatex}
\sysu@package@conflict{natbib}{cite}

\sysu@package@conflict{newtxmath}{amsfonts}
\sysu@package@conflict{newtxmath}{amssymb}
\sysu@package@conflict{newtxmath}{unicode-math}
\sysu@package@conflict{newtxmath}{upgreek}
\AtBeginOfPackageFile*{amsthm}{
  \@ifpackageloaded{newtxmath}{
    \sysu@error{The "amsthm" package should be loaded before setting "newtxmath"}
  }{}
}%
\geometry{
  paper          = a4paper,  % 210 * 297mm
  marginparwidth = 2cm,
  marginparsep   = 0.5cm,
}
\newcommand\sysu@set@geometry{%
  \ifsysu@degree@bachelor
    \geometry{
      top        = 3.8cm,
      bottom     = 3.2cm,
      left       = 3.2cm,
      right      = 3cm,
      headheight = 1.9cm,
      headsep    = 1.9cm,
      footskip   = 1.45cm,
    }%
    \ifsysu@output@print
      \geometry{
        left       = 3.2cm,
        right      = 3cm,
      }%
    \else
      \geometry{
        hmargin    = 3cm,
      }%
    \fi
  \else
    \geometry{
      margin     = 3cm,
      headheight = 2.7cm,
      headsep    = 0.3cm,
      footskip   = 0.8cm,
    }%
  \fi
}
\sysu@set@geometry
\sysu@option@hook{degree}{\sysu@set@geometry}
\sysu@option@hook{output}{\sysu@set@geometry}
\sysusetup{main-language=\sysu@language}%
\let\sysu@main@language\sysu@language
\sysu@option@hook{language}{%
  \ifx\@begindocumenthook\@undefined\else
    \sysusetup{main-language=\sysu@language}%
    \let\sysu@main@language\sysu@language
  \fi
}
\newcommand\sysu@reset@main@language{%
  \sysusetup{language = \sysu@main@language}%
  \let\sysu@language\sysu@main@language
}
\newcommand\sysu@set@chapter@names{%
  \ifsysu@main@language@chinese
    \def\sysu@comments@name{指导教师评语}%
    \def\bibname{参考文献}%
    \def\appendixname{附录}%
    \def\indexname{索引}%
    \def\sysu@resolution@name{答辩委员会决议书}%
    \ifsysu@degree@bachelor
      \def\contentsname{目\qquad 录}%
      \def\listfigurename{插图索引}%
      \def\listtablename{表格索引}%
      \def\sysu@list@figure@table@name{插图和附表索引}%
      \def\sysu@list@algorithm@name{算法索引}%
      \def\sysu@acknowledgements@name{致\qquad 谢}%
      \def\listequationname{公式索引}%
      \def\sysu@denotation@name{主要符号表}%
      \def\sysu@resume@name{在学期间参加课题的研究成果}%
    \else
      \def\listfigurename{插图清单}%
      \def\listtablename{附表清单}%
      \def\sysu@list@figure@table@name{插图和附表清单}%
      \def\sysu@list@algorithm@name{算法清单}%
      \def\listequationname{公式清单}%
      \def\sysu@acknowledgements@name{致\quad 谢}%
      \ifsysu@degree@graduate
        \def\contentsname{目\quad 录}%
        \def\sysu@denotation@name{符号和缩略语说明}%
        \def\sysu@resume@name{个人简历、在学期间完成的相关学术成果}%
      \else  % degree = postdoc
        \def\contentsname{目\qquad 次}%
        \def\sysu@denotation@name{符号表}%
        \def\sysu@resume@name{个人简历、发表的学术论文与科研成果}%
      \fi
    \fi
  \else
    \ifsysu@main@language@english
      \def\sysu@comments@name{Comments from Thesis Supervisor}%
      \def\sysu@resolution@name{Resolution of Thesis Defense Committee}%
      \def\indexname{Index}%
      \ifsysu@degree@bachelor
        \def\contentsname{CONTENTS}%
        \def\listfigurename{FIGURES}%
        \def\listtablename{TABLES}%
        \def\sysu@list@figure@table@name{FIGURES AND TABLES}%
        \def\sysu@list@algorithm@name{ALGORITHMS}%
        \def\listequationname{EQUATIONS}%
        \def\sysu@denotation@name{ABBREVIATIONS}%
        \def\bibname{REFERENCES}%
        \def\appendixname{APPENDIX}%
        \def\sysu@acknowledgements@name{ACKNOWLEDGEMENTS}%
        \def\sysu@resume@name{PUBLICATIONS}%
      \else
        \def\contentsname{Table of Contents}%
        \def\listfigurename{List of Figures}%
        \def\listtablename{List of Tables}%
        \def\sysu@list@figure@table@name{List of Figures and Tables}%
        \def\sysu@list@algorithm@name{List of Algorithms}%
        \def\listequationname{List of Equations}%
        \def\sysu@denotation@name{List of Symbols and Acronyms}%
        \def\bibname{References}%
        \def\appendixname{Appendix}%
        \def\sysu@acknowledgements@name{Acknowledgements}%
        \def\sysu@resume@name{Resume}%
      \fi
    \fi
  \fi
}
\sysu@set@chapter@names
\sysu@option@hook{degree}{\sysu@set@chapter@names}
\sysu@option@hook{main-language}{\sysu@set@chapter@names}
\newcommand\sysu@set@names{%
  \ifsysu@language@chinese
    \ctexset{
      figurename = 图,
      tablename  = 表,
    }%
    \def\sysu@algorithm@name{算法}%
    \def\sysu@equation@name{公式}%
    \def\sysu@assumption@name{假设}%
    \def\sysu@definition@name{定义}%
    \def\sysu@proposition@name{命题}%
    \def\sysu@lemma@name{引理}%
    \def\sysu@theorem@name{定理}%
    \def\sysu@axiom@name{公理}%
    \def\sysu@corollary@name{推论}%
    \def\sysu@exercise@name{练习}%
    \def\sysu@example@name{例}%
    \def\sysu@remark@name{注释}%
    \def\sysu@problem@name{问题}%
    \def\sysu@conjecture@name{猜想}%
    \def\sysu@proof@name{证明}%
    \def\sysu@theorem@separator{：}%
  \else
    \ifsysu@language@english
      \ctexset{
        figurename = {Figure},
        tablename  = {Table},
      }%
      \def\sysu@algorithm@name{Algorithm}%
      \def\sysu@equation@name{Equation}%
      \def\sysu@assumption@name{Assumption}%
      \def\sysu@definition@name{Definition}%
      \def\sysu@proposition@name{Proposition}%
      \def\sysu@lemma@name{Lemma}%
      \def\sysu@theorem@name{Theorem}%
      \def\sysu@axiom@name{Axiom}%
      \def\sysu@corollary@name{Corollary}%
      \def\sysu@exercise@name{Exercise}%
      \def\sysu@example@name{Example}%
      \def\sysu@remark@name{Remark}%
      \def\sysu@problem@name{Problem}%
      \def\sysu@conjecture@name{Conjecture}%
      \def\sysu@proof@name{Proof}%
      \def\sysu@theorem@separator{: }%
    \fi
  \fi
}
\sysu@set@names
\sysu@option@hook{language}{\sysu@set@names}
\ifLuaTeX
  % ctex 将带圈数字 U+2460–U+24FF 归入字符范围 3（ALchar），这里改回范围 6（JAchar）
  \ltjdefcharrange{3}{%
    "2000-"243F, "2500-"27BF, "2900-"29FF, "2B00-"2BFF}
  \ltjdefcharrange{6}{%
    "2460-"24FF, "2E80-"2EFF, "3000-"30FF, "3190-"319F, "31F0-"4DBF,
    "4E00-"9FFF, "F900-"FAFF, "FE10-"FE1F, "FE30-"FE6F, "FF00-"FFEF,
    "1B000-"1B16F, "1F100-"1F2FF, "20000-"3FFFF, "E0100-"E01EF}
\else
  \ifXeTeX
    \xeCJKDeclareCharClass{CJK}{"2460 -> "2473}
    \xeCJKDeclareCharClass{CJK}{"2605}
  \fi
\fi
\newcommand\sysu@set@punctuations{%
  \ifsysu@language@chinese
    \ifLuaTeX
      \ltjsetparameter{jacharrange={+9}}
    \else
      \ifXeTeX
        \xeCJKDeclareCharClass{FullLeft}{"2018, "201C}%
        \xeCJKDeclareCharClass{FullRight}{
          "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
        }%
      \fi
    \fi
  \else
    \ifsysu@language@english
      \ifLuaTeX
        \ltjsetparameter{jacharrange={-9}}
      \else
        \ifXeTeX
          \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
          \xeCJKDeclareCharClass{HalfRight}{
            "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
          }%
        \fi
      \fi
    \fi
  \fi
}
\sysu@set@punctuations
\sysu@option@hook{language}{\sysu@set@punctuations}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip 6bp%
  \abovedisplayshortskip 6bp%
  \belowdisplayshortskip 6bp%
  \belowdisplayskip \abovedisplayskip
}
\normalsize
\ifx\MakeRobust\@undefined \else
    \MakeRobust\normalsize
\fi
\def\sysu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\sysu@def@fontsize{chuhao}{42bp}
\sysu@def@fontsize{xiaochu}{36bp}
\sysu@def@fontsize{yihao}{26bp}
\sysu@def@fontsize{xiaoyi}{24bp}
\sysu@def@fontsize{erhao}{22bp}
\sysu@def@fontsize{xiaoer}{18bp}
\sysu@def@fontsize{sanhao}{16bp}
\sysu@def@fontsize{xiaosan}{15bp}
\sysu@def@fontsize{sihao}{14bp}
\sysu@def@fontsize{xiaosi}{12bp}
\sysu@def@fontsize{wuhao}{10.5bp}
\sysu@def@fontsize{xiaowu}{9bp}
\sysu@def@fontsize{liuhao}{7.5bp}
\sysu@def@fontsize{xiaoliu}{6.5bp}
\sysu@def@fontsize{qihao}{5.5bp}
\sysu@def@fontsize{bahao}{5bp}
\ifsysu@system@auto
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \sysusetup{system = mac}
  }{
    \IfFileExists{/dev/null}{
      \IfFileExists{null:}{
        \sysusetup{system = windows}
      }{
        \sysusetup{system = unix}
      }
    }{
      \sysusetup{system = windows}
    }
  }
  \sysu@debug{Detected system: \sysu@system}
\fi
\newcommand\sysu@mac@word@font@dir{%
  /Applications/Microsoft Word.app/Contents/Resources/DFonts/%
}
\ifsysu@fontset@auto
  \ifsysu@system@windows
    \sysusetup{fontset = windows}
  \else
    \IfFontExistsTF{SimSun}{
      \sysusetup{fontset = windows}
    }{
      \IfFileExists{\sysu@windows@font@dir/Simsun.ttc}{
        \sysusetup{fontset = windows, cjk-font = windows-local}
      }{
        \IfFileExists{\sysu@mac@word@font@dir/Simsun.ttc}{
          \sysusetup{fontset = windows, cjk-font = mac-word}
        }{
          \ifsysu@system@mac
            \sysusetup{fontset = mac}
          \else
            \IfFontExistsTF{Noto Serif CJK SC}{
              \sysusetup{fontset = ubuntu}
            }{
              \sysusetup{fontset = fandol}
            }
          \fi
        }
      }
    }
  \fi
  \sysu@debug{Detected fontset: \sysu@fontset}
\fi
\newcommand\sysu@set@font{%
  \@nameuse{sysu@set@font@\sysu@font}%
}
\sysu@option@hook{font}{\sysu@set@font}
\newcommand\sysu@set@font@auto{%
  \ifsysu@font@auto
    \ifsysu@fontset@windows
      \sysusetup{font=times}%
    \else
      \ifsysu@fontset@mac
        \sysusetup{font=times}%
      \else
        \sysusetup{font=termes}%
      \fi
    \fi
  \fi
}
\sysu@option@hook{math-font}{\g@addto@macro\sysu@setup@hook{\sysu@set@font@auto}}
\AtBeginOfPackageFile*{siunitx}{\sysu@set@font@auto}
\AtEndPreamble{\sysu@set@font@auto}
\newcommand\sysu@set@font@times{%
  \setmainfont{Times New Roman}%
  \setsansfont{Arial}%
  \ifsysu@fontset@mac
    \setmonofont{Menlo}[Scale = MatchLowercase]%
  \else
    \setmonofont{Courier New}[Scale = MatchLowercase]%
  \fi
}
\newcommand\sysu@set@font@termes{%
  \setmainfont{texgyretermes}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \sysu@set@texgyre@sans@mono
}
\newcommand\sysu@set@texgyre@sans@mono{%
  \setsansfont{texgyreheros}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmonofont{texgyrecursor}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
    Ligatures      = CommonOff,
  ]%
}
\let\sysu@font@family@stix\@empty
\newcommand\sysu@set@stix@names{%
  \ifx\sysu@font@family@stix\@empty
    \IfFontExistsTF{STIXTwoText-Regular.otf}{%
      \gdef\sysu@font@family@stix{STIXTwoText}%
      \gdef\sysu@font@name@stix@math{STIXTwoMath-Regular}%
    }{%
      \gdef\sysu@font@family@stix{STIX2Text}%
      \gdef\sysu@font@name@stix@math{STIX2Math}%
    }%
  \fi
}
\newcommand\sysu@set@font@stix{%
  \sysu@set@stix@names
  \setmainfont{\sysu@font@family@stix}[
    Extension      = .otf,
    UprightFont    = *-Regular,
    BoldFont       = *-Bold,
    ItalicFont     = *-Italic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \sysu@set@texgyre@sans@mono
}
\let\sysu@font@family@xits\@empty
\newcommand\sysu@set@xits@names{%
  \ifx\sysu@font@family@xits\@empty
    \IfFontExistsTF{XITSMath-Regular.otf}{%
      \gdef\sysu@font@family@xits{XITS}%
      \gdef\sysu@font@style@xits@rm{Regular}%
      \gdef\sysu@font@style@xits@bf{Bold}%
      \gdef\sysu@font@style@xits@it{Italic}%
      \gdef\sysu@font@style@xits@bfit{BoldItalic}%
      \gdef\sysu@font@name@xits@math{XITSMath-Regular}%
    }{%
      \gdef\sysu@font@family@xits{xits}%
      \gdef\sysu@font@style@xits@rm{regular}%
      \gdef\sysu@font@style@xits@bf{bold}%
      \gdef\sysu@font@style@xits@it{italic}%
      \gdef\sysu@font@style@xits@bfit{bolditalic}%
      \gdef\sysu@font@name@xits@math{xits-math}%
    }%
  \fi
}
\newcommand\sysu@set@font@xits{%
  \sysu@set@xits@names
  \setmainfont{\sysu@font@family@xits}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@xits@rm,
    BoldFont       = *-\sysu@font@style@xits@bf,
    ItalicFont     = *-\sysu@font@style@xits@it,
    BoldItalicFont = *-\sysu@font@style@xits@bfit,
  ]%
  \sysu@set@texgyre@sans@mono
}
\let\sysu@font@family@libertinus\@empty
\newcommand\sysu@set@libertinus@names{%
  \ifx\sysu@font@family@libertinus\@empty
    \IfFontExistsTF{LibertinusSerif-Regular.otf}{%
      \gdef\sysu@font@family@libertinus@serif{LibertinusSerif}%
      \gdef\sysu@font@family@libertinus@sans{LibertinusSans}%
      \gdef\sysu@font@name@libertinus@math{LibertinusMath-Regular}%
      \gdef\sysu@font@style@libertinus@rm{Regular}%
      \gdef\sysu@font@style@libertinus@bf{Bold}%
      \gdef\sysu@font@style@libertinus@it{Italic}%
      \gdef\sysu@font@style@libertinus@bfit{BoldItalic}%
    }{%
      \gdef\sysu@font@family@libertinus@serif{libertinusserif}%
      \gdef\sysu@font@family@libertinus@sans{libertinussans}%
      \gdef\sysu@font@name@libertinus@math{libertinusmath-regular}%
      \gdef\sysu@font@style@libertinus@rm{regular}%
      \gdef\sysu@font@style@libertinus@bf{bold}%
      \gdef\sysu@font@style@libertinus@it{italic}%
      \gdef\sysu@font@style@libertinus@bfit{bolditalic}%
    }%
  \fi
}
\newcommand\sysu@set@font@libertinus{%
  \sysu@set@libertinus@names
  \setmainfont{\sysu@font@family@libertinus@serif}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@libertinus@rm,
    BoldFont       = *-\sysu@font@style@libertinus@bf,
    ItalicFont     = *-\sysu@font@style@libertinus@it,
    BoldItalicFont = *-\sysu@font@style@libertinus@bfit,
  ]%
  \setsansfont{\sysu@font@family@libertinus@sans}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@libertinus@rm,
    BoldFont       = *-\sysu@font@style@libertinus@bf,
    ItalicFont     = *-\sysu@font@style@libertinus@it,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\sysu@set@font@newcm{%
  \setmainfont{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setsansfont{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmonofont{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\newcommand\sysu@set@font@lm{%
  \setmainfont{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setsansfont{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\sysu@set@font@newtx{%
  \RequirePackage{newtxtext}%
}
\ifsysu@cjk@font@auto
  \ifsysu@fontset@mac
    \sysusetup{cjk-font = mac}
  \else
    \ifsysu@fontset@windows
      \IfFontExistsTF{SimSun}{
        \sysusetup{cjk-font = windows}
      }{
        \IfFileExists{\sysu@windows@font@dir/Simsun.ttc}{
          \sysusetup{cjk-font = windows-local}
        }{
          \IfFileExists{\sysu@mac@word@font@dir/Simsun.ttc}{
            \sysusetup{cjk-font = mac-word}
          }{
            \sysu@error{Cannot find font}
          }
        }
      }
    \else
      \ifsysu@fontset@ubuntu
        \sysusetup{cjk-font = noto}
      \else
        \sysusetup{cjk-font = fandol}
      \fi
    \fi
  \fi
  \sysu@debug{Detected CJK font: \sysu@cjk@font}
\fi
\newcommand\sysu@set@cjk@font@windows{%
  \setCJKmainfont{SimSun}[
    AutoFakeBold = 3,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[AutoFakeBold = 3]%
  \setCJKmonofont{FangSong}%
  \setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold = 3]%
  \setCJKfamilyfont{zhkai}{KaiTi}%
  \setCJKfamilyfont{zhfs}{FangSong}%
}
\@namedef{sysu@set@cjk@font@windows-local}{%
  \IfFileExists{\sysu@windows@font@dir/Kaiti.ttf}{
    \setCJKmainfont{SimSun}[%
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttc,
      AutoFakeBold = 3,
      ItalicFont   = Kaiti,
      ItalicFeatures = {Extension = .ttf},
    ]%
    \setCJKmonofont{Fangsong}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhkai}{Kaiti}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhfs}{Fangsong}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
  }{
    \setCJKmainfont{SimSun}[%
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttc,
      AutoFakeBold = 3,
      ItalicFont   = Simkai,
      ItalicFeatures = {Extension = .ttf},
    ]%
    \setCJKmonofont{Simfang}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhkai}{Simkai}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
    \setCJKfamilyfont{zhfs}{Simfang}[
      Path         = \sysu@windows@font@dir/,
      Extension    = .ttf,
    ]%
  }
  \setCJKsansfont{SimHei}[%
    Path         = \sysu@windows@font@dir/,
    Extension    = .ttf,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhsong}{SimSun}[%
    Path         = \sysu@windows@font@dir/,
    Extension    = .ttc,
    AutoFakeBold = 3,
  ]%
  \setCJKfamilyfont{zhhei}{SimHei}[%
    Path         = \sysu@windows@font@dir/,
    Extension    = .ttf,
    AutoFakeBold = 3,
  ]%
}
\@namedef{sysu@set@cjk@font@mac-word}{%
  \let\sysu@windows@font@dir\sysu@mac@word@font@dir
  \@nameuse{sysu@set@cjk@font@windows-local}%
}
\newcommand\sysu@set@cjk@font@mac{%
  \defaultCJKfontfeatures{}%
  \setCJKmainfont{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = Kaiti SC Regular,
    BoldItalicFont = Kaiti SC Bold,
  ]%
  \setCJKsansfont{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKmonofont{STFangsong}
  \setCJKfamilyfont{zhsong}{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Heiti SC}[
    UprightFont    = * Light,
    BoldFont       = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{STFangsong}%
  \setCJKfamilyfont{zhkai}{Kaiti SC}[
    UprightFont    = * Regular,
    BoldFont       = * Bold,
  ]%
  \setCJKfamilyfont{zhli}{Baoli SC}%
  \setCJKfamilyfont{zhyuan}{Yuanyi SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
  ]%
}
\newcommand\sysu@set@cjk@font@noto{%
  \defaultCJKfontfeatures{}%
  \setCJKmainfont{Noto Serif CJK SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
    Script         = CJK,
  ]%
  \setCJKsansfont{Noto Sans CJK SC}[
    BoldFont       = * Medium,
    Script         = CJK,
  ]%
  \setCJKmonofont{Noto Sans Mono CJK SC}[
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
    UprightFont    = * Light,
    UprightFont    = * Bold,
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[
    BoldFont       = * Medium,
    Script         = CJK,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension      = .otf,
    UprightFont    = *-Regular,
  ]%
}
\newcommand\sysu@set@cjk@font@fandol{%
  \defaultCJKfontfeatures{}%
  \setCJKmainfont{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
    ItalicFont  = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
  ]%
  \setCJKsansfont{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKmonofont{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhsong}{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhhei}{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\ifsysu@cjk@font@none\else
  \providecommand\songti{\CJKfamily{zhsong}}
  \providecommand\heiti{\CJKfamily{zhhei}}
  \providecommand\fangsong{\CJKfamily{zhfs}}
  \providecommand\kaishu{\CJKfamily{zhkai}}
\fi
\newcommand\sysu@set@cjk@font{%
  \@nameuse{sysu@set@cjk@font@\sysu@cjk@font}%
}
\sysu@set@cjk@font
\sysu@option@hook{cjk-font}{\sysu@set@cjk@font}
\newcommand\sysu@set@math@style{%
  \ifsysu@math@style@TeX
    \sysusetup{
      uppercase-greek    = upright,
      less-than-or-equal = horizontal,
      integral           = slanted,
      integral-limits    = false,
      partial            = italic,
      math-ellipsis      = AMS,
      real-part          = fraktur,
    }%
  \else
    \sysusetup{
      uppercase-greek = italic,
      integral        = upright,
      partial         = upright,
      real-part       = roman,
    }%
    \ifsysu@math@style@ISO
      \sysusetup{
        less-than-or-equal = horizontal,
        integral-limits    = true,
        math-ellipsis      = lower,
      }%
    \else
      \ifsysu@math@style@GB
        \sysusetup{
          less-than-or-equal = slanted,
          integral-limits    = false,
          math-ellipsis      = centered,
        }%
      \fi
    \fi
  \fi
}
\ifsysu@main@language@chinese
  \sysusetup{math-style=GB}%
\else
  \sysusetup{math-style=TeX}%
\fi
\sysu@set@math@style
\sysu@option@hook{math-style}{\sysu@set@math@style}
\sysu@option@hook{main-language}{%
  \ifsysu@main@language@chinese
    \sysusetup{math-style=GB}%
  \else
    \sysusetup{math-style=TeX}%
  \fi
}
\newcommand\sysu@set@unimath@leq{%
  \ifsysu@leq@horizontal
    \ifx\@begindocumenthook\@undefined
      \let\le\sysu@save@leq
      \let\ge\sysu@save@geq
      \let\leq\sysu@save@leq
      \let\geq\sysu@save@geq
    \else
      \AtBeginDocument{%
        \let\le\sysu@save@leq
        \let\ge\sysu@save@geq
        \let\leq\sysu@save@leq
        \let\geq\sysu@save@geq
      }%
    \fi
  \else
    \ifsysu@leq@slanted
      \ifx\@begindocumenthook\@undefined
        \let\le\leqslant
        \let\ge\geqslant
        \let\leq\leqslant
        \let\geq\geqslant
      \else
        \AtBeginDocument{%
          \let\le\leqslant
          \let\ge\geqslant
          \let\leq\leqslant
          \let\geq\geqslant
        }%
      \fi
    \fi
  \fi
}
\newcommand\sysu@set@unimath@integral@limits{%
  \ifsysu@integral@limits@true
    \removenolimits{%
      \int\iint\iiint\iiiint\oint\oiint\oiiint
      \intclockwise\varointclockwise\ointctrclockwise\sumint
      \intbar\intBar\fint\cirfnint\awint\rppolint
      \scpolint\npolint\pointint\sqint\intlarhk\intx
      \intcap\intcup\upint\lowint
    }%
  \else
    \addnolimits{%
      \int\iint\iiint\iiiint\oint\oiint\oiiint
      \intclockwise\varointclockwise\ointctrclockwise\sumint
      \intbar\intBar\fint\cirfnint\awint\rppolint
      \scpolint\npolint\pointint\sqint\intlarhk\intx
      \intcap\intcup\upint\lowint
    }%
  \fi
}
\newcommand\sysu@set@unimath@ellipsis{%
  \ifsysu@math@ellipsis@centered
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodecdots}}%
  \else
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodeellipsis}}%
  \fi
}
\newcommand\sysu@set@unimath@real@part{%
  \ifsysu@real@part@roman
    \AtBeginDocument{%
      \def\Re{\operatorname{Re}}%
      \def\Im{\operatorname{Im}}%
    }%
  \else
    \AtBeginDocument{%
      \let\Re\sysu@save@Re
      \let\Im\sysu@save@Im
    }%
  \fi
}
\newcommand\sysu@set@unimath@style{%
  \ifsysu@uppercase@greek@upright
    \unimathsetup{math-style = TeX}%
  \else
    \ifsysu@uppercase@greek@italic
      \unimathsetup{math-style = ISO}%
    \fi
  \fi
  \ifsysu@math@style@TeX
    \unimathsetup{bold-style = TeX}%
  \else
    \unimathsetup{bold-style = ISO}%
  \fi
  \sysu@set@unimath@leq
  \sysu@set@unimath@integral@limits
  \ifsysu@partial@upright
    \unimathsetup{partial = upright}%
  \else
    \ifsysu@partial@italic
      \unimathsetup{partial = italic}%
    \fi
  \fi
  \sysu@set@unimath@ellipsis
  \sysu@set@unimath@real@part
}
\newcommand\sysu@qed{\rule{1ex}{1ex}}
\newcommand\sysu@load@unimath{%
  \@ifpackageloaded{unicode-math}{}{%
    \RequirePackage{unicode-math}%
    \AtBeginDocument{%
      \let\sysu@save@leq\leq
      \let\sysu@save@geq\geq
      \let\sysu@save@Re\Re
      \let\sysu@save@Im\Im
    }%
    \DeclareRobustCommand\bm[1]{{\symbfit{##1}}}%
    \DeclareRobustCommand\boldsymbol[1]{{\symbfit{##1}}}%
    \newcommand\square{\mdlgwhtsquare}%
    \newcommand\blacksquare{\mdlgblksquare}%
    \AtBeginDocument{%
      \renewcommand\checkmark{\ensuremath{\symbol{"2713}}}%
    }%
    \renewcommand\sysu@qed{\ensuremath{\QED}}%
  }%
}
\newcommand\sysu@set@math@font@stix{%
  \sysu@set@stix@names
  \setmathfont{\sysu@font@name@stix@math}[
    Extension    = .otf,
    Scale        = MatchLowercase,
    StylisticSet = \sysu@xits@integral@stylistic@set,
  ]%
  \setmathfont{\sysu@font@name@stix@math}[
    Extension    = .otf,
    Scale        = MatchLowercase,
    StylisticSet = 1,
    range        = {scr,bfscr},
  ]%
}
\newcommand\sysu@xits@integral@stylistic@set{%
  \ifsysu@integral@upright
    8%
  \fi
}
\newcommand\sysu@set@math@font@xits{%
  \sysu@set@xits@names
  \setmathfont{\sysu@font@name@xits@math}[
    Extension    = .otf,
    StylisticSet = \sysu@xits@integral@stylistic@set,
  ]%
  \setmathfont{\sysu@font@name@xits@math}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\sysu@libertinus@integral@stylistic@set{%
  \ifsysu@integral@slanted
    8%
  \fi
}
\newcommand\sysu@set@math@font@libertinus{%
  \sysu@set@libertinus@names
  \setmathfont{\sysu@font@name@libertinus@math}[
    Extension    = .otf,
    StylisticSet = \sysu@libertinus@integral@stylistic@set,
  ]%
}
\newcommand\sysu@newcm@integral@stylistic@set{%
  \ifsysu@integral@upright
    2%
  \fi
}
\newcommand\sysu@set@math@font@newcm{%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
    StylisticSet = \sysu@newcm@integral@stylistic@set,
  ]%
  \setmathfont{NewCMMath-Book}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {scr,bfscr},
  ]%
  \setmathrm{NewCM10}[
    Extension      = .otf,
    UprightFont    = *-Book,
    BoldFont       = *-Bold,
    ItalicFont     = *-BookItalic,
    BoldItalicFont = *-BoldItalic,
  ]%
  \setmathsf{NewCMSans10}[
    Extension         = .otf,
    UprightFont       = *-Book,
    BoldFont          = *-Bold,
    ItalicFont        = *-BookOblique,
    BoldItalicFont    = *-BoldOblique,
  ]%
  \setmathtt{NewCMMono10}[
    Extension           = .otf,
    UprightFont         = *-Book,
    ItalicFont          = *-BookItalic,
    BoldFont            = *-Bold,
    BoldItalicFont      = *-BoldOblique,
  ]%
}
\newcommand\sysu@set@math@font@lm{%
  \setmathfont{latinmodern-math}[Extension=.otf]%
  \setmathrm{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmathsf{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmathtt{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\sysu@set@math@font@newtx{%
  \ifsysu@font@newtx\else
    \let\sysu@save@encodingdefault\encodingdefault
    \let\sysu@save@rmdefault\rmdefault
    \let\sysu@save@sfdefault\sfdefault
    \let\sysu@save@ttdefault\ttdefault
    \RequirePackage[T1]{fontenc}%
    \renewcommand{\rmdefault}{ntxtlf}%
    \renewcommand{\sfdefault}{qhv}%
    \renewcommand{\ttdefault}{ntxtt}%
  \fi
  \ifsysu@uppercase@greek@italic
    \PassOptionsToPackage{slantedGreek}{newtxmath}%
  \fi
  \ifsysu@integral@upright
    \PassOptionsToPackage{upint}{newtxmath}%
  \fi
  \RequirePackage{newtxmath}
  \let\sysu@save@leq\leq
  \let\sysu@save@geq\geq
  \ifsysu@leq@slanted
    \let\le\leqslant
    \let\ge\geqslant
    \let\leq\leqslant
    \let\geq\geqslant
  \fi
  \ifsysu@integral@limits@true
    \let\ilimits@\displaylimits
  \fi
  \let\sysu@save@partial\partial
  \ifsysu@partial@upright
    \let\partial\uppartial
  \fi
  \ifsysu@math@ellipsis@centered
    \DeclareRobustCommand\mathellipsis{\mathinner{\cdotp\cdotp\cdotp}}%
  \else
    \DeclareRobustCommand\mathellipsis{\mathinner{\ldotp\ldotp\ldotp}}%
  \fi
  \let\sysu@save@Re\Re
  \let\sysu@save@Im\Im
  \ifsysu@real@part@roman
    \def\Re{\operatorname{Re}}%
    \def\Im{\operatorname{Im}}%
  \fi
  \RequirePackage{bm}%
  \ifsysu@font@newtx\else
    \let\encodingdefault\sysu@save@encodingdefault
    \let\rmdefault\sysu@save@rmdefault
    \let\sfdefault\sysu@save@sfdefault
    \let\ttdefault\sysu@save@ttdefault
  \fi
  \DeclareRobustCommand\symup[1]{{\mathrm{##1}}}%
  \DeclareRobustCommand\symbf[1]{{\bm{##1}}}%
  \DeclareRobustCommand\symbfsf[1]{{\bm{\mathsf{##1}}}}%
  \let\increment\upDelta%
  \renewcommand\sysu@qed{\openbox}%
}
\newcommand\sysu@set@math@font{%
  \ifsysu@math@font@none\else
    \ifsysu@math@font@newtx
      \sysu@set@math@font@newtx
    \else
      \sysu@load@unimath
      \sysu@set@unimath@style
      \@nameuse{sysu@set@math@font@\sysu@math@font}%
    \fi
  \fi
}
\sysu@option@hook{math-font}{\g@addto@macro\sysu@setup@hook{\sysu@set@math@font}}
\newcommand\sysu@set@math@font@auto{%
  \ifsysu@math@font@auto
    \sysusetup{math-font=xits}%
  \fi
}
\AtBeginOfPackageFile*{siunitx}{\sysu@set@math@font@auto}
\AtEndPreamble{\sysu@set@math@font@auto}
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifsysu@output@print
      \ifodd\c@page
      \else
        \thispagestyle{empty}%
        \hbox{}%
        \newpage
        \if@twocolumn
          \hbox{}\newpage
        \fi
      \fi
    \fi
  \fi
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}%
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}%
}
\newif\ifsysu@backmatter
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \sysu@backmattertrue
  \sysusetup{toc-depth = 0}%
}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand\footrulewidth{0pt}%
  \ifsysu@degree@bachelor
    \renewcommand\headrulewidth{0pt}%
    \fancyfoot[C]{
      \ifsysu@main@language@chinese
        \xiaowu
      \else
        \normalsize
      \fi
      \thepage
    }%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
  \else
    \renewcommand\headrulewidth{0.75bp}%
    \fancyhead[C]{%
      \wuhao
      \ifsysu@main@language@chinese
        \leftmark
      \else
        \MakeUppercase{\leftmark}%
      \fi
      }%
    \fancyfoot[C]{\wuhao\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth{%
        \CTEXifname{%
          \CTEXthechapter
          \ifsysu@main@language@chinese
            \quad
          \else
            \space
          \fi
        }{}##1%
      }{}%
    }%
  \fi
  \let\sectionmark\@gobble
}
\pagestyle{plain}
\def\ps@chapter{}
\ctexset{chapter/pagestyle = chapter}
\ctexset{%
  punct=quanjiao,
}
\newcommand\sysu@set@indent{%
  \ifsysu@main@language@chinese
    \ctexset{autoindent=2}%
  \else
    \ifsysu@degree@bachelor
      \ctexset{autoindent=0.8cm}%
    \else
      \ctexset{autoindent=0.74cm}%
    \fi
  \fi
}
\sysu@set@indent
\sysu@option@hook{degree}{\sysu@set@indent}
\sysu@option@hook{main-language}{\sysu@set@indent}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\partopsep=\z@skip
\def\@listi{\leftmargin\leftmargini
            \parsep \z@skip
            \topsep \z@skip
            \itemsep\z@skip}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \itemsep   \z@skip}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \partopsep \z@skip
              \itemsep   \z@skip}
\setlist{nosep}
\interfootnotelinepenalty=10000
\newcommand\sysu@circled[1]{%
  \ifnum#1 >10\relax
    \sysu@warning{%
      Too many footnotes in this page.
      Keep footnote less than 10%
    }%
  \fi
  {\symbol{\the\numexpr#1+"245F\relax}}%
}
\renewcommand{\thefootnote}{\sysu@circled{\c@footnote}}
\renewcommand{\thempfootnote}{\sysu@circled{\c@mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\footnotemargin=13.5bp
\long\def\@makefntext#1{%
  \begingroup
    % 序号取消上标
    \def\@makefnmark{\hbox{\normalfont\@thefnmark}}%
    \xiaowu
    \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
        \ifdim\footnotemargin>\z@
          \hb@xt@\footnotemargin{\@makefnmark\hss}%
        \else
          \@makefnmark
        \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      % \footnotesize
      \xiaowu
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
    \else
      \parindent1em%
      \noindent
      \ifdim\footnotemargin>\z@
        \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
        \ifdim\footnotemargin=\z@
          \llap{\@makefnmark}%
        \else
          \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
        \fi
      \fi
    \fi
    \footnotelayout#1%
    \ifFN@hangfoot
      \par\egroup
    \fi
  \endgroup
}
\allowdisplaybreaks[4]
\newcommand\sysu@put@parentheses[1]{%
  \ifsysu@language@chinese
    \unskip
    （#1）%
  \else
    (#1)%
  \fi
}
\def\tagform@#1{\maketag@@@{\sysu@put@parentheses{\ignorespaces#1\unskip\@@italiccorr}}}
\renewcommand{\eqref}[1]{%
  \textup{%
    \normalfont\sysu@put@parentheses{%
      \ignorespaces\ref{#1}\unskip\@@italiccorr
    }%
  }%
}
\def\fps@figure{htbp}
\def\fps@table{htbp}
\setlength{\floatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\textfloatsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\intextsep}{12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\patchcmd{\@addtocurcol}%
  {\vskip \intextsep}%
  {\edef\save@first@penalty{\the\lastpenalty}\unpenalty
   \ifnum \lastpenalty = \@M  % hopefully the OR penalty
     \unpenalty
   \else
     \penalty \save@first@penalty \relax % put it back
   \fi
   \ifnum\outputpenalty <-\@Mii
     \addvspace\intextsep
     \vskip\parskip
   \else
     \addvspace\intextsep
   \fi}%
  {}{\sysu@patch@error{\@addtocurcol}}
\patchcmd{\@addtocurcol}%
  {\vskip\intextsep \ifnum\outputpenalty <-\@Mii \vskip -\parskip\fi}%
  {\ifnum\outputpenalty <-\@Mii
     \aftergroup\vskip\aftergroup\intextsep
     \aftergroup\nointerlineskip
   \else
     \vskip\intextsep
   \fi}%
  {}{\sysu@patch@error{\@addtocurcol}}
\patchcmd{\@getpen}{\@M}{\@Mi}
  {}{\sysu@patch@error{\@getpen}}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\sysu@define@key{
  figure-number-separator = {
    name    = figure@number@separator,
    default = {.},
  },
  table-number-separator = {
    name    = table@number@separator,
    default = {.},
  },
  equation-number-separator = {
    name    = equation@number@separator,
    default = {.},
  },
  number-separator = {
    name    = number@separator,
    default = {.},
  },
}
\renewcommand\thefigure{%
  \ifnum\c@chapter>\z@
    \thechapter
    \sysu@figure@number@separator
  \fi
  \@arabic\c@figure
}
\renewcommand\thetable{%
  \ifnum\c@chapter>\z@
    \thechapter
    \sysu@table@number@separator
  \fi
  \@arabic\c@table
}
\renewcommand\theequation{%
  \ifnum\c@chapter>\z@
    \thechapter
    \sysu@equation@number@separator
  \fi
  \@arabic\c@equation
}
\newcommand\sysu@set@number@separator{%
  \let\sysu@figure@number@separator\sysu@number@separator
  \let\sysu@table@number@separator\sysu@number@separator
  \let\sysu@equation@number@separator\sysu@number@separator
}
\sysu@option@hook{number-separator}{\sysu@set@number@separator}
\DeclareCaptionFont{sysu}{%
  \ifsysu@degree@bachelor
    \fontsize{11bp}{15bp}\selectfont
  \else
    \ifsysu@language@chinese
      \fontsize{11bp}{14.3bp}\selectfont
    \else
      \fontsize{11bp}{12.65bp}\selectfont
    \fi
  \fi
}
\captionsetup{
  font           = sysu,
  labelsep       = quad,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=sysu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\newcommand\sysu@set@table@font{
  \ifsysu@language@chinese
    \def\sysu@table@font{%
      \fontsize{11bp}{14.3bp}\selectfont
      \renewcommand\arraystretch{1.42}%
    }%
  \else
    \def\sysu@table@font{%
      \fontsize{11bp}{12.65bp}\selectfont
      \renewcommand\arraystretch{1.47}%
    }%
  \fi
}
\sysu@set@table@font
\sysu@option@hook{language}{\sysu@set@table@font}
\patchcmd\@floatboxreset{%
  \normalsize
}{%
  \sysu@table@font
}{}{\sysu@patch@error{\@floatboxreset}}
\AtEndOfPackageFile*{longtable}{
  \AtBeginEnvironment{longtable}{%
    \sysu@table@font
  }
}
\heavyrulewidth=1.5bp
\lightrulewidth=1bp
\AtEndOfPackageFile*{threeparttable}{
  \g@addto@macro\TPT@defaults{\wuhao}
}
\ifsysu@degree@bachelor
  \newcommand{\sysu@abstract@name}{中文摘要}
  \newcommand{\sysu@abstract@name@en}{ABSTRACT}
\else
  \newcommand{\sysu@abstract@name}{摘\quad 要}
  \newcommand{\sysu@abstract@name@en}{Abstract}
\fi
\ctexset{%
  chapter = {
    nameformat   = {},
    numberformat = {},
    titleformat  = {},
    fixskip      = true,
    afterindent  = true,
    lofskip      = 0pt,
    lotskip      = 0pt,
  },
  section = {
    afterindent  = true,
  },
  subsection = {
    afterindent  = true,
  },
  subsubsection = {
    afterindent  = true,
  },
  paragraph/afterindent = true,
  subparagraph/afterindent = true,
}
\newcommand\sysu@set@section@format{%
  \ifsysu@degree@bachelor
    \ctexset{%
      chapter = {
        format     = \centering\sffamily\fontsize{15bp}{20bp}\selectfont,
        aftername  = \quad,
        beforeskip = 30bp,
        afterskip  = 20bp,
      },
      section = {
        format     = \sffamily\fontsize{14bp}{18bp}\selectfont,
        aftername  = \quad,
        beforeskip = 25bp,
        afterskip  = 12bp,
      },
      subsection = {
        format     = \sffamily\fontsize{13bp}{15bp}\selectfont,
        aftername  = \quad,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        format     = \sffamily\fontsize{12bp}{14bp}\selectfont,
        aftername  = \quad,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifsysu@main@language@chinese
      \ctexset{
        chapter = {
          name   = {第,章},
          number = \thechapter,
        },
      }%
    \else
      \ctexset{
        chapter = {
          name   = \chaptername\space,
          number = \sysu@english@number{chapter},
        },
      }%
    \fi
  \else
    \ctexset{%
      chapter = {
        beforeskip = 27bp,
        afterskip  = 27bp,
        number     = \thechapter,
      },
      section = {
        beforeskip = 24bp,
        afterskip  = 6bp,
      },
      subsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifsysu@main@language@chinese
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\sanhao,
          nameformat  = {},
          titleformat = {},
          name        = {第,章},
          aftername   = \quad,
        },
        section = {
          format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
          aftername  = \quad,
        },
        subsection = {
          format     = \sffamily\fontsize{13bp}{20bp}\selectfont,
          aftername  = \quad,
        },
        subsubsection = {
          format     = \sffamily\fontsize{12bp}{20bp}\selectfont,
          aftername  = \quad,
        },
      }%
    \else
      \ctexset{%
        chapter = {
          format      = \centering\sffamily\bfseries\fontsize{16bp}{20bp}\selectfont,
          nameformat  = \MakeUppercase,
          titleformat = \MakeUppercase,
          name        = \chaptername\space,
          aftername   = \space,
        },
        section = {
          format     = \sffamily\bfseries\fontsize{14bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsection = {
          format     = \sffamily\bfseries\fontsize{13bp}{20bp}\selectfont,
          aftername  = \space,
        },
        subsubsection = {
          format     = \sffamily\bfseries\fontsize{12bp}{20bp}\selectfont,
          aftername  = \space,
        },
      }%
    \fi
  \fi
}
\sysu@set@section@format
\sysu@option@hook{degree}{\sysu@set@section@format}
\sysu@option@hook{main-language}{\sysu@set@section@format}
\newcommand\sysu@english@number[1]{%
  \expandafter\ifcase\csname c@#1\endcsname
    Zero\or
    One\or
    Two\or
    Three\or
    Four\or
    Five\or
    Six\or
    Seven\or
    Eight\or
    Nine\or
    Ten\or
    Eleven\or
    Twelve\or
    Thirteen\or
    Fourteen\or
    Fifteen\or
    Sixteen\or
    Seventeen\or
    Eighteen\or
    Nineteen\or
    Twenty\or
    \sysu@error{You are genius}%
  \fi
}
\newcommand\sysu@pdfbookmark[2]{}
\newcommand\sysu@phantomsection{}
\NewDocumentCommand\sysu@chapter{s o m o}{%
  \IfBooleanF{#1}{%
    \sysu@error{You have to use the star form: \string\sysu@chapter*}%
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \sysu@pdfbookmark{0}{#3}%
    }{%
      \sysu@phantomsection
      \addcontentsline{toc}{chapter}{#2}%
    }%
  }{%
    \sysu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifsysu@degree@bachelor\ctexset{chapter/beforeskip=40bp}\fi
  \chapter*{#3}%
  \ifsysu@degree@bachelor\ctexset{chapter/beforeskip=30bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \ifsysu@degree@graduate
    \sysu@chapter*{\contentsname}%
  \else
    \sysu@chapter*[]{\contentsname}%
  \fi
  \@starttoc{toc}%
}
\sysu@define@key{
  toc-chapter-style = {
    name = toc@chapter@style,
    choices = {
      arial,
      times,
    },
    default = arial,
  },
}
\newcommand\sysu@leaders{\titlerule*[4bp]{.}}
\newcommand\sysu@set@toc@format{%
  \contentsmargin{\z@}%
  \ifsysu@degree@bachelor
    \ifsysu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}
          \ifsysu@toc@chapter@style@arial
            \sffamily
          \else
            \heiti
          \fi
        }
        {\contentspush{\thecontentslabel\quad}}{}
        {\rmfamily\sysu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [1.5em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
    \else
      \ifsysu@main@language@english
        \titlecontents{chapter}
          [\z@]{\addvspace{6bp}\sffamily}
          {\contentspush{\thecontentslabel\quad}}{}
          {\rmfamily\sysu@leaders\thecontentspage}%
        \titlecontents{section}
          [0.5cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\sysu@leaders\thecontentspage}%
        \titlecontents{subsection}
          [1cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\sysu@leaders\thecontentspage}%
      \fi
    \fi
  \else
    \ifsysu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\sffamily}
        {\contentspush{\thecontentslabel\quad}}{}
        {\rmfamily\sysu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
    \else
      \titlecontents{chapter}
        [\z@]{\heiti}
        {\contentspush{\MakeUppercase{\thecontentslabel}\space}\MakeUppercase}{\MakeUppercase}
        {\rmfamily\sysu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\sysu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [2em]{}
        {\contentspush{\thecontentslabel\space}}{}
        {\sysu@leaders\thecontentspage}%
    \fi
  \fi
}
\sysu@set@toc@format
\sysu@option@hook{degree}{\sysu@set@toc@format}
\sysu@option@hook{main-language}{\sysu@set@toc@format}
\sysu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  student-id = {
    name = student@id,
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  co-supervisor = {
    name = co@supervisor,
  },
  co-supervisor* = {
    name = co@supervisor@en,
  },
  % Reserved for compatibility
  joint-supervisor = {
    name = co@supervisor,
  },
  joint-supervisor* = {
    name = co@supervisor@en,
  },
  committee = {
    name = committee,
  },
  committee* = {
    name = committee@en,
  },
  degree-category = {
    default = {工学博士},
    name    = degree@category,
  },
  degree-category* = {
    default = {Doctor of Philosophy},
    name    = degree@category@en,
  },
  % 为了向后兼容
  degree-name = {
    name    = degree@category,
  },
  degree-name* = {
    name    = degree@category@en,
  },
}
\sysu@option@hook{degree-name}{%
  \sysu@warning{`degree-name' is deprecated. Use `degree-category' instead.}
}
\sysu@option@hook{degree-name*}{%
  \sysu@warning{`degree-name*' is deprecated. Use `degree-category*' instead.}
}
\sysu@define@key{
  department = {
    default = {计算机科学与技术系},
  },
  discipline = {
    % default = {计算机科学与技术},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name    = discipline@en,
  },
}
\sysu@option@hook{discipline}{%
  \ifsysu@degree@type@professional
    \sysu@warning{`discipline' for professional degree is deprecated. Use `professional-field' instead.}
    \let\sysu@professional@field\sysu@discipline
    \let\sysu@discipline\@empty
  \fi
}
\sysu@option@hook{discipline*}{%
  \ifsysu@degree@type@professional
    \sysu@warning{`discipline*' for professional degree is deprecated. Use `professional-field*' instead.}
    \let\sysu@professional@field@en\sysu@discipline@en
    \let\sysu@discipline@en\@empty
  \fi
}
\sysu@define@key{
  professional-field = {
    name    = professional@field,
  },
  professional-field* = {
    name    = professional@field@en,
  },
  engineering-field = {
    name    = engineering@field,
  },
  engineering-field* = {
    name    = engineering@field@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  clc,
  udc,
  id,
  discipline-level-1 = {
    default = {一级学科名称},
    name    = discipline@level@i,
  },
  discipline-level-2 = {
    default = {二级学科名称},
    name    = discipline@level@ii,
  },
  start-date = {
    name    = start@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  end-date = {
    name    = end@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  include-spine = {
    name = include@spine,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\newcommand\sysu@format@date[2]{%
  \edef\sysu@@date{#2}%
  \def\sysu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\sysu@@process@date\sysu@@date\@nil
}
\newcommand\sysu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\sysu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\sysu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\sysu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\sysu@date@en@short[3]{\sysu@date@month{#2}, #1}
\newcommand\sysu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\sysu@uline[2][6em]{\uline{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\sysu@fixed@box[2]{%
  \begingroup
    \ifLuaTeX
      \ltjsetparameter{kanjiskip = {0pt plus 2filll minus 1filll}}%
    \else
      \renewcommand\CJKglue{\hspace{0pt plus 2filll minus 1filll}}%
    \fi
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\sysu@stretch@box
\newcommand\sysu@stretch[2]{%
  \sbox\sysu@stretch@box{#2}%
  \ifdim \wd\sysu@stretch@box < #1\relax
    \begingroup
      \ifLuaTeX
        \ltjsetparameter{kanjiskip = {0pt plus 2filll}}%
      \else
        \renewcommand\CJKglue{\hspace{0pt plus 2filll}}%
      \fi
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\sysu@stretch@box
  \fi
}
\newbox\sysu@pad@box
\newcommand\sysu@pad[2]{%
  \sbox\sysu@pad@box{#2}%
  \ifdim \wd\sysu@pad@box < #1\relax
    \makebox[#1][l]{\box\sysu@pad@box}%
  \else
    \box\sysu@pad@box
  \fi
}
\newcounter{sysu@csl@count}
\newcommand\sysu@name@title@process[1]{%
  \ifcase\c@sysu@csl@count  % == 0
    \gdef\sysu@@name{#1}%
  \or  % == 1
    \gdef\sysu@@title{#1}%
  \fi
  \stepcounter{sysu@csl@count}%
}
\newcommand\sysu@name@title@format[2]{%
  \sysu@pad{3cm}{\sysu@stretch{4em}{#1}}%
  \sysu@stretch{3em}{#2}%
}
\newcommand\sysu@name@title[1]{%
  \setcounter{sysu@csl@count}{0}%
  \gdef\sysu@@name{}%
  \gdef\sysu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\sysu@name@title@process}%
  \sysu@name@title@format{\sysu@@name}{\sysu@@title}%
}
\newif\ifsysufrontcoverpage\sysufrontcoverpagefalse
\newcommand\frontcoverpage[1][]{%
  \thispagestyle{empty}%
  \sysu@phantomsection
  \sysu@pdfbookmark{-1}{\sysu@title}%
  \kv@define@key{sysu@frontcoverpage}{file}{\includepdf{\kv@value}}%
  \kv@set@family@handler{sysu@frontcoverpage}{%
    \ifx\kv@value\relax
      \includepdf{\kv@key}%
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{sysu@frontcoverpage}{#1}%
  \sysufrontcoverpagetrue
}
\newcommand\backcoverpage[1][]{%
  \thispagestyle{empty}%
  \sysu@phantomsection
  \sysu@pdfbookmark{-1}{封底}%
  \kv@define@key{sysu@backcoverpage}{file}{\includepdf{\kv@value}}%
  \kv@set@family@handler{sysu@backcoverpage}{%
    \ifx\kv@value\relax
      \includepdf{\kv@key}%
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{sysu@backcoverpage}{#1}%
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagenumbering{Alph}%
  \ifsysufrontcoverpage
    \sysu@pdfbookmark{0}{扉页}%
  \else
    \sysu@pdfbookmark{-1}{\sysu@title}%
  \fi
  \sysu@titlepage
  \ifsysu@include@spine@true
    \spine
  \fi
  \ifsysu@degree@graduate
    \ifsysu@thesis@type@thesis
      \cleardoublepage
      \sysu@titlepage@en
    \fi
  \fi
  \clearpage
}
\newcommand\sysu@titlepage{%
  \sysusetup{language = chinese}%
  \ifsysu@degree@graduate
    % 研究生
    \ifsysu@thesis@type@thesis
      % 学位论文
      \sysu@titlepage@thesis
    \else
      \ifsysu@thesis@type@proposal
        % 选题报告
        \sysu@titlepage@proposal
      \else
        \ifsysu@thesis@type@report
          \sysu@titlepage@proposal
        \fi
      \fi
    \fi
  \else
    \ifsysu@degree@bachelor
      % 本科生
      \sysu@titlepage@bachelor
    \else
      \ifsysu@degree@postdoc
        % 博后
        \sysu@cover@postdoc
        \cleardoublepage
        \sysu@titlepage@postdoc
      \fi
    \fi
  \fi
  \sysu@reset@main@language
}
\newcommand\sysu@titlepage@thesis{%
  \newgeometry{
    top     = 2cm,
    bottom  = 6cm,
    hmargin = 3.5cm,
  }%
  \thispagestyle{empty}%
  \null\vskip 8.1pt%
  \begingroup
    \centering
    \parbox[t][2cm][t]{\textwidth}{%
      \hskip -21.5pt%
      \sysu@titlepage@secret
    }\par
    \vskip 40.5pt%
    \begingroup
      \sffamily\fontsize{26bp}{46.8bp}\selectfont
      \sysu@title\par
    \endgroup
    \ifsysu@main@language@english
      \vskip 5.4pt%
      \begingroup
        \sffamily\bfseries\fontsize{20bp}{31.2bp}\selectfont
        \sysu@title@en\par
      \endgroup
      \vskip -9.2pt%
    \fi
    \vskip 24.1pt%
    \sysu@title@page@degree@category\par
    \vfill
    \ifsysu@degree@type@academic
      \parbox[t][7.25cm][t]{\textwidth}{%
        \fangsong\fontsize{16bp}{31.2bp}\selectfont
        \sysu@titlepage@info
      }\par
    \else
      \parbox[t][5.25cm][b]{\textwidth}{%
        \fangsong\fontsize{16bp}{31.2bp}\selectfont
        \sysu@titlepage@info
      }\par
      \vskip 62pt%
    \fi
    \parbox[t][1.03cm][t]{\textwidth}{\centering\sysu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\sysu@titlepage@proposal{%
  \newgeometry{
    top     = 5cm,
    bottom  = 3.25cm,
    hmargin = 3.17cm,
  }%
  \thispagestyle{empty}%
  \begingroup
    % \vspace*{0.1cm}%
    \centering
    % {\sysu@titlepage@title}%
    \parbox[t][3cm]{\textwidth}{%
      \vskip 0.1cm%
      \centering
      \sffamily\fontsize{26bp}{46.8bp}\selectfont
      \sysu@title\par
    }%
    \vskip 0.85cm%
    \sysu@title@page@degree@category
    \vfill
    \parbox[t][8.5cm][t]{\textwidth}{%
      \centering
      \fangsong
      \ifLuaTeX
        \fontspec{\CJK@family}%
      \else
        \CJKfamily+{}%
      \fi
      \sanhao[1.95]%
      \sysu@titlepage@info
    }\par
    \parbox[t][2.5cm][t]{\textwidth}{\centering\sysu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\sysu@set@student@id{%
    \ifsysu@thesis@type@proposal\else
    \ifx\sysu@student@id\@empty\else
      \sysu@warning{`student-id' in "\protect\sysusetup" would be ignored when `thesis-type' is not proposal.}%
    \fi
  \fi
}
\sysu@set@student@id
\sysu@option@hook{thesis-type}{\sysu@set@student@id}
\sysu@option@hook{student-id}{\sysu@set@student@id}
\newcommand\sysu@titlepage@secret{%
  \sffamily\sanhao
  \ifx\sysu@secret@level\@empty
    \phantom{秘密}%
  \else
    \sysu@secret@level\symbol{"2605}\makebox[3em][c]{\sysu@secret@year}年%
  \fi\par
}
\newcommand\sysu@title@page@degree@category{%
  \begingroup
    \fontsize{16bp}{22bp}\selectfont
    \ifLuaTeX
      \fontspec{\CJK@family}%
      \ltjsetparameter{kanjiskip = {1bp}}%
    \else
      \CJKfamily+{}%
      \renewcommand\CJKglue{\hspace{1bp}}%
    \fi
    \ifsysu@thesis@type@thesis
      (申请中山大学\sysu@degree@category
      \ifsysu@degree@type@professional
        专业%
      \fi
      学位论文)%
    \else
      \ifsysu@thesis@type@proposal
        (中山大学%
        \ifsysu@degree@doctor
          博士%
        \else
          \ifsysu@degree@master
            硕士%
          \fi
        \fi
        \ifsysu@thesis@type@report
          课程报告
        \else
          学位论文选题报告)%
        \fi
      \fi
    \fi
    \par
  \endgroup
}
\newcommand\sysu@titlepage@info{%
  \ifsysu@degree@doctor
    \sysu@titlepage@info@tabular{2.3cm}{2.85cm}{2.75cm}{0.77cm}{%
    \sysu@info@item{培养单位}{}{\sysu@department}%
    \ifsysu@degree@type@academic
      \sysu@info@item{学科}{}{\sysu@discipline}%
      \sysu@info@item{研究生}{\sysu@name@title}{\sysu@author}%
    \else
      \sysu@info@item{专业领域}{}{\sysu@professional@field}%
      \sysu@info@item{工程领域}{}{\sysu@engineering@field}%
      \sysu@info@item{申请人}{\sysu@name@title}{\sysu@author}%
    \fi
    \ifsysu@thesis@type@proposal
      \ifx\sysu@student@id\@empty
        \sysu@warning{Missing option `student-id' in "\protect\sysusetup", ID will not appear on cover.}
      \else
        \sysu@info@item{学号}{}{\sysu@student@id}%
      \fi
    \fi
      \sysu@info@item{指导教师}{\sysu@name@title}{\sysu@supervisor}%
      \sysu@info@item{副指导教师}{\sysu@name@title}{\sysu@associate@supervisor}%
      \sysu@info@item{联合指导教师}{\sysu@name@title}{\sysu@co@supervisor}%
  }\par
}
\newcommand\sysu@titlepage@info@tabular[5]{%
  \def\sysu@info@item##1##2##3{%
    \ifx##3\@empty\else
      \sysu@pad{#2}{\sysu@fixed@box{#3}{##1}}%
      \sysu@pad{#4}{：}%
      ##2{##3}\\
    \fi
  }%
  \hspace{#1}%
  \begin{tabular}{l}%
    \renewcommand\arraystretch{1}%
    #5%
  \end{tabular}%
}
\newcommand\sysu@titlepage@date{%
  \begingroup
    \sanhao
    \ifLuaTeX
      \ltjsetparameter{kanjiskip = {1bp}}%
    \else
      \renewcommand\CJKglue{\hspace{1bp}}%
    \fi
    \sysu@format@date{\sysu@date@zh@short}{\sysu@date}\par
  \endgroup
}
\newcommand{\sysu@titlepage@en}{%
  \newgeometry{
    top     = 5.5cm,
    bottom  = 5cm,
    hmargin = 3.4cm,
  }%
  \thispagestyle{empty}%
  \sysusetup{language = english}%
  \ifsysu@degree@type@academic
    \sysu@titlepage@en@graduate@academic
  \else
    \sysu@titlepage@en@graduate@professional
  \fi
  \sysu@reset@main@language
  \clearpage
  \restoregeometry
}
\newcommand\sysu@titlepage@en@graduate@academic{%
  \begingroup
    \centering
    \null\vskip -0.31cm%
    \parbox[t][143bp][t]{\textwidth}{%
      \centering\sysu@titlepage@en@title
    }\par
    \sanhao[1.725]%
    \sysu@titlepage@en@degree
    \vskip 3bp%
    in\par
    \vskip 3.5bp%
    {\bfseries\sffamily\sysu@discipline@en\par}
    \vfill
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\sysu@author@en\par}%
    \vskip 0.18cm%
    \parbox[t][3.0cm][t]{\textwidth}{%
      \centering
      \xiaosan[2.1]%
      \sysu@titlepage@en@supervisor
    }\par
    \sysu@titlepage@en@date
    \vskip 0.7cm%
  \endgroup
}
\newcommand\sysu@titlepage@en@graduate@professional{%
  \begingroup
    \centering
    \null\vskip -0.31cm%
    \parbox[t][143bp][t]{\textwidth}{%
      \centering\sysu@titlepage@en@title
    }\par
    \sanhao[1.725]%
    \sysu@titlepage@en@degree
    \vfill
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\sysu@author@en\par}%
    \ifx\sysu@professional@field@en\empty
      \vskip 1.95cm%
    \else
      \vskip -0.1cm%
     {\sffamily\bfseries(\sysu@professional@field@en)\par}%
      \vskip 1.1cm%
    \fi
    \parbox[t][3.37cm][t]{\textwidth}{%
      \centering
      \xiaosan[1.82]%
      \sysu@titlepage@en@supervisor
    }\par
    \sysu@titlepage@en@date
    \vskip 0.3cm%
  \endgroup
}
\newcommand\sysu@titlepage@en@title{%
  \begingroup
    % 对齐到网格，每行 15.6bp
    \sffamily\bfseries\fontsize{20bp}{31.2bp}\selectfont
    \sysu@title@en\par
  \endgroup
}
\newcommand\sysu@thesis@name@en{%
  \ifsysu@degree@master
    Thesis%
  \else
    Dissertation%
  \fi
}
\newcommand\sysu@titlepage@en@degree{%
  \sysu@thesis@name@en{} submitted to\par
  {\bfseries Sun Yat-sen University\par}%
  in partial fulfillment of the requirement\par
  for the
  \ifsysu@degree@type@professional
    professional
  \fi
  degree of\par
  {\sffamily\bfseries\sysu@degree@category@en\par}%
}
\newcommand\sysu@titlepage@en@supervisor{%
  \begin{tabular}{r@{\makebox[20.5bp][l]{\hspace{2bp}:}}l}%
    \renewcommand\arraystretch{1}%
    \sysu@thesis@name@en{} Supervisor & \sysu@supervisor@en \\
    \ifx\sysu@associate@supervisor@en\@empty\else
      Associate Supervisor           & \sysu@associate@supervisor@en \\
    \fi
    \ifx\sysu@co@supervisor@en\@empty\else
      Co-supervisor                  & \sysu@co@supervisor@en \\
    \fi
  \end{tabular}%
}
\newcommand\sysu@titlepage@en@date{%
  \begingroup
    \sffamily\bfseries\sanhao
    \sysu@format@date{\sysu@date@en@short}{\sysu@date}\par
  \endgroup
}
\newcommand\sysu@titlepage@bachelor{%
  \newgeometry{
    vmargin = 2.54cm,
    hmargin = 3.17cm,
  }%
  \thispagestyle{empty}%
  \begingroup
    \centering
    \parbox[t][0cm][t]{\textwidth}{%
      \hfill
      \xiaosi
      \ifx\sysu@secret@level\@empty\else
        \sysu@secret@level\space\sysu@secret@year 年\par
      \fi
    }%
  \endgroup
  \vfill
  \begingroup
    \centering
    \includegraphics{logo/校徽和中英文校名标准全称的上下组合.pdf}%
    \vskip 0.94cm%
    \ifsysu@thesis@type@proposal
      {\sffamily\bfseries\xiaochu\ziju{0.5}综合论文训练\\开题报告\par}%
    \else
      {\sffamily\bfseries\xiaochu\ziju{0.5}综合论文训练\par}%
    \fi
  \endgroup
  \vskip 1.8cm%
  \begingroup
    \heiti
    % 21.0cm - 0.2cm - 3cm * 2 - 18bp * 4 = 347bp
    \noindent\hspace{1em}\makebox[54bp]{\xiaoer[1.2]题目：}%
    \parbox[t]{347bp}{%
      \ifsysu@main@language@chinese
        \yihao[1.56]%
      \else
        \fontsize{26bp}{32bp}\selectfont
      \fi
      \renewcommand\ULthickness{0.05em}%
      \renewcommand\ULdepth{0.17em}%
      \expandafter\uline\expandafter{\sysu@title}\par
      \ifsysu@main@language@english
        \sysusetup{language=english}%
        \expandafter\uline\expandafter{\sysu@title@en}\par
        \sysusetup{language=chinese}%
      \fi
    }\par
  \endgroup
  \vskip 1.9cm%
  \begingroup
    \fangsong\sanhao[2.32]%
    \leftskip=2.5cm%
    \parindent=\z@
    \def\sysu@info@item##1##2##3{%
      \ifx##3\@empty\else
        \sysu@fixed@box{%
          \ifx\sysu@co@supervisor\@empty
            4em%
          \else
            5.5em%
          \fi
        }{##1}：##2{##3}\par
      \fi
    }%
    \def\sysu@name@title@format##1##2{%
      \sysu@stretch{3em}{##1}\quad ##2%
    }%
    \sysu@info@item{系别}{}{\sysu@department}%
    \sysu@info@item{专业}{}{\sysu@discipline}%
    \sysu@info@item{姓名}{\sysu@name@title}{\sysu@author}%
    \sysu@info@item{指导教师}{\sysu@name@title}{\sysu@supervisor}%
    \sysu@info@item{辅导教师}{\sysu@name@title}{\sysu@associate@supervisor}%
    \sysu@info@item{联合指导教师}{\sysu@name@title}{\sysu@co@supervisor}%
    \sysu@info@item{答辩委员会}{\sysu@name@title}{\sysu@committee}%
  \endgroup
  \vskip 1.4cm%
  \begingroup
    \centering
    \ifLuaTeX
      \fontspec{\CJK@family}%
    \else
      \CJKfamily+{}%
    \fi
    \xiaosi\sysu@format@date{\sysu@date@zh@digit}{\sysu@date}\par
  \endgroup
  \vfill
  \clearpage
  \restoregeometry
}
\newcommand\sysu@cover@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \renewcommand\ULthickness{0.7pt}%
    \vspace*{0.35cm}%
    {\sihao[2.6]%
      \sysu@stretch{3.1em}{分类号}\sysu@underline[3.7cm]{\sysu@clc}\hfill
      密级\sysu@underline[3.7cm]{\sysu@secret@level}\par
      \sysu@stretch{3.1em}{U D C}\sysu@underline[3.7cm]{\sysu@udc}\hfill
      编号\sysu@underline[3.7cm]{\sysu@id}\par
    }%
    \vskip 3.15cm%
    {\sffamily\bfseries\xiaoer[2.6]%
      {\ziju{1.5}中山大学\par}%
      {\ziju{0.5}博士后研究工作报告\par}%
    }%
    \vskip 0.2cm%
    \parbox[t][4.0cm][c]{\textwidth}{%
      \centering\sihao[3.46]%
      \renewcommand\ULdepth{1em}%
      \expandafter\uline\expandafter{\sysu@title}\par
    }\par
    \vskip 0.4cm%
    {\xiaosi\sysu@author\par}%
    \vskip 1.4cm%
    {\xiaosi[1.58]%
      \renewcommand\ULdepth{0.9em}%
      工作完成日期\quad
      \sysu@uline[5.9cm]{%
        \sysu@format@date{\sysu@date@zh@digit@short}{\sysu@start@date}—%
        \sysu@format@date{\sysu@date@zh@digit@short}{\sysu@end@date}
      }\par
      \vskip 0.55cm%
      报告提交日期\quad
      \sysu@uline[5.9cm]{\sysu@format@date{\sysu@date@zh@digit@short}{\sysu@date}}\par
    }%
    \vskip 0.45cm%
    {\xiaosi[2]{\ziju{1}中山大学}\quad （广州）\par}%
    \vskip 0.25cm%
    {\xiaosi[2]\sysu@format@date{\sysu@date@zh@digit@short}{\sysu@date}\par}%
  \end{center}%
}
\newcommand\sysu@titlepage@postdoc{%
  \thispagestyle{empty}%
  \begin{center}%
    \vspace*{1.5cm}%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sanhao[1.95]\sysu@title\par
    }\par
    \vskip 0.15cm%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sihao[1.36]\sysu@title@en\par
    }\par
    \vskip 0.4cm%
    {\xiaosi[2.6]%
      \begin{tabular}{l@{\quad}l}%
        \renewcommand\arraystretch{1}%
        \sysu@stretch{11em}{博士后姓名}                  & \sysu@author           \\
        \sysu@stretch{11em}{流动站（一级学科）名称}      & \sysu@discipline@level@i  \\
        \sysu@stretch{11em}{专\quad{}业（二级学科）名称} & \sysu@discipline@level@ii \\
      \end{tabular}\par
    }%
    \vskip 2.7cm%
    {\xiaosi[2.6]%
      研究工作起始时间\quad\sysu@format@date{\sysu@date@zh@digit}{\sysu@start@date}\par
      \vskip 0.1cm%
      研究工作期满时间\quad\sysu@format@date{\sysu@date@zh@digit}{\sysu@end@date}\par
    }%
    \vskip 2.1cm%
    {\xiaosi[2.6]中山大学人事处（广州）\par}%
    \vskip 0.6cm%
    {\wuhao\sysu@format@date{\sysu@date@zh@digit@short}{\sysu@date}\par}%
  \end{center}%
}
\def\sysu@committee@name{学位论文指导小组、公开评阅人和答辩委员会名单}
\NewEnviron{committee}[1][]{%
  \ifsysu@degree@graduate
    \cleardoublepage
    \let\sysu@committee@file\@empty
    \kv@define@key{sysu@committee}{name}{\let\sysu@committee@name\kv@value}%
    \kv@define@key{sysu@committee}{file}{\let\sysu@committee@file\kv@value}%
    \kv@set@family@handler{sysu@committee}{%
      \ifx\kv@value\relax
        \let\sysu@committee@file\kv@key
      \else
        \kv@handled@false
      \fi
    }%
    \kvsetkeys{sysu@committee}{#1}%
    \ifx\sysu@committee@file\@empty
      \begingroup
        \ctexset{
          chapter = {
            format    = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
            afterskip = 49bp,
          },
          section = {
            beforeskip  =  26bp,
            afterskip   =  9.5bp,
            format      += \centering,
            numbering   =  false,
            afterindent =  false,
          },
        }%
        \sysu@chapter*[]{\sysu@committee@name}%
        \thispagestyle{empty}%
        \sysusetup{language=chinese}%
        \BODY\clearpage
        \sysu@reset@main@language
      \endgroup
    \else
      \sysu@pdfbookmark{0}{\sysu@committee@name}%
      \includepdf{\sysu@committee@file}%
    \fi
  \fi
}
\newcommand\copyrightpage[1][]{%
  \cleardoublepage
  \ifsysu@degree@postdoc\relax\else
    \def\sysu@@tmp{#1}
    \ifx\sysu@@tmp\@empty
      \sysusetup{language=chinese}%
      \ifsysu@degree@bachelor
        \sysu@copyright@page@bachelor
      \else
        \sysu@copyright@page@graduate
      \fi
      \sysu@reset@main@language
    \else
      \thispagestyle{empty}%
      \sysu@pdfbookmark{0}{原创性及使用授权声明}%
      \sysu@phantomsection
      \kv@define@key{sysu@copyright}{file}{\includepdf{\kv@value}}%
      \kv@set@family@handler{sysu@copyright}{%
        \ifx\kv@value\relax
          \includepdf{\kv@key}%
        \else
          \kv@handled@false
        \fi
      }%
      \kvsetkeys{sysu@copyright}{#1}%
    \fi
  \fi
}
\newcommand{\sysu@authorization@frontdate}{%
  日\ifsysu@degree@bachelor\hspace{1em}\else\hspace{2em}\fi 期：}
\newcommand\sysu@copyright@page@graduate{%
  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao},
        beforeskip = 40bp,
        afterskip  = 36bp,
      },
    }%
    \sysu@chapter*[]{关于学位论文使用授权的说明}%
    \thispagestyle{empty}%
  \endgroup
  \vskip 13bp%
  \begingroup
    \fontsize{14bp}{26bp}\selectfont
    本人完全了解中山大学有关保留、使用学位论文的规定，即：\par
    中山大学拥有在著作权法规定范围内学位论文的使用权，其中包括：%
    （1）\nobreak 已获学位的研究生必须按学校规定提交学位论文，%
    学校可以采用影印、缩印或其他复制手段保存研究生上交的学位论文；\allowbreak
    （2）\nobreak 为教学和科研目的，学校可以将公开的学位论文作为资料在图书馆、资料室等场所供校内师生阅读，%
    或在校园网上供校内师生浏览部分内容；\allowbreak
    \ifsysu@degree@doctor
      （3）\nobreak 根据《中华人民共和国学位条例暂行实施办法》及上级教育主管部门具体要求，向国家图书馆报送相应的学位论文。%
    \else
      （3）\nobreak 按照上级教育主管部门督导、抽查等要求，报送相应的学位论文。%
    \fi
    \par
    本人保证遵守上述规定。\par
  \endgroup
  \vskip 33bp%
  \begingroup
    \fontsize{12bp}{23.4bp}\selectfont
    \parindent\z@
    \leftskip 43bp%
    作者签名：\hspace{4bp}\sysu@underline[7em]{}\hspace{47bp}%
    导师签名：\hspace{4bp}\sysu@underline[7em]{}\par
    \vskip 6bp%
    日\hspace{2em}期：\hspace{4bp}\sysu@underline[7em]{}\hspace{47bp}%
    日\hspace{2em}期：\hspace{4bp}\sysu@underline[7em]{}\par
  \endgroup
}
\newcommand\sysu@copyright@page@bachelor{%
  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao[1]},
        beforeskip = 1bp,
        afterskip  = 24bp,
      },
    }%
    \sysu@chapter*[]{关于学位论文使用授权的说明}%
    \thispagestyle{empty}%
  \endgroup
  \vskip 4bp%
  本人完全了解中山大学有关保留、使用学位论文的规定，即：%
  学校有权保留学位论文的复印件，允许该论文被查阅和借阅；%
  学校可以公布该论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存该论文。\par
  \textbf{(涉密的学位论文在解密后应遵守此规定)}\par
  \null\par
  \begingroup
    \centering
    签\quad 名：\sysu@underline[6em]{}%
    导师签名：\sysu@underline[6em]{}%
    日\quad 期：\sysu@underline[6em]{}%
    \par
  \endgroup
}
\sysu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\sysu@clist@use[2]{%
  \def\sysu@@tmp{}%
  \def\sysu@clist@processor##1{%
    \ifx\sysu@@tmp\@empty
      \def\sysu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \expandafter\comma@parse\expandafter{#1}{\sysu@clist@processor}%
}
\newenvironment{abstract}{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysusetup{language = chinese}%
  \ifsysu@degree@graduate
    \begingroup
      \ifsysu@main@language@english
        \ctexset{%
          chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
        }%
      \fi
      \sysu@chapter*{\sysu@abstract@name}%
    \endgroup
  \else
    \sysu@chapter*[]{\sysu@abstract@name}%
  \fi
}{%
  \par
  \null\par
  \ifsysu@degree@graduate
    \noindent
    \textsf{关键词：}%
  \else
    \textbf{关键词：}%
  \fi
  \sysu@clist@use{\sysu@keywords}{；}%
  \gdef\sysu@keywords{}%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysu@reset@main@language % switch back to main language
}
\newenvironment{abstract*}{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysusetup{language = english}%
  \ifsysu@degree@graduate
    \sysu@chapter*{\sysu@abstract@name@en}%
  \else
    \sysu@chapter*[]{\sysu@abstract@name@en}%
  \fi
}{%
  \par
  \null\par
  \ifsysu@degree@graduate
    \noindent
  \fi
  \textbf{Keywords:}\space
  \sysu@clist@use{\sysu@keywords@en}{; }%
  \ifsysu@degree@graduate
    \vspace*{\stretch{1}}%
  \fi
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysu@reset@main@language % switch back to main language
}
\newenvironment{denotation}[1][2.5cm]{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \ifsysu@degree@graduate
    \sysu@chapter*{\sysu@denotation@name}%
  \else
    \sysu@chapter*[]{\sysu@denotation@name}%
  \fi
  \vskip-30bp\xiaosi[1.6]\begin{sysu@denotation}[labelwidth=#1]
}{%
  \end{sysu@denotation}
}
\newlist{sysu@denotation}{description}{1}
\setlist[sysu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newcommand{\sysu@statement@text}{本人郑重声明：所呈交的学位论文，是本人在导师指导下
  ，独立进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容外，本学位论
  文的研究成果不包含任何他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的
  其他个人和集体，均已在文中以明确方式标明。}
\newcommand{\sysu@signature}{签\hspace{1em}名：}
\newcommand{\sysu@backdate}{日\hspace{1em}期：}
\newenvironment{acknowledgements}{%
  \@mainmatterfalse
  \sysu@end@appendix@ref@section
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysu@chapter*{\sysu@acknowledgements@name}%
}{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
}
\sysu@define@key{
  statement-page-style = {
    name = statement@page@style,
    choices = {
      auto,
      empty,
      plain,
    },
    default = auto,
  },
  statement-page-number = {
    name = statement@page@number,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\sysu@option@hook{statement-page-number}{%
  \ifsysu@statement@page@number@false
    \sysusetup{statement-page-style=empty}%
  \else
    \sysusetup{statement-page-style=plain}%
  \fi
  \sysu@warning{%
    The "statement-page-number" option is deprecated.
    Use "page-style" option of \protect\statement command instead%
  }%
}
\newif\ifsysu@statement@exists
\newcommand\statement[1][]{%
  \@mainmatterfalse
  \sysu@end@appendix@ref@section
  \sysu@statement@existstrue
  \ifsysu@degree@bachelor
    \cleardoublepage
    \def\sysu@statement@name{声\hspace{2em}明}%
  \else
    \def\sysu@statement@name{声\hspace{1em}明}%
  \fi
  \let\sysu@statement@file\@empty
  \kv@define@key{sysu@statement}{page-style}{\sysusetup{statement-page-style=##1}}%
  \kv@define@key{sysu@statement}{file}{\let\sysu@statement@file\kv@value}%
  \kv@set@family@handler{sysu@statement}{%
    \ifx\kv@value\relax
      \let\sysu@statement@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{sysu@statement}{#1}%
  \ifsysu@statement@page@style@auto
    \ifx\sysu@statement@file\@empty
      \ifsysu@degree@bachelor
        \sysusetup{statement-page-style = empty}%
      \else
        \sysusetup{statement-page-style = plain}%
      \fi
    \else
      \ifsysu@degree@bachelor
        \sysusetup{statement-page-style = plain}%
      \else
        \sysusetup{statement-page-style = empty}%
      \fi
    \fi
  \fi
  \ifx\sysu@statement@file\@empty
    \sysusetup{language=chinese}%
    \begingroup
      \ifsysu@degree@graduate
        \ifsysu@main@language@english
          \ctexset{%
            chapter/format = \centering\sffamily\fontsize{16bp}{20bp}\selectfont,
          }%
        \fi
      \fi
      \sysu@chapter*{\sysu@statement@name}%
    \endgroup
    \thispagestyle{\sysu@statement@page@style}%
    \sysu@statement@text\par
    \ifsysu@degree@graduate
      \vskip 2cm%
    \else
      \null\par
    \fi
    {\hfill\sysu@signature\sysu@underline[2.5cm]\relax
      \sysu@backdate\sysu@underline[2.5cm]\relax}%
    \sysu@reset@main@language
  \else
    \includepdf[pagecommand={%
      \markboth{\sysu@statement@name}{}%
      \sysu@phantomsection
      \addcontentsline{toc}{chapter}{\sysu@statement@name}%
      \thispagestyle{\sysu@statement@page@style}%
    }]{\sysu@statement@file}%
  \fi
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\sysu@listof#1{% #1: float type
  \setcounter{tocdepth}{2} % restore tocdepth in case being modified
  \@ifstar
    {\sysu@chapter*[]{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}
    {\sysu@chapter*{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}%
}
\renewcommand\listoffigures{%
  \ifsysu@degree@bachelor
    \ifsysu@backmatter\else
      \sysu@warning{The list of figures should be placed in back matter}%
    \fi
  \fi
  \sysu@listof{figure}%
}
\titlecontents{figure}
  [\z@]{}
  {\contentspush{\figurename~\thecontentslabel\quad}}{}
  {\nobreak\sysu@leaders\nobreak\hfil\thecontentspage}
\renewcommand\listoftables{%
  \ifsysu@degree@bachelor
    \ifsysu@backmatter\else
      \sysu@warning{The list of tables should be placed in back matter}%
    \fi
  \fi
  \sysu@listof{table}%
}
\titlecontents{table}
  [\z@]{}
  {\contentspush{\tablename~\thecontentslabel\quad}}{}
  {\sysu@leaders\thecontentspage}
\newcommand\listoffiguresandtables{%
  \ifsysu@degree@bachelor
    \sysu@warning{The list of figures and tables are for graduates only}%
    \listoffigures
    \listoftables
  \else
    \sysu@chapter*{\sysu@list@figure@table@name}%
    \@starttoc{lof}%
    \par
    \null\par
    \@starttoc{lot}%
  \fi
}
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\sysu@listof{equation}}
\titlecontents{equation}
  [0pt]{\addvspace{6bp}}
  {\sysu@equation@name~\thecontentslabel}{}
  {\nobreak\sysu@leaders\nobreak\thecontentspage}
\contentsuse{equation}{loe}
\sysu@define@key{
  cite-style = {
    name = cite@style,
    choices = {
      super,
      inline,
      author-year,
    }
  }
}
\def\bibliographystyle#1{%
  \gdef\bu@bibstyle{#1}%
  \ifx\@begindocumenthook\@undefined\else
    \expandafter\AtBeginDocument
  \fi
    {\if@filesw
       \immediate\write\@auxout{\string\bibstyle{#1}}%
       \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
     \fi}%
}
\def\bibliography#1{%
  \if@filesw
    \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
    \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
  \fi
  \gdef\bu@bibdata{#1}%
  \@input@{\jobname.bbl}}
\PassOptionsToPackage{compress}{natbib}
\AtEndOfPackageFile*{natbib}{
  \DeclareRobustCommand\inlinecite{\@inlinecite}
  \def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
  \let\onlinecite\inlinecite
  \newcommand\bibstyle@super{%
    \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
  \newcommand\bibstyle@inline{%
    \bibpunct{[}{]}{,}{n}{,}{,}}
  \@namedef{bibstyle@author-year}{%
    \bibpunct{(}{)}{;}{a}{,}{,}}
  \sysu@option@hook{cite-style}{\@nameuse{bibstyle@\sysu@cite@style}}
  \@namedef{bibstyle@sysuthesis-numeric}{\citestyle{super}}
  \@namedef{bibstyle@sysuthesis-author-year}{\citestyle{author-year}}
  \@namedef{bibstyle@cell}{\citestyle{author-year}}
  \@namedef{bibstyle@sysuthesis-bachelor}{\citestyle{super}}
  \renewcommand\NAT@citesuper[3]{%
    \ifNAT@swa
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close}%
      %  \if*#3*\else\NAT@spacechar#3\fi\else #1\fi\endgroup}
      \unskip\kern\p@
      \textsuperscript{%
        \NAT@@open#1\NAT@@close
        \if*#3*\else#3\fi
      }%
      \kern\p@
    \else
      #1%
    \fi
    \endgroup
  }
  \renewcommand\NAT@citenum[3]{%
    \ifNAT@swa
      \NAT@@open
      \if*#2*\else
        #2\NAT@spacechar
      \fi
      % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close
      #1\NAT@@close
      \if*#3*\else
        \textsuperscript{#3}%
      \fi
    \else
      #1%
    \fi
    \endgroup
  }
  \def\NAT@citexnum[#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\def\NAT@num{-1}\let\NAT@last@yr\relax\let\NAT@nm\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{%
        {\reset@font\bfseries?}
          \NAT@citeundefined\PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\let\NAT@last@num\NAT@num\let\NAT@last@nm\NAT@nm
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
        \ifNAT@full\let\NAT@nm\NAT@all@names\else
          \let\NAT@nm\NAT@name\fi
        \ifNAT@swa
        \@ifnum{\NAT@ctype>\@ne}{%
          \@citea
          \NAT@hyper@{\@ifnum{\NAT@ctype=\tw@}{\NAT@test{\NAT@ctype}}{\NAT@alias}}%
        }{%
          \@ifnum{\NAT@cmprs>\z@}{%
          \NAT@ifcat@num\NAT@num
            {\let\NAT@nm=\NAT@num}%
            {\def\NAT@nm{-2}}%
          \NAT@ifcat@num\NAT@last@num
            {\@tempcnta=\NAT@last@num\relax}%
            {\@tempcnta\m@ne}%
          \@ifnum{\NAT@nm=\@tempcnta}{%
            \@ifnum{\NAT@merge>\@ne}{}{\NAT@last@yr@mbox}%
          }{%
            \advance\@tempcnta by\@ne
            \@ifnum{\NAT@nm=\@tempcnta}{%
              % \ifx\NAT@last@yr\relax
              %   \def@NAT@last@yr{\@citea}%
              % \else
              %   \def@NAT@last@yr{--\NAT@penalty}%
              % \fi
              \def@NAT@last@yr{-\NAT@penalty}%
            }{%
              \NAT@last@yr@mbox
            }%
          }%
          }{%
          \@tempswatrue
          \@ifnum{\NAT@merge>\@ne}{\@ifnum{\NAT@last@num=\NAT@num\relax}{\@tempswafalse}{}}{}%
          \if@tempswa\NAT@citea@mbox\fi
          }%
        }%
        \NAT@def@citea
        \else
          \ifcase\NAT@ctype
            \ifx\NAT@last@nm\NAT@nm \NAT@yrsep\NAT@penalty\NAT@space\else
              \@citea \NAT@test{\@ne}\NAT@spacechar\NAT@mbox{\NAT@super@kern\NAT@@open}%
            \fi
            \if*#1*\else#1\NAT@spacechar\fi
            \NAT@mbox{\NAT@hyper@{{\citenumfont{\NAT@num}}}}%
            \NAT@def@citea@box
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space\NAT@alias
          \fi
        \fi
      }%
      }%
        \@ifnum{\NAT@cmprs>\z@}{\NAT@last@yr}{}%
        \ifNAT@swa\else
          % \@ifnum{\NAT@ctype=\z@}{%
          %   \if*#2*\else\NAT@cmt#2\fi
          % }{}%
          \NAT@mbox{\NAT@@close}%
          \@ifnum{\NAT@ctype=\z@}{%
            \if*#2*\else
              \textsuperscript{#2}%
            \fi
          }{}%
          \NAT@super@kern
        \fi
    }{#1}{#2}%
  }%
  \renewcommand\NAT@cite%
      [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
          % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
          #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
  \def\NAT@citex%
    [#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\let\NAT@nm\@empty\let\NAT@year\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{\@citea%
        {\reset@font\bfseries ?}\NAT@citeundefined
                  \PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}\def\NAT@date{}}%
      {\let\NAT@last@nm=\NAT@nm\let\NAT@last@yr=\NAT@year
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
      \ifNAT@full\let\NAT@nm\NAT@all@names\else
        \let\NAT@nm\NAT@name\fi
      \ifNAT@swa\ifcase\NAT@ctype
        \if\relax\NAT@date\relax
          \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}\NAT@date}%
        \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else\unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{%
                \NAT@aysep\NAT@spacechar}{\@citeb\@extra@b@citeb
              }%
              \NAT@date
            }%
          \fi
        \fi
      \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
      \or\@citea\NAT@hyper@{\NAT@date}%
      \or\@citea\NAT@hyper@{\NAT@alias}%
      \fi \NAT@def@citea
      \else
        \ifcase\NAT@ctype
          \if\relax\NAT@date\relax
            \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
          \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else
                \unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{\NAT@spacechar\NAT@@open\if*#1*\else#1\NAT@spacechar\fi}%
                {\@citeb\@extra@b@citeb}%
              \NAT@date
            }%
          \fi
          \fi
        \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
        \or\@citea\NAT@hyper@{\NAT@date}%
        \or\@citea\NAT@hyper@{\NAT@alias}%
        \fi
        \if\relax\NAT@date\relax
          \NAT@def@citea
        \else
          \NAT@def@citea@close
        \fi
      \fi
      }}\ifNAT@swa\else
        % \if*#2*\else\NAT@cmt#2\fi
        \if\relax\NAT@date\relax\else\NAT@@close\fi
        \if*#2*\else\textsuperscript{#2}\fi
      \fi}{#1}{#2}}
  \renewcommand\bibsection{\sysu@chapter*{\bibname}}
  \newcommand\sysu@set@bibliography@format{%
    \ifsysu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifsysu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \sysu@set@bibliography@format
  \sysu@option@hook{degree}{\sysu@set@bibliography@format}
  \sysu@option@hook{main-language}{\sysu@set@bibliography@format}
  \patchcmd\thebibliography{%
    \clubpenalty4000%
  }{%
    \interlinepenalty=5000\relax
    \clubpenalty=10000\relax
  }{}{\sysu@patch@error{\thebibliography}}
  \patchcmd\thebibliography{%
    \widowpenalty4000%
  }{%
    \widowpenalty=10000\relax
  }{}{\sysu@patch@error{\thebibliography}}
  \def\@biblabel#1{[#1]\hfill}
  \renewcommand\NAT@bibsetnum[1]{%
    % \settowidth\labelwidth{\@biblabel{#1}}%
    % \setlength{\leftmargin}{\labelwidth}%
    % \addtolength{\leftmargin}{\labelsep}%
    \setlength{\leftmargin}{1cm}%
    \setlength{\itemindent}{\z@}%
    \setlength{\labelsep}{0.1cm}%
    \setlength{\labelwidth}{0.9cm}%
    \setlength{\itemsep}{\bibsep}
    \setlength{\parsep}{\z@}%
    \ifNAT@openbib
      \addtolength{\leftmargin}{\bibindent}%
      \setlength{\itemindent}{-\bibindent}%
      \setlength{\listparindent}{\itemindent}%
      \setlength{\parsep}{0pt}%
    \fi
  }
}
\AtEndOfPackageFile*{biblatex}{
  \AtBeginDocument{
    \ifthenelse{\equal{\blx@bbxfile}{apa}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{apa6}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla}}{\def\bibname{WORKS CITED}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla-new}}{\def\bibname{WORKS CITED}}{}
  }
  \DeclareRobustCommand\inlinecite{\parencite}
  \defbibheading{bibliography}[\bibname]{\sysu@chapter*{\bibname}}
  \newcommand\sysu@set@bibliography@format{%
    \ifsysu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibitemsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifsysu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibitemsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\biblabelsep}{0.1cm}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \sysu@set@bibliography@format
  \sysu@option@hook{degree}{\sysu@set@bibliography@format}
  \sysu@option@hook{main-language}{\sysu@set@bibliography@format}
}
\AtEndOfPackageFile*{apacite}{
  \AtBeginDocument{
    \sysu@set@chapter@names
  }
  \renewcommand\bibliographytypesize{\fontsize{10.5bp}{17bp}\selectfont}
  \setlength{\bibitemsep}{6bp}
  \ifsysu@main@language@chinese
    \setlength{\bibleftmargin}{21bp}
    \setlength{\bibindent}{-\bibleftmargin}
  \else
    \setlength{\bibleftmargin}{0.5in}
    \setlength{\bibindent}{-\bibleftmargin}
  \fi
  \def\st@rtbibchapter{%
    \if@numberedbib%
      \chapter{\bibname}%   e.g.,   6. References
    \else%
      \sysu@chapter*{\bibname}%   e.g.,   References
    \fi%
  }%
}
\g@addto@macro\appendix{%
  \@mainmattertrue
  \ifsysu@degree@bachelor
    \ifsysu@statement@exists\else
      \sysu@warning{The appendices should be placed after statement}%
    \fi
  \fi
}
\sysu@define@key{
  toc-depth = {
    name = toc@depth,
  },
}
\sysu@option@hook{toc-depth}{%
  \ifx\@begindocumenthook\@undefined
    \protected@write\@auxout{}{%
      \string\ttl@writefile{toc}{%
        \protect\setcounter{tocdepth}{\sysu@toc@depth}%
      }%
    }%
  \else
    \setcounter{tocdepth}{\sysu@toc@depth}%
  \fi
}
\g@addto@macro\appendix{%
  \sysusetup{
    toc-depth = 0,
  }%
}
\sysu@define@key{
  appendix-figure-in-lof = {
    name = appendix@figure@in@lof,
    choices = {
      true,
      false,
    },
    default = false,
  },
}
\sysu@option@hook{appendix-figure-in-lof}{%
  \ifsysu@appendix@figure@in@lof@true
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@contentsline}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@contentsline}%
  \else
    \addtocontents{lof}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{lot}{\string\let\string\contentsline\string\ttl@gobblecontents}%
    \addtocontents{loe}{\string\let\string\contentsline\string\ttl@gobblecontents}%
  \fi
}
\g@addto@macro\appendix{%
  \sysusetup{
    appendix-figure-in-lof = false,
  }%
}
\newcommand\sysu@end@appendix@ref@section{}
\AtBeginOfPackageFile*{bibunits}{
  \def\bibliography#1{%
    \if@filesw
      \immediate\write\@auxout{\string\bibdata{\zap@space#1 \@empty}}%
      \immediate\write\@auxout{\string\gdef\string\bu@bibdata{#1}}%
    \fi
    \@input@{\jobname.bbl}%
    \gdef\bu@bibdata{#1}%
  }
  \def\bibliographystyle#1{%
    \ifx\@begindocumenthook\@undefined\else
      \expandafter\AtBeginDocument
    \fi
      {\if@filesw
        \immediate\write\@auxout{\string\bibstyle{#1}}%
        \immediate\write\@auxout{\string\gdef\string\bu@bibstyle{#1}}%
      \fi}%
      \gdef\bu@bibstyle{#1}%
  }
}
\AtEndOfPackageFile*{bibunits}{
  \def\@startbibunit{%
    \global\let\@startbibunitorrelax\relax
    \global\let\@finishbibunit\@finishstartedbibunit
    \global\advance\@bibunitauxcnt 1
    \if@filesw
      {\endlinechar-1
      \makeatletter
      \@input{\@bibunitname.aux}}%
      \immediate\openout\@bibunitaux\@bibunitname.aux
      \immediate\write\@bibunitaux{\string\bibstyle{\@localbibstyle}}%
    \fi
  }
  \def\bu@bibliography#1{%
    \putbib[#1]%
  }
  \def\bu@bibliographystyle#1{%
    \if@filesw
      \immediate\write\@bibunitaux{\string\gdef\string\@localbibstyle{#1}}%
    \fi
    \gdef\@localbibstyle{#1}%
  }
  \providecommand\printbibliography{\putbib\relax}%
  \g@addto@macro\appendix{%
    \renewcommand\@bibunitname{\jobname-appendix-\@alph\c@chapter}%
    \bibliographyunit[\chapter]%
    \renewcommand\bibsection{%
      \ctexset{section/numbering = false}%
      \section{\bibname}%
      \ctexset{section/numbering = true}%
    }%
    \ifsysu@degree@graduate
      \renewcommand\citenumfont{\@Alph\c@chapter.}%
      \renewcommand\@extra@binfo{@-\@alph\c@chapter}%
      \renewcommand\@extra@b@citeb{@-\@alph\c@chapter}%
      \renewcommand\bibnumfmt[1]{[\@Alph\c@chapter.#1]\hfill}%
    \fi
  }
  \renewcommand\sysu@end@appendix@ref@section{%
    \bibliographyunit\relax
  }
  \AtEndDocument{\sysu@end@appendix@ref@section}
  \renewcommand\sysu@set@survey@bibheading{%
    \renewcommand\bibsection{%
      \par
      \vskip 20bp%
      \sysu@pdfbookmark{1}{\bibname}%
      \begingroup
        \centering
        \xiaosi[1.667]\bibname\par
      \endgroup
      \vskip 6bp%
    }%
  }%
  % \let\@xtestdef\@gobbletwo  % This doesn't work
  \def\bibunits@rerun@warning{\relax}
}
\PassOptionsToPackage{defernumbers = true}{biblatex}
\AtEndOfPackageFile*{biblatex}{
    \DeclareRefcontext{appendix}{}
  \g@addto@macro\appendix{%
    \pretocmd\chapter{%
      \newrefsection
      \ifsysu@degree@bachelor\else
        \@tempcnta=\c@chapter
        \advance\@tempcnta\@ne
        \newrefcontext[labelprefix = {\@Alph\@tempcnta.}]{appendix}%
      \fi
    }{}{\sysu@patch@error{\chapter}}%
    \defbibheading{bibliography}[\bibname]{%
      \ctexset{section/numbering = false}%
      \section{#1}%
      \ctexset{section/numbering = true}%
    }%
  }
  \renewcommand\sysu@set@survey@bibheading{%
    \defbibheading{bibliography}[\bibname]{%
      \par
      \vskip 20bp%
      \sysu@pdfbookmark{1}{\bibname}%
      \begingroup
        \centering
        \xiaosi[1.667]##1\par
      \endgroup
      \vskip 6bp%
    }%
  }%
  \def\bibliographystyle#1{%
    \sysu@warning{'bibliographystyle' invalid for 'biblatex'.}%
  }
}
\@ifpackagelater{titletoc}{2019/07/14}{
  \newcommand\sysu@print@contents[5]{%
    \printcontents[#1]{#2}{#3}[#4]{}%
  }
}{
  \newcommand\sysu@print@contents[5]{%
    \printcontents[#1]{#2}{#3}{\setcounter{tocdepth}{#4}#5}%
  }
}
\newenvironment{survey}{%
  \chapter{外文资料的调研阅读报告}%
  \sysusetup{language = english}%
  \let\title\sysu@appendix@title
  \let\maketitle\sysu@appendix@maketitle
  \sysu@set@partial@toc@format
  \renewcommand\tableofcontents{%
    \section*{Contents}%
    \sysu@pdfbookmark{1}{Contents}%
    \sysu@print@contents{survey}{l}{1}{2}{}%
    \vskip 20bp%
  }%
  \let\appendix\sysu@appendix@appendix
  \sysu@set@survey@bibheading
  \renewcommand\bibname{参考文献}%
  \startcontents[survey]%
}{%
  \stopcontents[survey]%
  \sysu@reset@main@language % restore language
}
\newcommand\sysu@set@appendix@bib@heading{}
\newenvironment{translation}{%
  \chapter{外文资料的书面翻译}%
  \sysusetup{language = chinese}%
  \let\title\sysu@appendix@title
  \let\maketitle\sysu@appendix@maketitle
  \renewenvironment{abstract}{%
    \ctexset{
      section = {
        format    += \centering,
        numbering  = false,
      },
    }%
    \section{摘要}%
    \par
    \ifx\sysu@keywords\@empty\else
      \textbf{关键词：}\sysu@clist@use{\sysu@keywords}{；}\par
    \fi
  }%
  \sysu@set@partial@toc@format
  \renewcommand\tableofcontents{%
    \section*{目录}%
    \sysu@pdfbookmark{1}{目录}%
    \sysu@print@contents{translation}{l}{1}{2}{}%
    \vskip 20bp%
  }%
  \let\appendix\sysu@appendix@appendix
  \def\bibsection{%
    \begingroup
      \ctexset{section/numbering=false}%
      \section{\bibname}%
    \endgroup
  }%
  \startcontents[translation]%
}{%
  \stopcontents[translation]%
  \sysu@reset@main@language % restore language
}
\newenvironment{translation-index}{}{}
\AtEndOfPackageFile*{bibunits}{
  \renewenvironment{translation-index}{%
    \begin{bibunit}%
      \renewcommand\@bibunitname{\jobname-index}%
      \renewcommand\bibname{书面翻译对应的原文索引}%
      \sysu@set@survey@bibheading
  }{%
    \end{bibunit}%
  }
}
\AtEndOfPackageFile*{biblatex}{
  \renewenvironment{translation-index}{%
    \endrefsection
    \begin{refsection}%
      \renewcommand\bibname{书面翻译对应的原文索引}%
      \sysu@set@survey@bibheading
  }{%
    \end{refsection}%
  }
}
\DeclareRobustCommand\sysu@appendix@title[1]{\gdef\sysu@appendix@@title{#1}}
\newcommand\sysu@appendix@maketitle{%
  \par
  \begin{center}%
    \xiaosi[1.667]\sysu@appendix@@title
  \end{center}%
  \par
}
\newcommand\sysu@set@partial@toc@format{%
  \titlecontents{section}
    [\z@]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}%
  \titlecontents{subsection}
    [1em]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}%
  \titlecontents{subsubsection}
    [2em]{}
    {\contentspush{\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}%
}
\newcommand\sysu@appendix@appendix{%
  \def\theHsection{\Hy@AlphNoErr{section}}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\thechapter.\@Alph\c@section}%
}%
\newcommand\sysu@set@survey@bibheading{}
\newenvironment{resume}{%
  \@mainmatterfalse
  \sysu@end@appendix@ref@section
  \sysu@chapter*{\sysu@resume@name}%
  \ctexset{
    section = {
      format    += \centering,
      numbering = false,
    },
  }%
  \ifsysu@language@chinese
    \ctexset{
      subsection = {
        format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
        numbering  = false,
        aftertitle = ：,
      },
    }%
    \setlist[achievements]{
      topsep     = 6bp,
      itemsep    = 6bp,
      leftmargin = 1cm,
      labelwidth = 1cm,
      labelsep   = 0pt,
      first      = {
        \ifsysu@degree@graduate
          \fontsize{12bp}{16bp}\selectfont
        \fi
      },
      align      = left,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \else
    \ctexset{
      subsection = {
        beforeskip = 0pt,
        afterskip  = 0pt,
        format     = \bfseries\normalsize,
        indent     = \parindent,
        numbering  = false,
      },
    }%
    \ifsysu@degree@bachelor
      % 内容部分用Arial字体，字号15pt，行距采用固定值20pt， 段前后 0pt。
      \sffamily\fontsize{15bp}{20bp}\selectfont
    \fi
    \setlist[achievements]{
      topsep     = 0bp,
      itemsep    = 0bp,
      leftmargin = 1.75cm,
      labelsep   = 0.5cm,
      align      = right,
      label      = [\arabic*],
      resume     = achievements,
    }%
  \fi
}{}
\newcommand\resumeitem[1]{%
  \sysu@error{The "\protect\resumeitem" is obsolete. Please update to the new format}%
}
\newcommand\researchitem[1]{%
  \sysu@error{The "\protect\researchitem" is obsolete. Please update to the new format}%
}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{
  topsep     = 6bp,
  partopsep  = 0bp,
  itemsep    = 6bp,
  parsep     = 0bp,
  leftmargin = 10mm,
  itemindent = 0pt,
  align      = left,
  label      = [\arabic*],
  resume     = achievements,
}
\newenvironment{publications}{%
  \sysu@deprecate{"publications" environment}{"achievements"}%
  \begin{achievements}%
}{%
  \end{achievements}%
}
\newcommand\publicationskip{%
  \sysu@error{The "\protect\publicationskip" is obsolete. Do not use it}%
}
\NewEnviron{comments}[1][]{%
  \sysu@end@appendix@ref@section
  \ifsysu@degree@graduate
    \@mainmatterfalse
    \kv@define@key{sysu@comments}{name}{\let\sysu@comments@name\kv@value}%
    \kv@set@family@handler{sysu@comments}{%
      \ifx\kv@value\relax
        \let\sysu@comments@name\kv@key
      \else
        \kv@handled@false
      \fi
    }%
    \kvsetkeys{sysu@comments}{#1}%
    \chapter{\sysu@comments@name}%
    \BODY\clearpage
  \fi
}
\NewEnviron{resolution}{%
  \sysu@end@appendix@ref@section
  \ifsysu@degree@graduate
    \@mainmatterfalse
    \chapter{\sysu@resolution@name}%
    \BODY\clearpage
  \fi
}
\newcommand{\record}[1]{%
  \let\sysu@record@file\@empty
  \kv@define@key{sysu@record}{file}{\let\sysu@record@file\kv@value}%
  \kv@set@family@handler{sysu@record}{%
    \ifx\kv@value\relax
      \let\sysu@record@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{sysu@record}{#1}%
  \ifx\sysu@record@file\@empty
    \sysu@error{File path of \protect\record\space is required}
  \fi
  \cleardoublepage
  \sysu@pdfbookmark{0}{综合论文训练记录表}%
  \includepdf[pages=-]{\sysu@record@file}%
}
\PassOptionsToPackage{
  linktoc            = all,
  bookmarksdepth     = 2,
  bookmarksnumbered  = true,
  bookmarksopen      = true,
  bookmarksopenlevel = 1,
  bookmarksdepth     = 3,
  unicode            = true,
  psdextra           = true,
  breaklinks         = true,
  plainpages         = false,
  pdfdisplaydoctitle = true,
  hidelinks,
}{hyperref}
\AtEndOfPackageFile*{hyperref}{
  \newcounter{sysu@bookmark}
  \renewcommand\sysu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{sysu@bookmark}%
    \pdfbookmark[#1]{#2}{sysuchapter.\thesysu@bookmark}%
  }
  \renewcommand\sysu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{%
    \let\\\relax
    \let\quad\relax
    \let\qquad\relax
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \ifsysu@main@language@chinese
    \hypersetup{
      pdflang = zh-CN,
    }%
  \else
    \hypersetup{
      pdflang = en-US,
    }%
  \fi
  \AtBeginDocument{%
    \ifsysu@main@language@chinese
      \hypersetup{
        pdftitle    = \sysu@title,
        pdfauthor   = \sysu@author,
        pdfsubject  = \sysu@degree@category,
        pdfkeywords = \sysu@keywords,
      }%
    \else
      \hypersetup{
        pdftitle    = \sysu@title@en,
        pdfauthor   = \sysu@author@en,
        pdfsubject  = \sysu@degree@category@en,
        pdfkeywords = \sysu@keywords@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\sysuthesis-v\version}}
  }%
}
\AtEndOfPackageFile*{mathtools}{
  \@ifpackageloaded{unicode-math}{
    \let\underbrace\LaTeXunderbrace
    \let\overbrace\LaTeXoverbrace
  }{}
}
\AtEndOfPackageFile*{nomencl}{
  \let\nomname\sysu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtEndOfPackageFile*{siunitx}{%
  \newcommand\sysu@set@siunitx@language{%
    \ifsysu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifsysu@language@english
        \sisetup{
          list-final-separator = {, and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \sysu@set@siunitx@language
  \sysu@option@hook{language}{\sysu@set@siunitx@language}
}
\AtEndOfPackageFile*{amsthm}{%
  \newtheoremstyle{sysu}
    {\z@}{\z@}
    {\normalfont}{\z@}
    {\normalfont\sffamily}{\sysu@theorem@separator}
    {0.5em}{}
  \theoremstyle{sysu}
  \newtheorem{assumption}{\sysu@assumption@name}[chapter]%
  \newtheorem{definition}{\sysu@definition@name}[chapter]%
  \newtheorem{proposition}{\sysu@proposition@name}[chapter]%
  \newtheorem{lemma}{\sysu@lemma@name}[chapter]%
  \newtheorem{theorem}{\sysu@theorem@name}[chapter]%
  \newtheorem{axiom}{\sysu@axiom@name}[chapter]%
  \newtheorem{corollary}{\sysu@corollary@name}[chapter]%
  \newtheorem{exercise}{\sysu@exercise@name}[chapter]%
  \newtheorem{example}{\sysu@example@name}[chapter]%
  \newtheorem{remark}{\sysu@remark@name}[chapter]%
  \newtheorem{problem}{\sysu@problem@name}[chapter]%
  \newtheorem{conjecture}{\sysu@conjecture@name}[chapter]%
  \renewenvironment{proof}[1][\sysu@proof@name]{\par
    \pushQED{\qed}%
    % \normalfont \topsep6\p@\@plus6\p@\relax
    \normalfont \topsep\z@\relax
    \trivlist
    \item[\hskip\labelsep
      %     \itshape
      % #1\@addpunct{.}]\ignorespaces
      \sffamily
      #1]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \renewcommand\qedsymbol{\sysu@qed}
}
\AtEndOfPackageFile*{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\sysu@qed}%
  \newtheorem*{proof}{\sysu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\sysu@theorem@separator}%
  \newtheorem{assumption}{\sysu@assumption@name}[chapter]%
  \newtheorem{definition}{\sysu@definition@name}[chapter]%
  \newtheorem{proposition}{\sysu@proposition@name}[chapter]%
  \newtheorem{lemma}{\sysu@lemma@name}[chapter]%
  \newtheorem{theorem}{\sysu@theorem@name}[chapter]%
  \newtheorem{axiom}{\sysu@axiom@name}[chapter]%
  \newtheorem{corollary}{\sysu@corollary@name}[chapter]%
  \newtheorem{exercise}{\sysu@exercise@name}[chapter]%
  \newtheorem{example}{\sysu@example@name}[chapter]%
  \newtheorem{remark}{\sysu@remark@name}[chapter]%
  \newtheorem{problem}{\sysu@problem@name}[chapter]%
  \newtheorem{conjecture}{\sysu@conjecture@name}[chapter]%
}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\sysu@algorithm@name}
  \renewcommand\listofalgorithms{%
    \sysu@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\sysu@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\sysu@algorithm@name}
  \SetAlgoCaptionLayout{sysu@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \sysu@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\sysu@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}
}
\AtEndOfPackageFile*{minted}{
  \newcommand\sysu@set@listing@language{%
    \ifsysu@language@chinese
      \floatname{listing}{代码}%
    \else
      \floatname{listing}{Listing}%
    \fi
  }
  \sysu@set@listing@language
  \sysu@option@hook{language}{\sysu@set@listing@language}
}
\sysu@define@key{
  spine-font = {
    name = spine@font,
  },
  spine-title = {
    name = spine@title,
  },
  spine-author = {
    name = spine@author,
  },
}
\renewcommand\sysu@spine@font{%
  \ifsysu@degree@doctor
    \fontsize{16bp}{20.8bp}\selectfont
  \else
    \fontsize{15bp}{19.5bp}\selectfont
  \fi
}
\newcommand*\CJKmovesymbol[1]{\raise.3em\hbox{#1}}
\newcommand*\CJKmove{%
  \punctstyle{plain}%
  \let\CJKsymbol\CJKmovesymbol
  \let\CJKpunctsymbol\CJKsymbol
}
\NewDocumentCommand{\spine}{
    O{
      \ifx\sysu@spine@title\@empty
        \sysu@title
      \else
        \sysu@spine@title
      \fi
    }
    O{
      \ifx\sysu@spine@author\@empty
        \sysu@author
      \else
        \sysu@spine@author
      \fi
    }}{%
  \clearpage
  \ifsysu@degree@bachelor
    \newgeometry{
      vmargin = 3cm,
      hmargin = 1cm,
    }%
  \else
    \newgeometry{
      vmargin = 5.5cm,
      hmargin = 1cm,
    }%
  \fi
  \thispagestyle{empty}%
  \ifsysu@main@language@chinese
    \sysu@pdfbookmark{0}{书脊}%
  \else
    \sysu@pdfbookmark{0}{Spine}%
  \fi
  \begingroup
    \noindent\hfill
    \rotatebox[origin=lt]{-90}{%
      \makebox[\textheight]{%
        \fangsong
        \addCJKfontfeatures*{RawFeature={vertical}}%
        \sysu@spine@font
        \CJKmove
        #1\hfill
        \sysu@stretch{4.5em}{#2}%
      }%
    }%
  \endgroup
  \clearpage
  \restoregeometry
}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
\endinput
%%
%% End of file `sysuthesis.cls'.
