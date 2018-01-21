# !/bin/sh
OUT_WORK="/root/source/26"
WORK_NAME="taoke"
WORK=${OUT_WORK}/${WORK_NAME}
function antCompile() {
   cd ${WORK}
   ant -buildfile build.xml
   echo "ant complete"
}
function codeCompile() {
    if [ -d $WORK ];
  then
  echo "there are,start update"
       cd ${WORK}
       git pull
  else
  echo "not there are,start checkout"
       cd ${OUT_WORK}
       git clone git@gitee.com:modaots/taoke.git
  fi
}
echo "git脚本启动:"${WORK}
case $1 in
    ant)
         echo -e "\033[31m Start code and ant the Application \033[0m"
         codeCompile
         antCompile
         ;;
    code)
         echo -e "\033[31m Start code the Application \033[0m"
         codeCompile
         ;;
     *)
         echo -e "\033[31m Unkown command, please use ant, code \033[0m"
         ;;
esac
