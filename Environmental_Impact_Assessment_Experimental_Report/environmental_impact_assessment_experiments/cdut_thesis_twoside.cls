\ProvidesClass{cdut_thesis}[2020/05/04 v1.0 Standard LaTeX Template for CDUT Thesis]

\LoadClass[cs4size,UTF8]{ctexart}                 %-- cs4size：小四号字

\newcommand{\cdut}{成都理工大学普通本科实验报告}    %-- 定义本次报告的性质

\RequirePackage{framed}             %-- 文段加框
\RequirePackage{color}              %-- 颜色
\RequirePackage{xcolor}             %-- 颜色
\RequirePackage{enumerate}          %-- 提供列表修改
\RequirePackage{amssymb}            %-- 数学
\RequirePackage{graphicx}           %-- 插图
\RequirePackage[bookmarksnumbered=true,bookmarksopen=true]{hyperref}           %-- 超链接
	\hypersetup{hidelinks}          %-- 隐藏超链接的边框
\RequirePackage{mathptmx}           %-- 数学字体样式改为 Times New Roman
\RequirePackage{fontspec}           %-- 字体格式
	\setmainfont{Times New Roman}   %-- 数字和字母的字体
	% \setCJKmainfont[BoldFont=SimHei,ItalicFont=KaiTi,BoldItalicFont=LiSu]{SimSun}
									%-- 设置中文字体，正文字体为宋体，其粗体为黑体、斜体为楷体、粗斜体为隶书

\RequirePackage{titlesec}           %-- 标题修改
	\titlespacing{\section}{0pt}{0.5ex}{*4.5}    %-- 修改了 section 前后的距离

%===============================================宏包的引入==============================================%
%=====页面、目录、字体=====%
\RequirePackage[most]{tcolorbox}        %-- 可调控的颜色盒子
\RequirePackage{multicol}               %-- 提供更为强大的分栏功能
\RequirePackage{pifont}                 %-- 提供一些奇奇怪怪图案的宏包
	\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}
									    %-- 将脚注标号修改为带圈的数字
\RequirePackage[perpage]{footmisc}      %-- 让脚注每页清零编号
\RequirePackage[nottoc]{tocbibind}      %-- 在目录中加入目录项本身、参考文献、索引等项目
									    %-- nottoc 选项取消了在目录中显示目录本身
%=====页面、目录、字体=====%

%=======学习必备宏包=======%
\RequirePackage{mathrsfs}               %-- 数学花体字体{仅大写字母}
\RequirePackage{enumitem}               %-- 方便地对各种列表环境的标签、尺寸进行定制
\RequirePackage{amsmath}                %-- AMS 数学
\RequirePackage{amssymb}                %-- 在 amsfonts 基础上将 AMS 扩展符号定义成命令
\RequirePackage{bm}                     %-- 数学公式加粗
\RequirePackage{mathtools}              %-- amsmath的补充
\RequirePackage{mathdots}               %-- 提供了反向斜省略号
\RequirePackage{breqn}                  %-- 自动对长的显示公式折行
\RequirePackage{mhchem}                 %-- 化学宏包
\RequirePackage{verbatim}               %-- 代码环境
\RequirePackage{graphicx}               %-- 插图功能
\RequirePackage{tikz}                   %-- 几何画图工具
\RequirePackage{extpfeil}
\RequirePackage{ulem}                   %-- 支持多种下划线的文字自动换行
%=======学习必备宏包=======%

%=======辅助学习宏包=======%
\RequirePackage{fancybox}               %-- 更多盒子
\RequirePackage{framed}                 %-- 文段加框
\RequirePackage{color}                  %-- 颜色
\RequirePackage{xcolor}                 %-- 颜色
\RequirePackage{shapepar}               %-- 提供了 \parshape 命令的一个较为方便的语法接口
\RequirePackage{colortbl}               %-- 设置表列、表行、单个单元格或表格线的颜色
\RequirePackage{listings}               %-- 环境排版程序代码
%=======辅助学习宏包=======%

