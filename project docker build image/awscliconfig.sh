awscli --version
if [ $? -eq 0 ]
then
echo "aws cli already installed"
else
echo "awscli not installed installing aws cli and configuring it"
echo "Installing AWS CLI..."
sudo apt-get update
sudo apt-get install -y awscli
# Configure AWS CLI
echo "Configuring AWS CLI..."
echo "Please enter your AWS access key ID:"
read aws_access_key_id
echo "Please enter your AWS secret access key:"
read aws_secret_access_key
echo "Please enter your default region (e.g., us-east-1):"
read aws_default_region
echo "Please enter your preferred output format (json, text, or table):"
read aws_output_format
# Set AWS configuration
aws configure set aws_access_key_id $aws_access_key_id
aws configure set aws_secret_access_key $aws_secret_access_key
aws configure set default.region $aws_default_region
aws configure set default.output $aws_output_format
echo "AWS CLI has been configured successfully."
fi