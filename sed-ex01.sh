echo '#user to run service as' > sedconfig.txt
echo 'user apache' >> sedconfig.txt
echo '#user to run service as' >> sedconfig.txt
echo >> sedconfig.txt
echo '# group to run service' >> sedconfig.txt
echo 'group apache' >> sedconfig.txt
cat sedconfig.txt
sed '/^#/d' sedconfig.txt # tum # satırı ile baslayanları siler
sed '/^$/d' sedconfig.txt # bosluklari siler

# sed script run 
# sed -f  sed-script.sed sedconfig.txt 

# 2.satırı duzeltme
# sed '2  s/apache/httpd/'  sedconfig.txt 