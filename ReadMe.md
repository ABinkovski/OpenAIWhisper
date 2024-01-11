Main repository: 
https://github.com/openai/whisper

Description: simple analytics of use of Open AI whisper with few example of processing audio files taken from open for use sites: 
 * https://www.kaggle.com/
 * https://freesound.org/

Download links:
 * https://www.python.org/downloads/release/python-3913/
 * pip install torch==1.13.1+cpu torchvision==0.14.1+cpu torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cpu
 * python -m pip install --upgrade pip
 * pip install git+https://github.com/openai/whisper.git 
 * install scoop: https://scoop.sh/ : Open a PowerShell terminal (version 5.1 or later) and run:
   * Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   * Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
 * scoop install ffmpeg

Optionaly:
 * https://www.anaconda.com/download/
 * conda install pytorch==1.13.1 torchvision==0.14.1 torchaudio==0.13.1 cpuonly -c pytorch
 
 Env could be configured starting prepareEnv.ps1 via PowerShell - could be blocked by antivirus system.
 As a workaround,
 Could be startet all commands from folder (either .bat or .ps1):
 prepare-env
 
 Additional info:
 * https://www.kaggle.com/datasets/pavanelisetty/sample-audio-files-for-speech-recognition
 * https://freesound.org/
 * word level captions: https://github.com/johnafish/whisperer
 * https://huggingface.co/openai/whisper-large-v3
 
 
 
 ```
 usage: whisper [-h] [--model MODEL] [--model_dir MODEL_DIR] [--device DEVICE] [--output_dir OUTPUT_DIR]
               [--output_format {txt,vtt,srt,tsv,json,all}] [--verbose VERBOSE] [--task {transcribe,translate}]
               [--language {af,am,ar,as,az,ba,be,bg,bn,bo,br,bs,ca,cs,cy,da,de,el,en,es,et,eu,fa,fi,fo,fr,gl,gu,ha,haw,he,hi,hr,ht,hu,hy,id,is,it,ja,jw,ka,kk,km,kn,ko,la,lb,ln,lo,lt,lv,mg,mi,mk,ml,mn,mr,ms,mt,my,ne,nl,nn,no,oc,pa,pl,ps,pt,ro,ru,sa,sd,si,sk,sl,sn,so,sq,sr,su,sv,sw,ta,te,tg,th,tk,tl,tr,tt,uk,ur,uz,vi,yi,yo,yue,zh,Afrikaans,Albanian,Amharic,Arabic,Armenian,Assamese,Azerbaijani,Bashkir,Basque,Belarusian,Bengali,Bosnian,Breton,Bulgarian,Burmese,Cantonese,Castilian,Catalan,Chinese,Croatian,Czech,Danish,Dutch,English,Estonian,Faroese,Finnish,Flemish,French,Galician,Georgian,German,Greek,Gujarati,Haitian,Haitian Creole,Hausa,Hawaiian,Hebrew,Hindi,Hungarian,Icelandic,Indonesian,Italian,Japanese,Javanese,Kannada,Kazakh,Khmer,Korean,Lao,Latin,Latvian,Letzeburgesch,Lingala,Lithuanian,Luxembourgish,Macedonian,Malagasy,Malay,Malayalam,Maltese,Mandarin,Maori,Marathi,Moldavian,Moldovan,Mongolian,Myanmar,Nepali,Norwegian,Nynorsk,Occitan,Panjabi,Pashto,Persian,Polish,Portuguese,Punjabi,Pushto,Romanian,Russian,Sanskrit,Serbian,Shona,Sindhi,Sinhala,Sinhalese,Slovak,Slovenian,Somali,Spanish,Sundanese,Swahili,Swedish,Tagalog,Tajik,Tamil,Tatar,Telugu,Thai,Tibetan,Turkish,Turkmen,Ukrainian,Urdu,Uzbek,Valencian,Vietnamese,Welsh,Yiddish,Yoruba}]
               [--temperature TEMPERATURE] [--best_of BEST_OF] [--beam_size BEAM_SIZE] [--patience PATIENCE]
               [--length_penalty LENGTH_PENALTY] [--suppress_tokens SUPPRESS_TOKENS] [--initial_prompt INITIAL_PROMPT]
               [--condition_on_previous_text CONDITION_ON_PREVIOUS_TEXT] [--fp16 FP16]
               [--temperature_increment_on_fallback TEMPERATURE_INCREMENT_ON_FALLBACK]
               [--compression_ratio_threshold COMPRESSION_RATIO_THRESHOLD] [--logprob_threshold LOGPROB_THRESHOLD]
               [--no_speech_threshold NO_SPEECH_THRESHOLD] [--word_timestamps WORD_TIMESTAMPS]
               [--prepend_punctuations PREPEND_PUNCTUATIONS] [--append_punctuations APPEND_PUNCTUATIONS]
               [--highlight_words HIGHLIGHT_WORDS] [--max_line_width MAX_LINE_WIDTH] [--max_line_count MAX_LINE_COUNT]
               [--max_words_per_line MAX_WORDS_PER_LINE] [--threads THREADS] [--clip_timestamps CLIP_TIMESTAMPS]
               [--hallucination_silence_threshold HALLUCINATION_SILENCE_THRESHOLD]
               audio [audio ...]
whisper: error: argument -h/--help: ignored explicit argument 'elp'
 ```
 
 ```
Size 	Parameters 	English-only model 	Multilingual model 	Required VRAM 	Relative speed
tiny 	39 M 	tiny.en 	tiny 	~1 GB 	~32x
base 	74 M 	base.en 	base 	~1 GB 	~16x
small 	244 M 	small.en 	small 	~2 GB 	~6x
medium 	769 M 	medium.en 	medium 	~5 GB 	~2x
large 	1550 M 	N/A 	large 	~10 GB 	1x
 ```
 
 