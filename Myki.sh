#vos硬盘满处理方法   查找大文件并列表
find . -type f -size +100M  -print0 | xargs -0 du -h | sort -nr
#删除话单
rm -rf /var/lib/mysql/vos3000/e_cdr_201803*
