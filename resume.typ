#import "@preview/fontawesome:0.5.0": *
#import "@preview/linguify:0.4.2": *
#import "@preview/cuti:0.2.1": show-cn-fakebold

#show: show-cn-fakebold

#set text(
  size: 11pt,
  font: (
    (name: "Noto Serif", covers: "latin-in-cjk"),
    "Noto Serif SC",
  ),
)

#show link: it => {
  [ #it #fa-icon("arrow-up-right-from-square") ]
}

#show heading.where(depth: 1): set text(size: 18pt)

#set page(margin: (x: 0.9cm, y: 1.3cm))

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

#let continues-cv-page() = {
  place(
    bottom + center,
    dx: 0pt, // Horizontal offset (positive is rightward)
    dy: -10pt, // Vertical offset (positive moves upwards)
    float: true,
    scope: "parent",
    [
      #text(fill: gray)[... continues on the next page ...]
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
    "Rong Bao <webmaster@csmantle.top>"
  ),
)

= 鲍溶

#link("mailto:rong.bao@hdu.edu.cn")[rong.bao\@hdu.edu.cn] |
#link("https://github.com/CSharperMantle")[github.com/CSharperMantle] | #link("https://csmantle.top")[csmantle.top]

#v(1em)

== #fa-icon("school") 教育经历
#chiline()

*杭州电子科技大学* #h(1fr) 2023/09 -- 至今 \
卓越学院，计算机科学英才班 \

#v(1em)

== #fa-icon("lightbulb") 个人技能
#chiline()

*体系结构* \
对 x86 ISA 与汇编级开发有一定经验，对 RISC 风格 ISA 有一定了解，有 RISC-V 与 LoongArch 微架构实现经验。 \
- #link("https://www.nscscc.com/?p=794")[NSCSCC 2025] “龙芯杯” *团队赛三等奖* #h(1fr) 2025/08\
- 第六期“一生一芯” B 组学员，学号：23060288。（#link("https://docs.qq.com/sheet/DWmR1dHJ5eUZkaUpW")[学习记录]，#link("https://github.com/CSharperMantle/ics2023")[代码仓库]） #h(1fr) 2024/04 -- 至今

#v(1em)

*网络安全* \
有一定逆向工程、二进制漏洞分析、嵌入式安全能力，较为熟悉 x86、ARM、RISC-V 与多种嵌入式平台的编程与软件分析。 \
- #link("https://ctftime.org/event/2276")[D#super[3]CTF 2024] *RE 方向赛题命制* #h(1fr) 2024/04
- #link("http://www.ciscn.cn/announcement/view/357")[第十七届全国大学生信息安全竞赛] #sym.dot.c 创新实践能力赛 *团队三等奖* #h(1fr) 2024/07
- #link("https://web.archive.org/web/20250419072500/https://flare-on11.ctfd.io/scoreboard")[Google Cloud FLARE-On 11] Reverse Engineering Challenge *Finisher \#168* #h(1fr) 2024/09
- #link("https://oss.moocollege.com/26024/edit/m44by2cO_1731295461010.pdf")[第七届浙江省大学生网络与信息安全竞赛] #sym.dot.c 技能挑战赛 *团队一等奖* #h(1fr) 2024/11

#v(1em)

*应用开发* \
- Polyglot，能够使用 C/Rust/TypeScript 等多种语言进行底层与上层应用开发；
- 具有一定全栈和系统开发能力；
- 有使用 Git 与邮件列表进行协作的经验，较为熟悉现代开源项目常见在线协作流程。

#v(1em)

*其他* \
- CET6 667 分、TOEFL iBT 117 分。 #h(1fr) 2024 -- 2025
- 较强的学习能力、检索能力和团队沟通能力。

#v(1em)

== #fa-icon("code-fork") 开源贡献经历
#chiline()

*#link("https://spidermonkey.dev/")[SpiderMonkey]* -- C++ 等 #h(1fr) 2025/07 -- 至今 \
SpiderMonkey RISC-V JIT 与附属项目活跃维护者。 #h(1fr) 贡献者 \
- #link("https://summer-ospp.ac.cn/org/prodetail/25f3e0428")[OSPP 2025 项目]：作为学生中选并参与项目。\
- #link("https://bugzilla.mozilla.org/buglist.cgi?query_format=advanced&emailtype1=exact&emailreporter1=1&email1=webmaster%40csmantle.top")[Bugzilla]、#link("https://phabricator.services.mozilla.com/people/revisions/6530/")[Phabricator]：维护 RV64 JIT，使测试通过率达到与 x86 等一级架构同等水平。\
- #link("https://github.com/plctlab/riscv-ci/pulls?q=is%3Apr+author%3ACSharperMantle")[plctlab/riscv-ci PR]：维护并重新上线 PLCT Lab SpiderMonkey CI。

*#link("https://gitlab.com/surfer-project/surfer")[surfer-project/surfer]* -- Rust #h(1fr) 2025/04 -- 2025/05 \
为开源波形查看器 Surfer 实现目前已稳定公开的 LoongArch64 ISA 子集的解码功能。 #h(1fr) 贡献者
- ics-jku/instruction-decoder #link("https://github.com/ics-jku/instruction-decoder/pull/32")[\#32]、#link("https://github.com/ics-jku/instruction-decoder/pull/33")[\#33]：实现 LA64 反汇编器与相关测试。 #h(1fr) 2024/04
- #link("https://gitlab.com/surfer-project/surfer/-/merge_requests/644")[surfer-project/surfer!644]： 将解码器合并到 Surfer 主分支。 #h(1fr) 2024/05

*#link("https://github.com/CSharperMantle/binja_arch_catbert")[CSharperMantle/binja_arch_catbert]* -- Python | Assembly, BN LLIL #h(1fr) 2024/11 \
将一种自定义栈机 (Catbert VM) 字节码提升至中间表示并反编译的插件，适用于 Binary Ninja 框架。 #h(1fr) 作者

*#link("https://github.com/users/CSharperMantle/achievements/mars-2020-contributor")[GitHub Mars 2020 Contributor]* #h(1fr) 2021/04
