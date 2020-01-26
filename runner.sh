function parser() {
    subject=`cat "$1" | grep -Eo 'Subject:[a-zA-Z0-9 ,]+'`
    order_date=`cat "$1" | grep -Eo 'Date:[a-zA-Z0-9 ,:]+'`
    order_number=`cat "$1" | grep -A 1 "Order No" | tail -1 | grep -Eo '>[0-9]+<' | tr -d '><'`
    restaurant=`cat "$1" | grep -A 1 "Restaurant" | tail -1 | grep -Eo '>[a-zA-Z0-9 -,]+<' | tr -d '><'`
    amount=`cat "$1" | grep -A 1 "Grand Total" | tail -1 | grep -Eo '>[0-9]+<' | tr -d '><'`

    echo $subject
    echo $order_date
    echo $order_number
    echo $restaurant
    echo $amount
}

function handler () {
    echo "$@";

    cd /tmp/;

    bucket='deliveries-shivangnagaria'
    messageId=`echo $1 | jq '.Records[0].ses.mail.messageId' | tr -d '"'`
    aws s3 cp "s3://$bucket/$messageId" "$messageId.html"

    parser "$messageId.html"

    html_filename="/tmp/$messageId.html";
    screenshot="$messageId.png"

    export PATH="/opt/phantom-js/bin/:$PATH";
    set -x;

    rasterize "$html_filename" "$screenshot";
    aws s3 cp "$screenshot" s3://auto-reimbursement/;
}

