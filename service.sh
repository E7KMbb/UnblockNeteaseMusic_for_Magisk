#!/system/bin/sh
# 不要假设您的模块将位于何处。
# 如果您需要知道此脚本和模块的放置位置，请使用$MODDIR
# 这将确保您的模块仍能正常工作
# 即使Magisk将来更改其挂载点
MODDIR=${0%/*}

# 此脚本将在late_start service 模式执行
boot_start=true
pid_file="$MODDIR/UnblockNeteaseMusic.pid"
wait_count=0
until [ $(getprop sys.boot_completed) -eq 1 ] && [ -d "/sdcard" ]; do
  sleep 2
  wait_count=$((${wait_count} + 1))
  if [ ${wait_count} -ge 100 ] ; then
    exit 0
  fi
done

if [ -f ${pid_file} ] ; then
    rm -rf ${pid_file}
fi

if [ boot_start = "true" ]; then
   for i in $(seq 1 30); do
      ping -c 1 music.163.com > /dev/null 2>&1
      if [ $? -eq 0 ];then
      UnblockNeteaseMusic start
      exit 0
      fi
   done
fi