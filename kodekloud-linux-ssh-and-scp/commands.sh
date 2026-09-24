# Answer SSH default port
sudo ss -tlnp | grep sshd

# Generate RSA key pair
ssh-keygen -t rsa
ls -l ~/.ssh/

# Install public key on devapp01
ssh-copy-id bob@devapp01     # password: caleston123

# Verify password-less login
ssh bob@devapp01 "hostname"

# Copy file to remote
scp /home/bob/caleston-code.tar.gz devapp01:/home/bob
