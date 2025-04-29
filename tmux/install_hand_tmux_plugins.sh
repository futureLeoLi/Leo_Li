#!/bin/bash

set -e

echo ">>> 开始安装 tmux 插件管理器 (TPM)..."

# 确保 tmux 已安装
if ! command -v tmux &> /dev/null; then
    echo "tmux 未安装，请先安装 tmux。"
    exit 1
fi

# 下载并解压 tpm
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo ">>> 下载 tpm ZIP 包..."
    mkdir -p ~/.tmux/plugins/tpm
    curl -L https://github.com/tmux-plugins/tpm/archive/refs/heads/master.zip -o /tmp/tpm.zip
    unzip /tmp/tpm.zip -d /tmp/
    mv /tmp/tpm-master/* ~/.tmux/plugins/tpm/
    echo "TPM 安装完成。"
else
    echo "TPM 已存在，跳过克隆。"
fi

# 提示安装插件
echo ">>> 请进入 tmux 后按 Ctrl+a 再按 I （大写i）来自动安装插件。"

echo ">>> 安装脚本执行完毕！记得在 tmux 中按 Ctrl+a 再按 I 安装插件哦！"

