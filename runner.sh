function handler () {
    URL=`echo $1 | jq '.url' | tr -d '"'`;
    BUCKET_NAME="auto-reimbursement";

    cd /tmp;
    mkdir -p phantomjs-installer;
    cd phantomjs-installer;

    #For Linux 64 Bit and CentOS based system
    wget "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2";
    yum install fontconfig freetype freetype-devel fontconfig-devel libstdc++;

    tar -xf phantomjs-2.1.1-linux-x86_64.tar.bz2;
    mv phantomjs-2.1.1-linux-x86_64 phantomjs-2.1.1

    export PATH="$PWD/phantomjs-2.1.1/bin/:$PATH";
    set -x;

    phantomjs phantomjs-2.1.1/examples/rasterize.js "$URL" tiger.png;
    aws s3 cp tiger.png "s3://$BUCKET_NAME/"
}

