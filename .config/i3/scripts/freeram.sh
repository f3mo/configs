freemem=$(free -h | awk 'FNR == 2 {print  }' | sed  's/i//g')

echo $freemem
