# 通知：等通知

效果预览：

|北邮版|北师大版|
|---|---|
|![BUPT classic](https://github.com/cppHusky/notice-waiting-for-notice/releases/download/BUPT/classic.png)|![BNU classic](https://github.com/cppHusky/notice-waiting-for-notice/releases/download/BNU/classic.png)|

## 如何编辑

本项目使用 Typst 语言生成目标图片。有关语法参见[文档](https://typst.app/docs/)。

除 `fonts` 目录保存了必需的字体外，根目录下的每个子目录代表一个学校。

你需要做以下工作：

+ 准备一张大小合适的信纸，命名为 `background.png`（或其它支持的后缀名）；
+ 建立若干个 typst 文件，以便生成你期待的目标图片；
+ 编写 makefile，以便其他人编译运行和修改。

## 如何编译

编译需要以下依赖：

- [GNU Make](https://www.gnu.org/software/make/)
- [Typst CLI](https://typst.app/)

打开某一学校所在的目录，运行如下命令：

```sh
make
```

即可得到若干 png 文件，如 `classic.png`。

## 如何自动更新

本项目使用 GitHub Actions 进行自动更新，每日更新一次落款日期，以便各位及时使用最新通知。

相关的自动更新逻辑已写在 [.github/workflows/daily-update.yaml](./.github/workflows/dayly-update.yaml) 中，`jobs/build-and-release/strategy/matrix/include` 项中列出了会进行自动更新的条目，请注意这些条目的名字必须与根目录下代表学校的文件夹保持一致。

## 如何贡献

+ [Fork 本项目](https://github.com/cppHusky/notice-waiting-for-notice/fork)。
+ 修改现有目录下的文件，或创建一个新目录。你可以从零开始，或者拷贝已有目录，在此基础上修改。注意，如果你希望目标文件能够自动更新，别忘了在 .github/workflows/dayly-update.yaml 中添加对应的目录。
+ 提交你的更改并创建 Pull Request。
+ 等通知。
