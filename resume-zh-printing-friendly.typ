#import "@preview/fontawesome:0.6.0": *
#import "@preview/linguify:0.5.0": *
#import "@preview/cuti:0.4.0": show-cn-fakebold

#show: show-cn-fakebold

#set text(
  size: 11pt,
  font: (
    (name: "Noto Serif CJK SC", covers: "latin-in-cjk"),
    "Source Han Serif",
    "STZhongsong",
  ),
)

#let large-v-skip() = v(1em)

#let small-v-skip() = v(0.5em)

#show heading.where(depth: 1): it => {
  set text(size: 20pt)
  it
}

#show heading.where(level: 2): it => {
  set text(size: 1.2em)
  set block(above: 1em, below: 0.5em)
  it
  v(-7pt)
  line(length: 100%)
  v(0.25em)
}

#set page(margin: (x: 1.5cm, y: 1.5cm))

#set par(justify: true)

#let skill-header(body) = {
  text(size: 1.1em, strong(body))
}

#let continues-cv-page() = {
  place(
    bottom + center,
    dx: 0pt, // Horizontal offset (positive is rightward)
    dy: -10pt, // Vertical offset (positive moves upwards)
    float: true,
    scope: "parent",
    [
      #text(fill: gray)[... 接下页 ...]
    ],
  )
}

#let last-updated(date) = {
  h(1fr)
  text("更新于 " + date, fill: color.gray)
}

#set document(
  title: [鲍溶-简历],
  author: (
    "Rong Bao <me@csmantle.top>"
  ),
)

= 鲍溶

#continues-cv-page()

#link("mailto:me@csmantle.top")[me\@csmantle.top] | #link("https://csmantle.top")[csmantle.top] | #fa-icon("github")
#link("https://github.com/CSharperMantle")[github.com/CSharperMantle] | #fa-icon("linkedin") #link("https://www.linkedin.com/in/rong-bao-a9931a336")[in/rong-bao-a9931a336]

#large-v-skip()

== #fa-icon("school") 教育经历

*杭州电子科技大学* #h(1fr) 2023/09-- \
卓越学院，计算机科学英才班 \

#large-v-skip()

== #fa-icon("lightbulb") 个人技能

#skill-header[计算机系统] \
对 x86 ISA 与汇编级开发有一定经验，对 RISC 风格 ISA 与其代码生成、机器相关优化有一定了解，有 RISC-V 与 LoongArch 微架构实现经验。
- 前第六期“一生一芯” B 组学员，学号：23060288 #h(1fr) 2024--2025
- #link("https://www.nscscc.com/?p=794")[NSCSCC 2025] CPU 设计赛“龙芯杯” *团队赛三等奖* #h(1fr) 2025/08
- #link("https://gitlab.eduxiji.net/csc1/nscscc/compiler2026/-/blob/1bef5268578fdccef4e60c87dda18ac17b09db4c/2026%E5%B9%B4%E5%85%A8%E5%9B%BD%E5%A4%A7%E5%AD%A6%E7%94%9F%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%B3%BB%E7%BB%9F%E8%83%BD%E5%8A%9B%E5%A4%A7%E8%B5%9B%E7%BC%96%E8%AF%91%E7%B3%BB%E7%BB%9F%E8%AE%BE%E8%AE%A1%E8%B5%9B_%E5%8D%8E%E4%B8%BA%E6%AF%95%E6%98%87%E6%9D%AF_%E5%85%A8%E5%9B%BD%E6%80%BB%E5%86%B3%E8%B5%9B%E8%8E%B7%E5%A5%96%E5%90%8D%E5%8D%95%E5%85%AC%E7%A4%BA-2026.8.22.pdf")[NSCSCC 2026] 编译系统设计赛“毕昇杯”挑战赛道 *二等奖* #h(1fr) 2026/08

#small-v-skip()

#skill-header[信息安全] \
有一定逆向工程、二进制漏洞分析、嵌入式安全能力，较为熟悉 x86、龙架构、RISC-V 与多种嵌入式平台的编程与软件分析。
- #link("https://ctftime.org/event/2276")[D#super[3]CTF 2024] 逆向工程方向*赛题命制* #h(1fr) 2024/04
- #link("http://www.ciscn.cn/announcement/view/357")[第十七届全国大学生信息安全竞赛] #sym.dot.c 创新实践能力赛 *团队三等奖* #h(1fr) 2024/07
- #link("https://flare-on.com/2024.html#:~:text=Rong%20Bao")[FLARE-On 11] Reverse Engineering Challenge *Finisher \#168* #h(1fr) 2024/09
- #link("https://oss.moocollege.com/26024/edit/m44by2cO_1731295461010.pdf")[第七届浙江省大学生网络与信息安全竞赛] #sym.dot.c 技能挑战赛 *团队一等奖* #h(1fr) 2024/11
- #link("https://oss.moocollege.com/28179/edit/XTTyoK8C_1764054076954.pdf")[第八届浙江省大学生网络与信息安全竞赛] #sym.dot.c 技能挑战赛 *团队一等奖* #h(1fr) 2025/11
- #link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14330")[CVE-2025-14330] *发现者、修复者*，#link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14324")[CVE-2025-14324] *修复者* #h(1fr) 2025/12

