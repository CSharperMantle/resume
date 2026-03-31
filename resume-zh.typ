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

#show link: it => {
  [
    #it#super(
      typographic: true,
      baseline: auto,
      size: 0.5em,
      [#fa-icon("arrow-up-right-from-square")]
    )
  ]
}

#show heading.where(depth: 1): set text(size: 18pt)

#show heading.where(level: 2): set block(above: 1em, below: 0.5em)

#set page(margin: (x: 0.9cm, y: 1.3cm))

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

#let skill-header(body) = {
  text(size: 1.1em)[#underline(evade: false)[#body]]
}

#let large-v-skip() = v(0em)

#let small-v-skip() = v(0.1em)

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
    "Rong Bao <me@csmantle.top>"
  ),
)

= 鲍溶

#link("mailto:me@csmantle.top")[me\@csmantle.top] |
#link("https://github.com/CSharperMantle")[github.com/CSharperMantle] | #link("https://csmantle.top")[csmantle.top]

#large-v-skip()

== #fa-icon("school") 教育经历
#chiline()

*杭州电子科技大学* #h(1fr) 2023/09 -- \
卓越学院，计算机科学英才班 \

#large-v-skip()

== #fa-icon("lightbulb") 个人技能
#chiline()

#skill-header[体系结构] \
对 x86 ISA 与汇编级开发有一定经验，对 RISC 风格 ISA 有一定了解，有 RISC-V 与 LoongArch 微架构实现经验。 \
- 第六期“一生一芯” B 组学员，学号：23060288。（#link("https://docs.qq.com/sheet/DWmR1dHJ5eUZkaUpW")[学习记录]，#link("https://github.com/CSharperMantle/ics2023")[代码仓库]） #h(1fr) 2024 -- 2025
- #link("https://www.nscscc.com/?p=794")[NSCSCC 2025] “龙芯杯” *团队赛三等奖* #h(1fr) 2025/08\

#small-v-skip()

#skill-header[网络安全] \
有一定逆向工程、二进制漏洞分析、嵌入式安全能力，较为熟悉 x86、ARM/AArch64、RISC-V 与多种嵌入式平台的编程与软件分析。 \
- #link("https://ctftime.org/event/2276")[D#super[3]CTF 2024] *逆向工程方向赛题命制* #h(1fr) 2024/04
- #link("http://www.ciscn.cn/announcement/view/357")[第十七届全国大学生信息安全竞赛] #sym.dot.c 创新实践能力赛 *团队三等奖* #h(1fr) 2024/07
- #link("https://flare-on.com/2024.html#:~:text=Rong%20Bao")[Google Cloud FLARE-On 11] Reverse Engineering Challenge *Finisher \#168* #h(1fr) 2024/09
- #link("https://oss.moocollege.com/26024/edit/m44by2cO_1731295461010.pdf")[第七届浙江省大学生网络与信息安全竞赛] #sym.dot.c 技能挑战赛 *团队一等奖* #h(1fr) 2024/11
- #link("https://oss.moocollege.com/28179/edit/XTTyoK8C_1764054076954.pdf")[第八届浙江省大学生网络与信息安全竞赛] #sym.dot.c 技能挑战赛 *团队一等奖* #h(1fr) 2025/11
- #link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14330")[CVE-2025-14330] *发现者、修复者*，#link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14324")[CVE-2025-14324] *修复者* #h(1fr) 2025/12

#small-v-skip()

#skill-header[应用开发] \
- Polyglot，能够使用 C/Rust/TypeScript 等多种语言进行应用开发；
- 具有一定全栈和系统开发能力；
- 有使用 Git/Jujutsu、GitHub/Phabricator/邮件列表等工具进行协作的经验，较为熟悉现代开源项目常见在线协作流程。

#small-v-skip()

#skill-header[其他] \
- CET6 667 分，*TOEFL iBT 117 分*； #h(1fr) 2024 -- 2025
- 较强的学习能力、检索能力和团队合作能力。

#large-v-skip()

== #fa-icon("code-fork") 开源贡献经历
#chiline()

#link("https://github.com/mozilla-firefox/firefox")[#underline[Mozilla Firefox]] -- C++、Python 等 \
- 作为学生参与 #link("https://summer-ospp.ac.cn/org/prodetail/25f3e0428")[OSPP 2025 项目]； #h(1fr) 2025/07 -- 2025/10 \
- 修缮维护 RV64 JIT 后端，显著提升测试通过率，并引入多项性能改进； #h(1fr) 2025/07 -- \
- 作为活跃维护者获得 #link("https://bugzil.la/2020656")[Level 3 Commit Access] *核心产品权限*； #h(1fr) 2026/03 \
- 积极实现移植 #link("https://bugzil.la/2023167")[Gecko Profiler 至 LoongArch64 与 RISC-V 平台]。#h(1fr) 2026/03 --

#small-v-skip()

#link("https://aosc.io/")[#underline[Anthon Open Source Community]] -- Shell Script \
负责多个 Mozilla、版本管理、系统管理软件包的补丁与打包工作。 #h(1fr) 2025/09 --

#small-v-skip()

#link("https://gitlab.com/surfer-project/surfer")[#underline[surfer-project/surfer]] -- Rust \
为开源波形查看器 Surfer 实现目前已稳定公开的 LoongArch64 ISA 第一卷的解码功能。#h(1fr) 2025/04 -- 2025/05

#small-v-skip()

#link("https://github.com/CSharperMantle/binja_arch_catbert")[#underline[CSharperMantle/binja_arch_catbert]] -- Python、汇编语言、BN LLIL \
将一种自定义栈机（Catbert VM）字节码提升至中间表示并反编译。 #h(1fr) 2024/11

#small-v-skip()

#link("https://github.com/users/CSharperMantle/achievements/mars-2020-contributor")[#underline[GitHub Mars 2020 Contributor]] #h(1fr) 2021/04
