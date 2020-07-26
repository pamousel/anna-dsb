# Description : Simple check script 
#
# Parameters  :
#
# (c) Copyright 2020 XXXXXXXX, All Rights Reserved
#
#----------------------------------------------------------------------
EXEC_HOST="ip-172-31-6-129"

check_user()
{
if [ "`/usr/bin/whoami`" != ubuntu ]; then
        echo "----------------------------------------"
        echo "Error: Only the user ubuntu should run this script\!" | tee -a $LOGFILE
        echo "----------------------------------------"
        exit
fi
}

#------------------------------------------------------------------
# The check script starts here ...
#------------------------------------------------------------------
echo "Checking if user = "ubuntu" ..."
check_user
