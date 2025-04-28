### 1. 生成 SSH 密钥

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### 2. 启动 SSH 代理并添加私钥

```bash
# 启动 SSH 代理
eval "$(ssh-agent -s)"

# 将私钥添加到 SSH 代理
ssh-add ~/.ssh/id_ed25519

```

### 3. 将公钥添加到 GitHub 账户
```bash
cat ~/.ssh/id_ed25519.pub

```


### 4. 配置本地 Git 环境
```bash
git config --global user.name "your_github_username"
git config --global user.email "your_email@example.com"

```

5. 使用 SSH 地址克隆仓库,提交代码

```bash

git clone git@github.com:futureLeoLi/Leo_Li.git


# 进入仓库目录
cd your_repository

# 添加修改的文件
git add .

# 提交修改
git commit -m "Your commit message"

# 推送到远程仓库
git push origin main

```


