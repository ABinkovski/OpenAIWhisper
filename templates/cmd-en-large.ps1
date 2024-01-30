$modelArray = @("large")
$fileNames=@(
	"",
	"",
	""
)

$OutputEncoding = [Console]::OutputEncoding = (new-object System.Text.UTF8Encoding $false)
$env:PYTHONIOENCODING = "utf-8"

foreach ($model in $modelArray) {
	foreach ($fileName in $fileNames) {
		Write-Host "Start processing with model: $model"
		Measure-Command { 
			whisper $fileName --model $model --output_dir out/en/$model --language en --output_format all --condition_on_previous_text True --word_timestamps True  --fp16 False
		}
	}
}

Pause