%===============================================宏包的引入==============================================%

%========================================================================================================%
%------------------------------------------------编写要求------------------------------------------------%

% 第一点 ----- 
	%-- 页面要求：报告须用A4（210×297mm）标准大小的白纸打印（30页及以上的用双面打印），装订成册。页边距采取默认形式（上下2.54cm，左右2.54cm，页眉1.5cm，页脚1.75cm）；装订线：10mm。

\RequirePackage[a4paper,twoside]{geometry}                            %-- A4，设置纸张边距，双页模式
 	% \geometry{left=2.54cm,right=2.54cm,top=2.54cm,bottom=2.54cm}    %-- 上下2.54cm，左右2.54cm
	\geometry{inner=3.54cm,outer=2.54cm,top=2.54cm,bottom=2.54cm}     %-- 上下2.54cm，左右2.54cm，装订线1cm
	\geometry{footskip=0.79cm}                                        %-- 页脚1.75cm
	\geometry{headsep=1em,headheight=1.5cm}                           %-- 页眉高1.5cm

% 第二点 ----- 
	%-- 页眉：页眉从摘要页开始到报告（论文）最后一页，均需设置。双面印制的，左页居中为“成都理工大学普通本科实习报告（课程论文）”，右页居中为各章章名。打印字号为小5号宋体，页眉之下有一条下划线。
	%-- 页脚：从报告主体部分（引言或绪论）开始，用阿拉伯数字连续编页，页码用小五号字底端居中。

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

% 第三点 ----- 
	%-- 前置部分从中文题名页起用罗马字母单独编页，如Ⅰ、Ⅱ、Ⅲ、Ⅳ、Ⅴ……。（在主文档里面设置）

% 第四点 ----- 
	%-- 字体与间距：凡打印的报告字体为小四号宋体，字间距设置为标准字间距，行间距设置为1.5倍行距。

	\renewcommand{\baselinestretch}{1.5}    % 定义1.5倍行距
			% cs4size：小四号字，已经在导入“ctexart”时设置

%------------------------------------------------编写要求------------------------------------------------%
%========================================================================================================%


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
%------------------------------------------------前置部分------------------------------------------------%

% 第一点 ----- 
	% 封面：封面格式按成都理工大学普通本科实习报告（课程论文）封面统一格式要求。封面内容须如实填写完整。

			% 成都理工大学普通本科实习报告（课程论文）（小二号黑体，居中） 
			% 报告题名（二号黑体，居中） 
			% 成都理工大学校徽（35×35mm居中）
			% 学生：××××××××（三号黑体，居中）
			% 学号：××××××××（中文三号黑体，数字三号Times New Roman，居中）
			% 指导教师：（××××××××三号黑体，居中） 
			% 助理或校外指导教师：（××××××××三号黑体，居中）（必要时）
			% 专业：××××××××（三号黑体，居中）
			% 所在院（系、所）（小二黑体，居中）
			% 报告提交（完成）时间（三号黑体，居中）

	%-- 封面部分是单独完成的，详见（data/cover）。

% 第二点 ----- 
	% 摘要：摘要是报告内容不加注释和评论的简短陈述，应以第三人称陈述。它应具有独立性和自含性，即不阅读报告的全文，就能获得必要的信息，摘要的内容应包含与报告同等量的主要信息。
	% 摘要一般应说明研究工作目的、实验研究方法、结果和最终结论等，而重点是结果和结论。摘要中一般不用图、表、化学结构式、计算机程序，不用非公知公用的符号、术语和非法定的计量单位。摘要不能与结论部分简单重复。
			% 摘要页置于英文题名页后。 
			% 中文摘要一般为300~400汉字左右，用小四号宋体，摘要应包括关键词。
			% 英文摘要是中文摘要的英文译文，英文摘要页置于中文摘要页之后（可选）。

		%-- 中文摘要设置 --%

