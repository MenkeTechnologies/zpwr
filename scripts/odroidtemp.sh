watch "printf 'Hostname: ' && hostname && printf 'CPU Frequency: ' && \
echo $(($(sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq) / 1000))'Mhz' && \
printf 'TEMP: ' && sudo cat /sys/devices/virtual/thermal/thermal_zone0/temp"
