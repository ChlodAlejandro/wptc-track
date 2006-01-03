#storms="arlene bret cindy dennis emily franklin gert harvey irene jose katrina lee maria nate ophelia philippe rita stan tammy vince wilma alpha beta gamma delta epsilon zeta"
storms="zeta"

function download() (
  for storm in $storms; do
    echo "Downloading $storm."
    (wget http://www.atmos.umd.edu/~stevenb/hurr/05/$storm/$storm.txt 2>&1 >/dev/null && mv $storm.txt 2005/) 2>&1 >/dev/null
  done
)

function generate() (
  echo "" > 2005/index.html
  for storm in $storms; do
    echo "Generating $storm."
    ./track --input 2005/$storm.txt --format 1 && mv output.png 2005/$storm.png
    echo "<a href=$storm.png>$storm</a><br>" >> 2005/index.html
  done
)

download
#generate
