$video="./examples/example.mp4"
$num_objects=1
$images_dir=""
$workspace=""

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"
$ext_args = [System.Collections.ArrayList]::new()

if ($images_dir) {
  [void]$ext_args.Add("--images=$images_dir")
}

if ($workspace) {
  [void]$ext_args.Add("--workspace=$workspace")
}

python.exe interactive_demo.py `
--video=$video `
--num_objects=$num_objects $ext_args
