echo "download remark for offline work..."
wget -O remark-latest.min.js "http://gnab.github.io/remark/downloads/remark-latest.min.js"
if [ ! $? ]; then
    echo "failed to download remark"
fi
echo "starting server..."
python3 -m http.server &> /dev/null &
xdg-open "http://localhost:8000/remark.html"