#small-v-skip()

#skill-header[应用开发]
- Polyglot，能够使用 C/Rust/TypeScript 等多种语言进行应用开发
- 具有一定全栈和系统开发能力
- 有使用 Git/Jujutsu、GitHub/Phabricator/邮件列表等工具进行协作的经验，较为熟悉现代开源项目常见在线协作流程

#small-v-skip()

#skill-header[其他]
- CET6 667 分，*TOEFL iBT 117 分* #h(1fr) 2024--2025
- 2024--2025 学年*浙江省政府奖学金* #h(1fr) 2025/12
- 较强的学习能力、检索能力和团队合作能力

#large-v-skip()

== #fa-icon("code-fork") 开源贡献

#link("https://summer-ospp.ac.cn/")[*开源之夏（OSPP）2025*] --- C++ \
作为#link("https://aosc.io/about")[安同开源社区]学员成功结项。 \
- #link("https://summer-ospp.ac.cn/org/prodetail/25f3e0428")[复活] SpiderMonkey RV64 JIT 后端 #h(1fr) 2025/07--2025/10
- 维护包括 Mozilla 家族、版本控制、系统管理等多个类别软件的打包流程与补丁集 #h(1fr) 2025/09--

#small-v-skip()

#link("https://github.com/mozilla-firefox/firefox")[*Mozilla Firefox*] --- C++、Python 等 \
SpiderMonkey {riscv,loong}64 JIT 编译器后端维护者。
- 作为活跃贡献者获得 #link("https://bugzil.la/2020656")[Level 3 Commit Access] 权限 #h(1fr) 2026/03
- 进行中工作：#link("https://bugzil.la/2023167")[移植 Gecko Profiler 至 LA64 与 RV64 平台] #h(1fr) 2026/03--

#small-v-skip()

#link("https://github.com/llvm/llvm-project/")[*The LLVM Project*] --- C++、汇编语言等
- #link("https://github.com/llvm/llvm-project/pull/195595")[实现了] LoongArch 上的栈冲突保护（SCP）功能 #h(1fr) 2026/05
- #link("https://github.com/llvm/llvm-project/pull/195456")[修复了] RISC-V 上 SCP 中的一处代码生成错误 #h(1fr) 2026/05
- #link("https://github.com/llvm/llvm-project/pull/206321")[发现]、#link("https://github.com/llvm/llvm-project/pull/196940")[修复]了 LoongArch 后端与 LLD 中的若干重定位处理错误 #h(1fr) 2026/05--2026/07

#small-v-skip()

#link("https://www.kernel.org/")[*The Linux Kernel*] --- C
- #link("https://lore.kernel.org/loongarch/20260704135932.4072912-1-rong.bao@csmantle.top/")[报告]了 LoongArch 平台上处理器 Package ID 回显错误的问题 #h(1fr) 2026/01
- #link("https://lore.kernel.org/loongarch/20260413100412.2313688-1-rong.bao@csmantle.top/")[修复]了 LoongArch 上 perf(1) 中的一个无效 free 错误 #h(1fr) 2026/04

#small-v-skip()

#link("https://github.com/CSharperMantle/loonglint")[*CSharperMantle/loonglint*] --- C++ \
实现了一种基于 LLVM 的 LoongArch 二进制窥孔优化工具，用于发现常见的待优化指令模式。该工具已应用于 SpiderMonkey、LLVM/Clang 等编译系统的开发与调优中。#h(1fr) 2026/08

#small-v-skip()

#link("https://github.com/CSharperMantle/valgrind-loongarch64")[*CSharperMantle/valgrind-loongarch64*] --- C \
为前人的 Valgrind LoongArch 移植版本新增了 SIMD 扩展（LSX）与高级 SIMD 扩展（LASX）指令的解析、插桩与审计功能。 #h(1fr) 2026/01

#small-v-skip()

#link("https://gitlab.com/surfer-project/surfer")[*surfer-project/surfer*] --- Rust \
为开源波形查看器 Surfer 实现了《龙芯架构参考手册·卷一》中所有指令的解码器。#h(1fr) 2025/04--2025/05

#small-v-skip()

#link("https://github.com/CSharperMantle/binja_arch_catbert")[*CSharperMantle/binja_arch_catbert*] --- Python、汇编语言、BN LLIL \
为 Binary Ninja 实现了一种栈机（Catbert VM）的字节码提升功能。 #h(1fr) 2024/11

#small-v-skip()

#link("https://github.com/CSharperMantle/periotrisjs")[*CSharperMantle/periotrisjs*] --- TypeScript、React \
编写了一款俄罗斯方块游戏，用于辅助元素周期表的记忆与学习。 #h(1fr) 2021/07

#small-v-skip()

#link("https://github.com/users/CSharperMantle/achievements/mars-2020-contributor")[*GitHub Mars 2020 Contributor*] #h(1fr) 2021/04
