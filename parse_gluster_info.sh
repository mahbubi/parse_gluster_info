#!/bin/bash

# File input
FILE="text.txt"
TEMP_FILE="parsed_data.tmp"

# Hapus file sementara jika ada
> "$TEMP_FILE"

# Variabel sementara
brick=""
free_space=""
total_space=""

# Baca file baris per baris
while IFS= read -r line; do
    if [[ $line == Brick* ]]; then
        brick=$(echo "$line" | awk -F': ' '{print $2}')
    elif [[ $line == "Disk Space Free"* ]]; then
        free_space=$(echo "$line" | awk -F': ' '{print $2}')
    elif [[ $line == "Total Disk Space"* ]]; then
        total_space=$(echo "$line" | awk -F': ' '{print $2}')
        # Simpan ke file sementara untuk diurutkan
        echo -e "$brick\t$free_space\t$total_space" >> "$TEMP_FILE"
    fi
done < "$FILE"

# Header output
echo -e "Brick\tDisk Space Free\tTotal Disk Space"

# Urutkan berdasarkan nama brick secara alami (numerik dan alfabet)
sort -V "$TEMP_FILE" | awk '{print $2 " " $3 " " $4}'

# Hapus file sementara
rm -f "$TEMP_FILE"