\newenvironment{chineseabstract}{                %-- 创建一个中文摘要的环境
	\section*{\heiti{摘 \quad 要}}               %-- 将中文摘要作为不带编号的section，解决缩进问题。
	\addcontentsline{toc}{section}{摘 \quad 要}  %-- 将中文摘要手动加入目录
\thispagestyle{fancy}                            %-- 设置中文摘要的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
	\fancyhead[CE]{\zihao{-5}\cdut}
	\fancyhead[CO]{\zihao{-5}摘 \quad 要}
	\fancyfoot[c]{\zihao{-5}\thepage}
}{\newpage }

		%-- 中文摘要设置 --%

		%-- 英文摘要设置 --%

\newenvironment{englishabstract}{               %-- 创建一个英文摘要的环境
	\section*{ABSTRACT}                         %-- 将英文摘要作为不带编号的section，解决缩进问题。
	\addcontentsline{toc}{section}{ABSTRACT}    %-- 将英文摘要手动加入目录
\thispagestyle{fancy}                           %-- 设置英文摘要的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
	\fancyhead[CE]{\zihao{-5}\cdut}
	\fancyhead[CO]{\zihao{-5}ABSTRACT}
	\fancyfoot[c]{\zihao{-5}\thepage}
}{\newpage }

		%-- 英文摘要设置 --%

% 第三点 ----- （目前未用过）
	% 插图与附表清单：报告中如图表较多、应分别列出清单置于目次页之后。图的清单应有序号、图题和页码；表的清单应有序号、表题和页码。

% 第四点 ----- （暂时用不上）
	% 符号、标志、缩略词、首字母缩写、计量单位、名词、术语等的注释表：符号、标志、缩略词、首字母缩写、计量单位、名词、术语等的注释说明汇集成表，置于图表清单页之后。

%------------------------------------------------前置部分------------------------------------------------%
%========================================================================================================%


%========================================================================================================%
%------------------------------------------------主体部分------------------------------------------------%

% 第一点 ----- 
	% 格式：主体部分的编写格式由引言（绪论）开始，以结论结束。主体部分必须由另页右页开始。一级标题之间换页，二级标题之间空行。

% 第二点 ----- 
	% 报告各章应有序号，层次格式为：
			% 1××××（三号黑体，居中）         [附件为黑体小二]
			% ×××××××× (内容用小四号宋体)
			% 1.1××××（小三号黑体，居左）     [与附件相同，为黑体小三]
			% ××××××××（内容用小四号宋体）
			% 1.1.1××××（四号黑体，居左）     [附件为黑体小四]
			% ××××××××（内容用小四号宋体）
			% ①××××（用与内容同样大小的宋体） 
			% 1）××××（用与内容同样大小的宋体）
			% a．××××（用与内容同样大小的宋体）

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

% 第四点 ----- （暂时用不上）
	% 报告的附录依序用大写正体英文字母A、B、C……编序号，如：附录A。 
	% 附录中的图、表、式、参考文献等另行编序号，与正文分开，也一律用阿拉伯数字编码，但在编码前冠以附录序码，如：图A1；表B2；式(B3)；文献[A5]等。

% 第五点 ----- 
	% 图：图包括曲线图、构造图、示意图、图解、框图、流程图、记录图、布置图、地图、照片、图版等。
		% 图题采用中文，必要时可采用中英文对照，英文用Times New Roman字体五号，中文用宋体五号。
	% 表：表一般采用三线表（有合计时采用四线表），表的编排，一般是内容和测试项目由左至右横读，数据依序竖排，表应有自明性。
		% 每一表应有简短确切的题名，表题采用中文，必要时可采用中英文对照。英文用Times New Roman字体五号，中文用宋体五号，连同表的序号置于表上。
	% 数学、物理和化学式：正文中的公式、算式或方程式等应编程排序号，并用“公式编辑器”进行编辑，序号标注于该式所在行（当有续行时，应标注于最后一行）的最右边。

