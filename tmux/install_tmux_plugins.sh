#!/bin/bash

set -e

echo ">>> 开始安装 tmux 插件管理器 (TPM)..."

# 确保 tmux 已安装
if ! command -v tmux &> /dev/null; then
    echo "tmux 未安装，请先安装 tmux。"
    exit 1
fi

# 克隆 tpm
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "TPM 安装完成。"
else
    echo "TPM 已存在，跳过克隆。"
fi

# 提示安装插件
echo ">>> 请进入 tmux 后按 Ctrl+a 再按 I （大写i）来自动安装插件。"

# 自动进入 tmux 安装插件（可选）
# echo ">>> 尝试自动进入 tmux 安装插件..."
# tmux new-session -d -s temp_install "sleep 2; ~/.tmux/plugins/tpm/bin/install_plugins; tmux kill-session -t temp_install"

echo ">>> 安装脚本执行完毕！记得在 tmux 中按 Ctrl+a 再按 I 安装插件哦！"

