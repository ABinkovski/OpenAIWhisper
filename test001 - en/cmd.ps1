$modelArray = @("tiny","base","small","medium","large","large-v2","large-v3")

foreach ($model in $modelArray) {
	Write-Host "Start processing with model: $model"
    Measure-Command { 
		whisper harvard.wav --model $model --output_dir out/$model --language en --output_format all --condition_on_previous_text True --word_timestamps True --fp16 False
	}
}

Pause
