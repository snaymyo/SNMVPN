#!/bin/bash

# Define the URL for the download
DOWNLOAD_URL="https://github.com/PlayBillbes/NoMoreGCP/raw/refs/heads/main/nomoregcp"

# Define the filename
FILENAME="nomoregcp"

echo "Downloading $FILENAME from $DOWNLOAD_URL..."
# Download the file using curl (you can also use wget if preferred)
wget -O "$FILENAME" "$DOWNLOAD_URL"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Download complete. Making $FILENAME executable..."
    # Make the downloaded file executable
    chmod +x "$FILENAME"

    # Check if chmod was successful
    if [ $? -eq 0 ]; then
        echo "Executing ./$FILENAME..."
        # Execute the script
        ./"$FILENAME"
    else
        echo "Error: Failed to make $FILENAME executable."
    fi
else
    echo "Error: Failed to download $FILENAME."
fi
