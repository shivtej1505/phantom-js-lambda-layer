### AWS Lambda Headless Browser Layer

Layer ARN: arn:aws:lambda:us-east-1:699054759624:layer:phantom-js:4

#### Features:

1. Take screenshots using `rasterize` command.

```sh
export PATH="/opt/phantom-js/bin/:$PATH"; # Add the layer in the path
rasterize "$html_filename" "$screenshot"; # Read the html file and create screenshot
```
