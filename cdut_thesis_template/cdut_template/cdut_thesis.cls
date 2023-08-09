\ProvidesClass{cdut_thesis}[2020/05/04 v1.0 Standard LaTeX Template for CDUT Thesis]

\makeatletter % 激活 @ 符号
\newif\ifcdut@twoside
\DeclareOption{oneside}{\cdut@twosidefalse}
\DeclareOption{twoside}{\cdut@twosidetrue}
\ProcessOptions\relax
\makeatother % 取消激活 @ 符号

\LoadClass[cs4size,UTF8]{ctexart}  %-- cs4size：小四号字

\newcommand{\cdut}{成都理工大学普通本科课程论文}    %-- 定义本次报告的性质

%===============================================宏包的引入==============================================%
%=====页面、目录、字体=====%
\RequirePackage[bookmarksnumbered=true,bookmarksopen=true]{hyperref}           %-- 超链接，加载书签
	\hypersetup{hidelinks}                  %-- 隐藏超链接的边框
\RequirePackage{fontspec}                 %-- 字体格式
	\setmainfont{Times New Roman}           %-- 设置数字和字母的字体为Times New Roman
	\setCJKmainfont[BoldFont=SimHei,ItalicFont=KaiTi,BoldItalicFont=LiSu]{SimSun}
	%-- 设置中文正文字体为宋体，其粗体为黑体、斜体为楷体、粗斜体为隶书
\RequirePackage{pifont}                                           %-- 提供一些奇奇怪怪但很实用的小图案宏包
	\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}  %-- 将脚注标号修改为带圈的数字
\RequirePackage[perpage]{footmisc}                                 %-- 让脚注每页清零编号
\RequirePackage{titlesec}                       %-- 标题修改
	\titlespacing{\section}{0pt}{0.5ex}{*4.5}    %-- 修改了 section 前后的距离
\renewcommand{\baselinestretch}{1.5}            %-- 定义正文为1.5倍行距
% \RequirePackage{multicol}                     %-- 提供更为强大的分栏功能
%=====页面、目录、字体=====%

%=======学习必备宏包=======%
\RequirePackage{color}                  %-- 颜色1
\RequirePackage{xcolor}                 %-- 颜色2
\RequirePackage{fancybox}               %-- 更多盒子
\RequirePackage{framed}                 %-- 文段加框
\RequirePackage[most]{tcolorbox}        %-- 可调控的颜色盒子
\RequirePackage{enumitem}               %-- 方便地对各种列表环境的标签、尺寸进行定制
\RequirePackage{enumerate}              %-- 提供列表修改
\RequirePackage{booktabs}               %-- 绘制三线表
\RequirePackage{multirow}               %-- 水平合并单元格
\RequirePackage{makecell}               %-- 单元格内换行 \makecell[lcr]{xx\\x}
\RequirePackage{colortbl}               %-- 设置表列、表行、单个单元格或表格线的颜色
\RequirePackage{amsmath}                %-- AMS 数学
\RequirePackage{amssymb}                %-- 在 amsfonts 基础上将 AMS 扩展符号定义成命令
\RequirePackage{mathtools}              %-- amsmath的补充
\RequirePackage{graphicx}               %-- 插图功能
\RequirePackage{subcaption}             %-- 用于处理子图和子表的标题，尽量不要重复导入 caption 宏包
\RequirePackage{float}                  %-- 固定悬浮框
\RequirePackage{tikz}                   %-- 几何画图工具
\RequirePackage[super]{gbt7714}         %-- 参考文献国标格式
	\renewcommand{\bibname}{参考文献}    %-- 名称修改为中文
% \RequirePackage{listings}               %-- 环境排版程序代码
% \RequirePackage{ulem}                   %-- 支持多种下划线的文字自动换行
% \RequirePackage{bm}                     %-- 数学公式加粗
% \RequirePackage{verbatim}               %-- 代码环境
% \RequirePackage{mathrsfs}               %-- 数学花体字体{仅大写字母}
% \RequirePackage{mathdots}               %-- 提供了反向斜省略号
% \RequirePackage{breqn}                  %-- 自动对长的显示公式折行
% \RequirePackage{mhchem}                 %-- 化学宏包
% \RequirePackage{extpfeil}               %-- （自定义）箭头上下添加文字
% \RequirePackage{shapepar}               %-- 用于创建自定义形状段落（shaped paragraphs）
% \RequirePackage{appendix}               %-- 附录格式定制
%=======辅助学习宏包=======%

