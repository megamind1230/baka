# method 1
using mobile as an FTP bridge between 2 machines on same wifi is slow AF
2 steps: pc1 -> mobile -> pc2


# others
The easiest way depends on whether the two computers are on the
**same network**. Since you're on Linux/Arch, the best options are:

## 1. `scp` — simple one-time transfer

On the **receiving computer**, find its IP:

```bash
ip addr
```

Then from the **sending computer**:

```bash
scp file.txt username@192.168.1.50:/home/username/
```

For a directory:

```bash
scp -r my-folder username@192.168.1.50:/home/username/
```

You need an SSH server running on the receiving computer:

```bash
sudo systemctl enable --now sshd
```

Then transfer:

```bash
scp -r ~/Documents/project username@RECEIVER_IP:~/Documents/
```

---

## 2. `rsync` — best for large folders / repeated transfers

```bash
rsync -avh --progress ~/Documents/project/ \
    username@192.168.1.50:~/Documents/project/
```

This is usually my recommendation because if the transfer is interrupted, you can run the command again and it only transfers what is missing or changed.

For example:

```bash
rsync -avh --progress ~/Videos/ \
    dt@192.168.1.50:~/Videos/
```

---

## 3. `sftp` — interactive file transfer

```bash
sftp username@192.168.1.50
```

Then:

```text
put file.txt
put -r folder/
get remote-file.txt
```

---

## 4. USB drive

For a large amount of data, a USB drive is often simplest:

```bash
cp -r ~/Documents/project /run/media/$USER/USB/
```

Or use `rsync`:

```bash
rsync -avh --progress ~/Documents/project/ /run/media/$USER/USB/project/
```

---

## My recommendation for you

For two Linux computers on the same Wi-Fi/LAN:

```bash
# Computer 2
sudo systemctl enable --now sshd

# Computer 1
rsync -avh --progress /path/to/files/ \
    username@COMPUTER_2_IP:/destination/path/
```

For example:

```bash
rsync -avh --progress ~/Projects/ \
    dt@192.168.1.42:~/Projects/
```

If you tell me **what operating systems the two computers use** and whether they're connected to the **same Wi-Fi**, I can give you the exact commands.


## Here are **10 free ways to transfer files between two computers**, ranging from simple to creative/technical:

### 1. `scp` over SSH — the classic

Best for quick transfers over LAN or the internet.

```bash
scp -r ~/folder user@192.168.1.20:~/destination/
```

**Good for:** Linux ↔ Linux, servers, one-off transfers.

---

### 2. `rsync` — smart incremental copying

Only transfers changed parts and can resume interrupted transfers.

```bash
rsync -avh --progress ~/Projects/ user@192.168.1.20:~/Projects/
```

**Good for:** huge folders, backups, repeated synchronization.

---

### 3. `SFTP` — browse another computer's files

Connect interactively:

```bash
sftp user@192.168.1.20
```

Then:

```text
put file.txt
get file.txt
put -r folder/
```

**Good for:** manually browsing and moving files.

---

### 4. Temporary HTTP server — extremely simple

On Computer A:

```bash
cd ~/Files
python -m http.server 8000
```

On Computer B, open:

```text
http://COMPUTER_A_IP:8000
```

You can download files from the browser.

**Creative use:** turn any folder into a temporary website.

---

### 5. Netcat — raw file transfer

On the receiving computer:

```bash
nc -l 9999 > file.zip
```

On the sending computer:

```bash
nc RECEIVER_IP 9999 < file.zip
```

**Good for:** understanding how raw network communication works.

⚠️ No encryption or authentication. Use only on a trusted network.

---

### 6. `tar` + SSH — stream a whole directory

You don't even need to create an archive file:

```bash
tar czf - my-folder/ | ssh user@192.168.1.20 'tar xzf -'
```

This compresses the folder, sends it through SSH, and extracts it remotely.

**Good for:** transferring entire projects efficiently.

---

### 7. Git — transfer projects with history

Computer A:

```bash
git init
git add .
git commit -m "Initial commit"
```

Then use a Git hosting service or a bare repository on Computer B.

Or directly:

```bash
git clone ssh://user@192.168.1.20/path/to/repo
```

**Good for:** source code, version history, collaboration.

---

### 8. Syncthing — automatic peer-to-peer synchronization

Install Syncthing on both computers and choose folders to synchronize.

Computer A:

```text
~/Documents
```

Computer B:

```text
~/Documents
```

Changes automatically propagate between both machines.

**Good for:** keeping two computers continuously synchronized without a central cloud server.

---

### 9. `magic-wormhole` — send files using a code

Install it on both machines, then:

Computer A:

```bash
wormhole send myfile.zip
```

It gives you a short code like:

```text
7-purple-elephant
```

Computer B:

```bash
wormhole receive
```

Enter the code.

**Good for:** transferring files between computers even when they're not on the same network.

Very cool because you don't need to know the IP address.

---

### 10. Build your own transfer system — the hacker way 🧙

For example, create a simple Bash command:

```bash
send() {
    rsync -avh --progress "$1" "dt@$2:~/Incoming/"
}
```

Then:

```bash
send ~/Videos/movie.mkv 192.168.1.20
```

Or create your own:

* TCP file transfer program in C#
* HTTP upload server with ASP.NET Core
* WebSocket file transfer
* encrypted file transfer using AES
* P2P file sharing system
* QR code containing a temporary download URL
* terminal UI with `fzf` to select files
* `rofi` file picker + `rsync`

For example, you could make:

```text
[ Select files with fzf ]
          ↓
[ Compress them ]
          ↓
[ Encrypt them ]
          ↓
[ Send over SSH ]
          ↓
[ Automatically extract ]
```

That would actually be a pretty good **C# networking project**.

---

### My personal ranking

| Method         | Best for                   |
| -------------- | -------------------------- |
| `scp`          | Simple transfer            |
| `rsync`        | Large/repeated transfers   |
| HTTP server    | Quick browser download     |
| `netcat`       | Learning networking        |
| `tar + ssh`    | Whole directories          |
| Git            | Code                       |
| Syncthing      | Continuous synchronization |
| Magic Wormhole | Easy remote transfer       |
| USB            | No network / massive files |
| Build your own | Learning and fun           |

For **your Arch Linux + terminal + Emacs/Helix workflow**, I'd personally build a small command like:

```bash
send ~/some/file dt@laptop
```

using **`fzf + rsync + SSH`**. It would feel almost like your own personal AirDrop, but entirely terminal-based and free.