% 第六点 ----- 
	% 注：报告中对某一问题、概念、观点等的简单解释、说明、评价、提示等，如不宜在正文中出现，可采用加注的形式。 
	% 注应编排序号，注的序号以同一页内出现的先后次序单独排序，用①、②、③……依次标示在需加注处，以上标形式表示。
	% 注的说明文字以序号开头。注的具体说明文字列于同一页内的下端，与正文之间用一左对齐、占页面1/4宽长度的横线分隔。

% \RequirePackage[perpage]{footmisc}                                   %-- 让脚注每页清零编号
% \RequirePackage{pifont}                                              %-- 提供一些奇奇怪怪的宏包
%	\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}   %-- 将脚注标号修改为带圈的数字

%------------------------------------------------主体部分------------------------------------------------%
%========================================================================================================%


%========================================================================================================%
%------------------------------------------结论、致谢、参考文献-------------------------------------------%

% 第一点 ----- 
	% 结论或结果：报告的结论或结果是最终的、总体的结论，结论应该准确、完整、明确、精练。

\newenvironment{conclusion}{                     %-- 创建一个结论的环境
	\addcontentsline{toc}{section}{结 \quad 论}  %-- 将结论手动加入目录
	\section*{\heiti\zihao{-2}{结 \quad 论}}     %-- 将结论作为不带编号的section，解决缩进问题。
\thispagestyle{fancy}                            %-- 设置结论的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
	\fancyhead[CE]{\zihao{-5}\cdut}
	\fancyhead[CO]{\zihao{-5}结论}
	\fancyfoot[c]{\zihao{-5}\thepage}
}{\newpage }

% 第二点 ----- 
	% 致谢：报告作者应该在本部分对指导老师、在完成报告任务全过程中给予指导和帮助的其他个人或单位、项目等进行致谢。

\newenvironment{mythanks}{                       %-- 创建一个致谢的环境
	\addcontentsline{toc}{section}{致 \quad 谢}  %-- 将致谢手动加入目录
	\section*{\heiti\zihao{-2}{致 \quad 谢}}     %-- 将致谢作为不带编号的section，解决缩进问题。
\thispagestyle{fancy}                            %-- 设置致谢的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
	\fancyhead[CE]{\zihao{-5}\cdut}
	\fancyhead[CO]{\zihao{-5}致谢}
	\fancyfoot[c]{\zihao{-5}\thepage}
}{\newpage }

% 第三点 ----- 
	% 参考文献：参考文献应是报告作者写作过程中确实参考过的文献。引用的中外文资料，不得少于10篇，其中外文文献一般应超过1/3。参考文献应具有权威性，要注意引用最新的文献，避免二次参考。
	% 参考文献以文献在整个报告中出现的次序用[1]、[2]、[3]……形式统一排序、依次列出，采用上标方式标注，例如：“刘飞等[2]提出管理信息化是…”。

\newenvironment{reference}{                     %-- 创建一个参考文献的环境
	\addcontentsline{toc}{section}{参考文献}    %-- 将参考文献手动加入目录
	\section*{\heiti\zihao{-2}{参考文献}}       %-- 将参考文献作为不带编号的section，解决缩进问题。
\thispagestyle{fancy}                           %-- 参考文献的页眉页脚（根据它所在的奇偶页自动生成相应的页眉）
	\fancyhead[CE]{\zihao{-5}\cdut}
	\fancyhead[CO]{\zihao{-5}参考文献}
	\fancyfoot[c]{\zihao{-5}\thepage}
}{\newpage }

%------------------------------------------结论、致谢、参考文献-------------------------------------------%
%========================================================================================================%

%------计算

\newenvironment{boxjisuan}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=black!2!white,boxrule=0pt,frame hidden,
 borderline west={1.5mm}{-2mm}{black!20!white}]}
{\end{tcolorbox}}
\newenvironment{calculating}{\begin{boxjisuan}}{\end{boxjisuan}}

%------计算


%
%   ---附录格式定制
% 
%\RequirePackage{appendix}



% 测试
%\RequirePackage{tocloft}


