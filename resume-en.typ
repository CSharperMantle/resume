#import "@preview/fontawesome:0.6.0": *
#import "@preview/linguify:0.5.0": *

#set text(
  size: 11pt,
)

#let large-v-skip() = v(1em)

#let small-v-skip() = v(0.5em)

#show link: it => {
  underline(it)
}

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

#set page(margin: (x: 0.9cm, y: 1.3cm))

#set par(justify: true)

#let skill-header(body) = {
  text(size: 1.2em, strong(body))
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
  text("Last updated " + date, fill: color.gray)
}

#set document(
  title: [Resume: Rong Bao],
  author: (
    "Rong Bao <me@csmantle.top>"
  ),
)

= Rong Bao

#continues-cv-page()

he/him | #link("mailto:me@csmantle.top")[me\@csmantle.top] |
#link("https://github.com/CSharperMantle")[github.com/CSharperMantle] | #link("https://csmantle.top")[csmantle.top]

#large-v-skip()

== #fa-icon("school") Education

*Hangzhou Dianzi University, China* #h(1fr) 2023/09 -- \
Computer Science, Zhuoyue Honors School \

#large-v-skip()

== #fa-icon("lightbulb") Skills

#skill-header[Computer systems] \
Experienced with x86 ISA and assembly-level development, familiar with RISC-style ISAs, and has hands-on experience with RISC-V and LoongArch micro-architectural implementations. \
- #link("https://ysyx.oscc.cc/en/")["One Student, One Chip" Program], Cohort 6, Group B (former). Student ID: 23060288. (#link("https://docs.qq.com/sheet/DWmR1dHJ5eUZkaUpW")[log], #link("https://github.com/CSharperMantle/ics2023")[repo]) #h(1fr) 2024 -- 2025
- #link("https://www.nscscc.com/?p=794")[NSCSCC 2025] CPU Designing Contest "Loongson Cup" *Team Third Prize* #h(1fr) 2025/08\

#small-v-skip()

#skill-header[Infosec] \
Skilled in reverse engineering, binary vulnerability analysis, and embedded systems security. Have experience with software development and analysis on multiple architectures, including x86-64, AArch64, LA64 and RV64. \
- #link("https://ctftime.org/event/2276")[D#super[3]CTF 2024] *RE Challenges Writer* #h(1fr) 2024/04
- #link("http://www.ciscn.cn/announcement/view/357")[17th National Collegiate Infosec Competition] #sym.dot.c *Team Third Prize* #h(1fr) 2024/07
- #link("https://flare-on.com/2024.html#:~:text=Rong%20Bao")[Google Cloud FLARE-On 11] Reverse Engineering Challenge *Finisher \#168* #h(1fr) 2024/09
- #link("https://oss.moocollege.com/26024/edit/m44by2cO_1731295461010.pdf")[6th Zhejiang Provincial Collegiate Infosec Competition] #sym.dot.c *Team First Prize* #h(1fr) 2024/11
- #link("https://oss.moocollege.com/28179/edit/XTTyoK8C_1764054076954.pdf")[7th Zhejiang Provincial Collegiate Infosec Competition] #sym.dot.c *Team First Prize* #h(1fr) 2025/11
- #link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14330")[CVE-2025-14330] *Reporter & Assignee*, #link("https://www.mozilla.org/en-US/security/advisories/mfsa2025-92/#CVE-2025-14324")[CVE-2025-14324] *Assignee* #h(1fr) 2025/12

#small-v-skip()

#skill-header[Development] \
- Polyglot developer with proficiency in C, Rust, TypeScript, and several other languages for application and low-level development.
- Experienced with the Git VCS and its ecosystem. Familiar with modern open-source collaboration workflows.

#small-v-skip()

#skill-header[Misc.] \
- CET-6: 667. *TOEFL iBT: 117*. #h(1fr) 2024 -- 2025
- Strong self-learning, research, and teamwork skills.

#large-v-skip()

== #fa-icon("code-fork") Open-Source Contributions

#link("https://github.com/mozilla-firefox/firefox")[*Mozilla Firefox*] -- C++, Python \
- Participated in #link("https://summer-ospp.ac.cn/org/prodetail/25f3e0428")[Open Source Promotion Plan 2025] as a mentee. #h(1fr) 2025/07 -- 2025/10 \
- Resurrected the RV64 JIT backend with improvements to test pass rate and performance. #h(1fr) 2025/07 -- \
- Granted #link("https://bugzil.la/2020656")[Level 3 Commit Access] as an active contributor. #h(1fr) 2026/03 \
- Currently #link("https://bugzil.la/2023167")[porting the Gecko Profiler to LA64 and RV64]. #h(1fr) 2026/03 --

#small-v-skip()

#link("github.com/llvm/llvm-project/")[*The LLVM Project*] -- C++, Assembly \
- #link("https://github.com/llvm/llvm-project/pull/195595")[Implemented] LoongArch stack clash protection and #link("https://github.com/llvm/llvm-project/pull/195456")[fixed] that of RISC-V #h(1fr) 2026/05

#small-v-skip()

#link("https://aosc.io/")[*Anthon Open Source Community*] -- Shell Script \
Maintained multiple Mozilla, VCS, and sysadmin packages and patches. #h(1fr) 2025/09 --

#small-v-skip()

#link("https://gitlab.com/surfer-project/surfer")[*surfer-project/surfer*] -- Rust \
Implemented the decoder of LoongArch64 ISA Volume 1 for Surfer, a FOSS waveform viewer. #h(1fr) 2025/04 -- 2025/05

#small-v-skip()

#link("https://github.com/CSharperMantle/binja_arch_catbert")[*CSharperMantle/binja_arch_catbert*] -- Python, Assembly, Binary Ninja LLIL \
Bytecode lifter for a custom stack machine (Catbert VM) written for Binary Ninja. #h(1fr) 2024/11

#small-v-skip()

#link("https://github.com/users/CSharperMantle/achievements/mars-2020-contributor")[*GitHub Mars 2020 Contributor*] #h(1fr) 2021/04
