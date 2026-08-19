### To execute
* Modify URL <Line#6>
* `python3 crawler_includehelp.com.py`
* The codes will besaved in DataSet folder
* Search keywords not supported in Xilinx and remove the files. The following commands may be useful
    * `grep -rwn "malloc"` or `grep -rwn "malloc" | awk -F":" '{print $1}' | uniq` or `grep -rwn "malloc" | awk -F":" '{print $1}' | uniq | awk -F"_" '{print $1}' | sort`
    * To search and remove together, use `grep -rwn "malloc" | awk -F":" '{print $1}' | uniq | xargs rm`
* Inside the DataSet folder use the following command to encapsulate the files inside folders
  ```for file in *_*; do dir=$(echo "$file" | awk -F'_' '{print $1}' | grep -oE '[0-9]+'); mkdir -p "$dir"; mv "$file" "$dir/"; done```
* Add repository prefix to the foldername e.g. `for dir in */; do mv "$dir" "codezclub_${dir%/}"; done`
