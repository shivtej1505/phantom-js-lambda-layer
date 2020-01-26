function handler () {
    echo "$@";

    cd /tmp/;

    bucket='deliveries-shivangnagaria'
    messageId=`echo $1 | jq '.Records[0].ses.mail.messageId' | tr -d '"'`
    aws s3 cp "s3://$bucket/$messageId" "$messageId.html"

    html_filename="/tmp/$messageId.html";
    screenshot="$messageId.png"

    export PATH="/opt/phantom-js/bin/:$PATH";
    set -x;

    rasterize "$html_filename" "$screenshot";
    aws s3 cp "$screenshot" s3://auto-reimbursement/;
}