%===============================================宏包的引入==============================================%

%========================================================================================================%
%------------------------------------------------目录格式------------------------------------------------%

\RequirePackage[nottoc]{tocbibind}      %-- 在目录中加入目录项本身、参考文献、索引等项目
									    %-- nottoc 选项取消了在目录中显示目录本身
\RequirePackage{tocloft}                %-- 关于目录的宏包，具体现在不详
	\renewcommand{\cfttoctitlefont}{\hfill\heiti\zihao{-2}}     %-- 设置目录title的样式(黑体小二居中)
	\renewcommand{\cftloftitlefont}{\hfill\heiti\zihao{-2}}     %-- 设置图表目录title的样式(黑体小二居中)
	\renewcommand{\cftlottitlefont}{\hfill\heiti\zihao{-2}}     %-- 设置表格目录title的样式(黑体小二居中)
	\renewcommand{\cftaftertoctitle}{\hfill}                    %-- 让“目录”尽可能靠顶部
	\renewcommand{\cftafterloftitle}{\hfill}                    %-- 让“插图”尽可能靠顶部
	\renewcommand{\cftafterlottitle}{\hfill}                    %-- 让“表格”尽可能靠顶部
	\renewcommand{\contentsname}{目 \quad 录}                   %-- 让“目录”两个字中间分开
	\renewcommand{\listfigurename}{插 \quad 图}                 %-- 让“插图”两个字中间分开
	\renewcommand{\listtablename}{表 \quad 格}                  %-- 让“表格”两个字中间分开
	% 目录——toc  插图——lof  表格——lot

	\renewcommand\cftbeforesecskip{-2pt}                        %-- 控制section条目的间距

	\renewcommand\cftsecfont{\heiti\zihao{4}}	                %-- section的字体字号，黑体四号
	\renewcommand\cftsubsecfont{\heiti\zihao{5}}	            %-- subsection的字体字号，黑体五号
	\renewcommand\cftsubsubsecfont{\songti\zihao{5}}	        %-- subsubsection的字体字号，宋体五号

	\renewcommand\cftsecpagefont{\zihao{-4}}                    %-- section的页码编号，小四
	\renewcommand\cftsubsecpagefont{\zihao{-4}}                 %-- subsection的页码编号，小四
	\renewcommand\cftsubsubsecpagefont{\zihao{-4}}              %-- subsubsection的页码编号，小四

		\cftsetindents{subsection}{1em}{1.5em}                  %-- 设置subsection条目的缩进
		\cftsetindents{subsubsection}{2em}{1.5em}               %-- 设置subsubsection条目的缩进

	\renewcommand{\cftdotsep}{0.1}                              %-- 设置\@dotsep
	\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}       %-- 使得section条目后面带上....
		%\cftsetpnumwidth{1em}                                 %-- 修改...到page number的距离


\RequirePackage{titletoc} % 给图表目录前面上“图”、“表”字样
	\titlecontents{figure}[0.5cm]{\songti\zihao{-4}}{\figurename~\thecontentslabel\quad}{\hspace*{-1.5cm}}{\titlerule*[0.12cm]{.}\contentspage}%[\addvspace{6pt}]
	\titlecontents{table}[0.5cm]{\songti\zihao{-4}}{\tablename~\thecontentslabel\quad}{\hspace*{-1.5cm}}{\titlerule*[0.12cm]{.}\contentspage}%[\addvspace{6pt}]


%------------------------------------------------目录格式------------------------------------------------%
%========================================================================================================%

%========================================================================================================%
%------------------------------------------------主体部分------------------------------------------------%

