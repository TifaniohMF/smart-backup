# Smart Backup 🔒

A simple and efficient bash script to automatically create compressed archives of your important folders.

## 📋 Features

- ✅ Automatic compression in `.tar.gz` format
- ✅ Timestamped backups (format: `YYYY-MM-DD_HH-MM-SS`)
- ✅ Source directory existence verification
- ✅ Automatic destination directory creation
- ✅ Clear confirmation messages
- ✅ Robust error handling

## 📦 Installation

1. **Clone the repository**
```bash
git clone https://github.com/TifaniohMF/smart-backup.git
cd smart-backup
```

2. **Make the script executable**
```bash
chmod +x backup.sh
```

## 🚀 Usage

### Basic syntax
```bash
./backup.sh <folder-to-backup> <destination-folder>
```

### Examples

**Backup a personal folder**
```bash
./backup.sh ~/Documents ~/smart-backup/backups
```

**Backup a project**
```bash
./backup.sh /home/user/my-project ./backups
```

**Backup with absolute path**
```bash
./backup.sh /var/www/site /mnt/external-drive/backups
```

### Alternative execution methods
```bash
# Using bash
bash backup.sh ~/folder-to-save ~/smart-backup/backups

# Using sh
sh backup.sh ~/folder-to-save ~/smart-backup/backups
```

## 📁 Output

After execution, your archive will be created in the destination folder with the name:
```
backup_YYYY-MM-DD_HH-MM-SS.tar.gz
```

**Example**: `backup_2026-05-19_14-32-45.tar.gz`

## 🔧 Troubleshooting

| Issue | Solution |
|-------|----------|
| `Error: source folder not found` | Verify that the source folder path exists |
| `Permission denied` | Run `chmod +x backup.sh` or use `bash backup.sh` |
| `Error during backup` | Check available disk space and write permissions |

## 📚 Restoring a backup

```bash
# List archive contents
tar -tzf backup_2026-05-19_14-32-45.tar.gz

# Extract the archive
tar -xzf backup_2026-05-19_14-32-45.tar.gz
```

## 🤝 Contributing

Contributions are welcome! To propose improvements:
1. Create a branch (`git checkout -b feature/improvement`)
2. Commit your changes (`git commit -m 'Add: description'`)
3. Push your branch (`git push origin feature/improvement`)
4. Open a Pull Request

## 📄 License

This project is provided as-is. Free to use.