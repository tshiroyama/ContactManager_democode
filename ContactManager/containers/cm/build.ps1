$tag = "tshiroyama/cm:{0}" -F (GET-DATE).ToString("yyyyMMddHHmm")
docker build -t $tag .