# "tiny.en","base.en","small.en","medium.en","large","large-v2","large-v3"
$modelArray = @("large")
$fileNames=@(
	""
)
$fileExtension="mp4"

$OutputEncoding = [Console]::OutputEncoding = (new-object System.Text.UTF8Encoding $false)
$env:PYTHONIOENCODING = "utf-8"
$language="en"

foreach ($model in $modelArray) {
	foreach ($fileName in $fileNames) {
		$fullFileName="$fileName.$fileExtension"
		Write-Host "$(Get-Date -Format 'HH:mm:ss')  Start processing with model: [$model] for file: [$fullFileName]"
		Measure-Command { 
			whisper $fullFileName --model $model --output_dir out/$language/$model --language $language --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False --verbose False
		}
	}
}

Pause
