$modelArray = @("tiny","base","small","medium","large","large-v2","large-v3")

foreach ($model in $modelArray) {
	Write-Host "Start processing with model: $model"
    Measure-Command { 
		whisper 588316.mp3 --model $model --output_dir out/ru-en/$model --language ru --task translate --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False  --verbose False
	}
}

Pause
