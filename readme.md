## Headless browser PhantomJS AWS Lambda Layer 
This layer contains PhantomJS headless browser which can be used for screen capture, page automation and
headless web testing. Full feature list and use cases can be found here: For full feature list see this: https://github.com/ariya/phantomjs#use-cases

#### Usage
1. Just pick up an ARN from the list below, include it in your lambda function.
2. Add the layer binaries in PATH like this
    ```sh
    export PATH="/opt/phantom-js/bin/:$PATH"; # Add the layer in the path
    ```
3. Use it in your program like this (We are taking a screenshot here)
    ```sh
   rasterize "$html_filename" "$screenshot"; # Read the html file and create screenshot
   ```

#### Layer ARN 

| AWS Region      |     Layer ARN                                                     | 
| --------------  | ------------------------------------------------------------------|
| us-east-1       |     arn:aws:lambda:us-east-1:699054759624:layer:phantom-js:4      |
| us-east-2       |     arn:aws:lambda:us-east-2:699054759624:layer:phantom-js:1      |
| us-west-1       |     arn:aws:lambda:us-west-1:699054759624:layer:phantom-js:1      |
| us-west-2       |     arn:aws:lambda:us-west-2:699054759624:layer:phantom-js:1      |
| ca-central-1    |     arn:aws:lambda:ca-central-1:699054759624:layer:phantom-js:1   |
| sa-east-1       |     arn:aws:lambda:sa-east-1:699054759624:layer:phantom-js:1      |
| eu-north-1      |     arn:aws:lambda:eu-north-1:699054759624:layer:phantom-js:1     |
| eu-central-1    |     arn:aws:lambda:eu-central-1:699054759624:layer:phantom-js:1   |
| eu-west-1       |     arn:aws:lambda:eu-west-1:699054759624:layer:phantom-js:1      |
| eu-west-2       |     arn:aws:lambda:eu-west-2:699054759624:layer:phantom-js:1      |
| eu-west-3       |     arn:aws:lambda:eu-west-3:699054759624:layer:phantom-js:1      |
| ap-northeast-1  |     arn:aws:lambda:ap-northeast-1:699054759624:layer:phantom-js:1 |
| ap-northeast-2  |     arn:aws:lambda:ap-northeast-2:699054759624:layer:phantom-js:1 |
| ap-south-1      |     arn:aws:lambda:ap-south-1:699054759624:layer:phantom-js:1     |
| ap-southeast-1  |     arn:aws:lambda:ap-southeast-1:699054759624:layer:phantom-js:1 |
| ap-southeast-2  |     arn:aws:lambda:ap-southeast-2:699054759624:layer:phantom-js:1 |


Note: As of now, it only supports takings screenshots using `rasterize` command but can be expanded to
do other stuff too very easily. Pull requests are welcome. 