\ctexset{
		section={
			name={第,章},
			number=\arabic{section},
			format=\heiti\zihao{-2}\centering,  %-- section，黑体小二，居中
			beforeskip={10cm},
		},
		subsection={
			format=\heiti\zihao{-3},            %-- subsection，黑体小三，默认居左
	    	beforeskip={1ex},
		},
		subsubsection={
			format=\heiti\zihao{4},             %-- subsubsection，黑体四号，默认居左
		},
		appendix={
			name={附录},      %-- 附录暂时用不上
		},
	}

% 第三点 ----- 
	% 报告中的图、表、公式、算式等，一律用阿拉伯数字分别依序连续编排序号。序号分章依序编码，其标注形式应便于互相区别，可分别为：图2-1、表3-2、式（3-5）等。

\RequirePackage{caption}                                  %-- 图表类标题
	\DeclareCaptionFont{cdutfloatfont}{\heiti\zihao{5}}   %-- 修改字体，黑体五号
	\captionsetup{
		font=cdutfloatfont,
		skip=0pt, 
	}

\RequirePackage{amsmath}                                             %-- AMS 数学
	\numberwithin{table}{section}                                    %-- 标签计数修改为“章节号 - 标签编号”
	\renewcommand{\thetable}{\arabic{section}-\arabic{table}}
	\numberwithin{figure}{section}                                   %-- 图片计数修改为“章节号 - 图片编号”
	\renewcommand{\thefigure}{\arabic{section}-\arabic{figure}}
	\numberwithin{equation}{section}                                 %-- 公式计数修改为“章节号 - 公式编号”
	\renewcommand{\theequation}{\arabic{section}-\arabic{equation}}


%------------------------------------------------主体部分------------------------------------------------%
%========================================================================================================%

