$modelArray = @("small")
$fileName="588316.mp3"

#chcp 65001; $PYTHONIOENCODING="utf-8"; $PYTHONLEGACYWINDOWSSTDIO="utf-8"
#$PYTHONIOENCODING="windows-1252"; $PYTHONLEGACYWINDOWSSTDIO="windows-1252"
#$PYTHONIOENCODING="windows-1251"; $PYTHONLEGACYWINDOWSSTDIO="windows-1251"

$OutputEncoding = [Console]::OutputEncoding = (new-object System.Text.UTF8Encoding $false)
$env:PYTHONIOENCODING = "utf-8"

foreach ($model in $modelArray) {
	Write-Host "Start processing with model: $model"
    Measure-Command { 
		whisper $fileName --model $model --output_dir out/ru/$model --language ru --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False
	}
}

Pause
