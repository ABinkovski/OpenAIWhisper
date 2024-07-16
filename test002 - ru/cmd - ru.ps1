$modelArray = @("tiny","base","small","medium","large","large-v2","large-v3")

$OutputEncoding = [Console]::OutputEncoding = (new-object System.Text.UTF8Encoding $false)
$env:PYTHONIOENCODING = "utf-8"

foreach ($model in $modelArray) {
	Write-Host "Start processing with model: $model"
    Measure-Command { 
		whisper 588316.mp3 --model $model --output_dir out/ru/$model --language ru --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False --verbose False
	}
}

Pause
