# Latex 简历模板

## 效果

见 [exmple.pdf](./example.pdf)

## 字体问题

如果在 Linux 平台或者使用在线 Overleaf 遇到某些生僻字无法显示的话，可以到下面的百度网盘链接下载个人打包的 Win 11 中文字体，并解压到项目目录。

```text
链接: https://pan.baidu.com/s/1c33e2zYqta3YqwNVRMEPSQ
提取码: urk6
```

对 `resume.cls` 中取消默认字体设置，并导入字体配置（取消注释即可）

```latex
\LoadClass[
    UTF8,
    10pt,
    scheme=plain,
    fontset=none
]{ctexart}

\input{fontsettings.tex}
```
