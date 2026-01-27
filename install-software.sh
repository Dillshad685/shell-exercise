#need to install nginx mysql and python and add colurs to it 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u) 

if [ $userid -ne 0 ]; then
    echo -e "$R run with super user $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R installation failed $N"
    else
        echo -e "$Y installtion of $G SUCCESS $G $2 $N"
    fi
}

dnf list installed mysql

if [ $? -ne 0 ]; then 
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else 
    echo -e "$Y MYSQL already installed $N"
fi 

dnf list installed nginx

if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "$Y nginx already installed $N"
fi

dnf list installed python3

if [ $? -ne 0 ]; then
    dnf install python3 -y 
    VALIDATE $? "python"
else
    echo -e "$Y python already installed $N"
fi 
