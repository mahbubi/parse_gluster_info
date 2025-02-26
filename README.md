
# GlusterFS Brick Disk Space Checker

## 📌 Deskripsi
Skrip ini digunakan untuk mengambil informasi **Brick, Disk Space Free, dan Total Disk Space** dari output GlusterFS. Skrip akan membaca data dari file teks (`text.txt`), kemudian memprosesnya, menghapus kata>
## 📜 Fitur
✅ Mengambil data **Brick Path, Free Space, dan Total Space**
✅ Mengurutkan hasil berdasarkan nama Brick (secara alami)
✅ Format output yang rapi dalam bentuk tabel

## 🚀 Cara Penggunaan

### 1️⃣ **Clone Repository**
```bash
git clone https://github.com/username/repo-name.git
cd repo-name
```
### 2️⃣ Buat File text.txt dengan Data GlusterFS
Pastikan memiliki file text.txt dengan format seperti berikut:
```bash
------------------------------------------------------------------------------
Brick                : Brick gluster-cluster1.drc:/mnt/BRICK4
TCP Port             : 99997
RDMA Port            : 0
Online               : Y
Pid                  : 19021
File System          : xfs
Device               : /dev/sdf
Mount Options        : rw,relatime,attr2,inode64,noquota
Inode Size           : 512
Disk Space Free      : 900.1GB
Total Disk Space     : 1023.5GB
Inode Count          : 107374144
Free Inodes          : 104742292
------------------------------------------------------------------------------
Brick                : Brick gluster-cluster1.dc:/mnt/BRICK4
TCP Port             : 99996
RDMA Port            : 0
Online               : Y
Pid                  : 14374
File System          : xfs
Device               : /dev/vdf
Mount Options        : rw,seclabel,relatime,attr2,inode64,noquota
Inode Size           : 512
Disk Space Free      : 902.8GB
Total Disk Space     : 1023.5GB
Inode Count          : 107374144
Free Inodes          : 105128966
------------------------------------------------------------------------------
Brick                : Brick gluster-cluster1.arb:/mnt/BRICK4
TCP Port             : 99997
RDMA Port            : 0
Online               : Y
Pid                  : 21396
File System          : xfs
Device               : /dev/mapper/centos_lms--app01-root
Mount Options        : rw,seclabel,relatime,attr2,inode64,noquota
Inode Size           : 256
Disk Space Free      : 26.2GB
Total Disk Space     : 99.5GB
Inode Count          : 104341504
Free Inodes          : 84613161
------------------------------------------------------------------------------
```
### 3️⃣ Beri Izin Eksekusi pada Skrip
```bash
chmod +x parse_gluster_info_cleaned.sh
```
### 4️⃣ Jalankan Skrip
```bash
./parse_gluster_info_cleaned.sh
```
### 5️⃣ Output yang Diharapkan
```bash
Brick Path                                Disk Space Free   Total Disk Space  
---------------------------------------------------------------
gluster-eadmin-data-new-arb:/mnt/BRICK1   100.0GB          150.0GB         
gluster-eadmin-data-new-arb:/mnt/BRICK2   120.5GB          200.0GB         
gluster-eadmin-data-new-vm:/mnt/BRICK1    95.7GB           140.0GB         
gluster-eadmin-data-new-vm:/mnt/BRICK2    110.2GB          180.0GB         
```
## 🛠 Troubleshooting
1️⃣ File text.txt Tidak Ditemukan
- Pastikan file text.txt ada di direktori yang sama dengan skrip.
2️⃣ Output Tidak Sesuai
- Periksa format data dalam text.txt, harus sesuai dengan contoh.
## 📜 Lisensi
Proyek ini menggunakan lisensi MIT.
