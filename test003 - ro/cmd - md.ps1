$modelArray = @("tiny","base","small","medium","large","large-v2","large-v3")
$fileName="Sedinta plenara a Parlamentului - 28 decembrie 2023-vbr.mp3"

$OutputEncoding = [Console]::OutputEncoding = (new-object System.Text.UTF8Encoding $false)
$env:PYTHONIOENCODING = "utf-8"

foreach ($model in $modelArray) {
	Write-Host "Start processing with model: $model"
    Measure-Command { 
		whisper $fileName --model $model --output_dir out/md/$model --language Moldavian --task translate --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False --verbose False
	}
}

Pause
