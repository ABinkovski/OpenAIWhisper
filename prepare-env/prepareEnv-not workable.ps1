echo "installing scoop package manager"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

echo "installing python "
scoop install versions/python39

echo "updating pip"
python -m pip install --upgrade pip

echo "installing PyTorch"
## CPU
pip install torch==1.13.1+cpu torchvision==0.14.1+cpu torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cpu

## GPU Intel
conda install pytorch==1.13.1 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.6 -c pytorch -c nvidia

echo "installing ffmpeg"
scoop install ffmpeg