%========================================================================================================%
%---------------------------------------摘要、结论、致谢、参考文献----------------------------------------%
\makeatletter % 激活 @ 符号
% 根据输入的可选参数，设置相应的页面样式
\ifcdut@twoside % 执行双面样式的操作
	\RequirePackage[a4paper,twoside]{geometry}                            %-- A4，设置纸张边距，双页模式
		\geometry{inner=3.54cm,outer=2.54cm,top=2.54cm,bottom=2.54cm}     %-- 上下2.54cm，左右2.54cm，装订线1cm
		\geometry{footskip=0.79cm}                                        %-- 页脚1.75cm
		\geometry{headsep=1em,headheight=1.5cm}                           %-- 页眉高1.5cm
	\RequirePackage{fancyhdr}
		\newcommand{\headstyle}{                                          %-- 设置页眉样式
			\renewcommand{\headrulewidth}{0.6pt}                          %-- 页眉添加下划线
			\fancyhead[CE]{\songti \zihao{-5} \cdut}                      %-- 设置偶数页页眉
			\fancyhead[CO]{\songti \zihao{-5} \leftmark }}                %-- 设置奇数页页眉
		\newcommand{\footstyle}{\fancyfoot[C]{\zihao{-5} \thepage}}       %-- 设置页脚样式
		\pagestyle{fancy}
			\fancyhf{}            %-- 清空原有样式
			\headstyle            %-- 设置刚刚定义好的页眉格式
			\footstyle            %-- 设置刚刚定义好的页脚格式

	%-- 中文摘要 --%
	\newenvironment{chineseabstract}{               %-- 创建一个中文摘要的环境
		\phantomsection                              %-- 创建锚点
		\addcontentsline{toc}{section}{摘 \quad 要}  %-- 将中文摘要手动加入目录
		\section*{\heiti{摘 \quad 要}}               %-- 将中文摘要作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                           %-- 设置中文摘要的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
		\fancyhead[CE]{\zihao{-5}\cdut}
		\fancyhead[CO]{\zihao{-5}摘 \quad 要}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 英文摘要 --%
	\newenvironment{englishabstract}{              %-- 创建一个英文摘要的环境
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{ABSTRACT}    %-- 将英文摘要手动加入目录
		\section*{ABSTRACT}                         %-- 将英文摘要作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                          %-- 设置英文摘要的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
		\fancyhead[CE]{\zihao{-5}\cdut}
		\fancyhead[CO]{\zihao{-5}ABSTRACT}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 结论 --%
	\newenvironment{conclusion}{                     %-- 创建一个结论的环境
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{结 \quad 论}  %-- 将结论手动加入目录
		\section*{\heiti\zihao{-2}{结 \quad 论}}     %-- 将结论作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                            %-- 设置结论的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
		\fancyhead[CE]{\zihao{-5}\cdut}
		\fancyhead[CO]{\zihao{-5}结论}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 致谢 --%
	\newenvironment{mythanks}{                       %-- 创建一个致谢的环境
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{致 \quad 谢}  %-- 将致谢手动加入目录
		\section*{\heiti\zihao{-2}{致 \quad 谢}}     %-- 将致谢作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                            %-- 设置致谢的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
		\fancyhead[CE]{\zihao{-5}\cdut}
		\fancyhead[CO]{\zihao{-5}致谢}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }

\else % 执行单面样式的操作
	\RequirePackage[a4paper]{geometry}                                  % 设置纸张边距
	 	\geometry{left=2.54cm,right=2.54cm,top=2.54cm,bottom=2.54cm}      % 上下2.54cm，左右2.54cm
		\geometry{footskip=0.79cm}                                        % 页脚1.75cm
		\geometry{headsep=1em,headheight=1.5cm}                           % 页眉高1.5cm
	\RequirePackage{fancyhdr}
		\newcommand{\headstyle}{
			\renewcommand{\headrulewidth}{0.6pt}
			\fancyhead[L]{\songti \zihao{-5} \cdut}        % 设置页眉样式
			\fancyhead[R]{\songti \zihao{-5} \leftmark }}
		\newcommand{\footstyle}{\fancyfoot[C]{\zihao{-5} \thepage}}              % 设置页脚样式
		\pagestyle{fancy}
			\fancyhf{}                           % 清空原有样式
			\headstyle
			\footstyle

	%-- 中文摘要 --%
	\newenvironment{chineseabstract}{
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{摘 \quad 要}
		\section*{\heiti{摘 \quad 要}}               % 将中文摘要作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                           % 设置中文摘要的页眉页脚
		\fancyhead[L]{\zihao{-5}\cdut}
		\fancyhead[R]{\zihao{-5}摘 \quad 要}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 英文摘要 --%
	\newenvironment{englishabstract}{
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{ABSTRACT}
		\section*{ABSTRACT}               % 将英文摘要作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                           % 设置英文摘要的页眉页脚
		\fancyhead[L]{\zihao{-5}\cdut}
		\fancyhead[R]{\zihao{-5}ABSTRACT}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 结论 --%
	\newenvironment{conclusion}{
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{结 \quad 论}
		\section*{\heiti\zihao{-2}{结 \quad 论}}     % 将结论作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                           % 设置结论的页眉页脚
		\fancyhead[L]{\zihao{-5}\cdut}
		\fancyhead[R]{\zihao{-5}结论}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }
	
	%-- 致谢 --%
	\newenvironment{mythanks}{
		\phantomsection                             %-- 创建锚点
		\addcontentsline{toc}{section}{致 \quad 谢}
		\section*{\heiti\zihao{-2}{致 \quad 谢}}     % 将致谢作为不带编号的section，解决缩进问题。
	\thispagestyle{fancy}                           % 设置致谢的页眉页脚
		\fancyhead[L]{\zihao{-5}\cdut}
		\fancyhead[R]{\zihao{-5}致谢}
		\fancyfoot[c]{\zihao{-5}\thepage}
	}{\newpage }

\fi

\makeatother % 取消激活 @ 符号
%---------------------------------------摘要、结论、致谢、参考文献----------------------------------------%
%========================================================================================================%

%------计算盒子
\newenvironment{boxjisuan}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=black!2!white,boxrule=0pt,frame hidden,
 borderline west={1.5mm}{-2mm}{black!20!white}]}
{\end{tcolorbox}}
\newenvironment{calculating}{\begin{boxjisuan}}{\end{boxjisuan}}
%------计算盒子
