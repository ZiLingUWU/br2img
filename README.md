# br2img Android ROM .br to .img

# br2img

一个 Windows 批处理工具，用于将 Android ROM 中的 `system.new.dat.br` 和 `vendor.new.dat.br` 文件转换为 `system.img` 和 `vendor.img` 镜像文件。

---

## 功能

- 解压 `.br` 文件（Brotli 压缩格式）
- 将 `.dat` 文件转换为 ext4 格式的 `.img` 镜像
- 支持 system 和 vendor 分区

---

## 使用方法

### 1. 安装 Python

双击运行 `python-3.14.4-amd64.exe`，安装时**务必勾选** `Add Python to PATH`

### 2. 准备文件

确保以下文件在同一目录：

| 文件名 | 说明 |
| :--- | :--- |
| `br2img.bat` | 主脚本 |
| `brotli.exe` | Brotli 解压工具 |
| `sdat2img.py` | 转换脚本 |
| `system.new.dat.br` | ROM 系统分区文件 |
| `system.transfer.list` | ROM 分区描述文件 |
| `vendor.new.dat.br` | ROM 厂商分区文件（可选） |
| `vendor.transfer.list` | ROM 分区描述文件（可选） |

### 3. 运行脚本

右键 `br2img.bat` → **以管理员身份运行**

### 4. 完成

等待转换完成，输出文件：
- `system.img`
- `vendor.img`

---

## 目录结构示例
C:\ROM_Work
├── br2img.bat
├── brotli.exe
├── sdat2img.py
├── python-3.14.4-amd64.exe
├── system.new.dat.br
├── system.transfer.list
├── vendor.new.dat.br
├── vendor.transfer.list
└── README.md

text

---

## 常见问题

### Q: 提示 "python 不是内部命令"
**A:** 安装 Python 并勾选 `Add Python to PATH`，然后重新打开命令行

### Q: 提示 "brotli.exe not found"
**A:** 确保 `brotli.exe` 在脚本同目录下

### Q: 提示需要管理员权限
**A:** 脚本会自动请求，点击"是"即可

### Q: 转换后的 .img 文件如何打开？
**A:** 使用 7-Zip 直接解压，或使用 ImDisk Toolkit 挂载

---

## 依赖工具来源

| 工具 | 来源 |
| :--- | :--- |
| `brotli.exe` | [Google brotli](https://github.com/google/brotli) |
| `sdat2img.py` | [xpirt/sdat2img](https://github.com/xpirt/sdat2img) |
| `Python` | [python.org](https://python.org) |

---

## 致谢 / Credits

本工具包含以下第三方项目：

- **Python**：从 [python.org](https://python.org) 下载安装

- **sdat2img.py** - 由 [xpirt](https://github.com/xpirt) 编写
  - 项目地址：https://github.com/xpirt/sdat2img
  
- **brotli.exe** - Google Brotli 压缩工具
  - 项目地址：https://github.com/google/brotli

---

## 作者

**Applepointer**

版本 / Version : 1.0
日期 / Date    : 2026-04-22
