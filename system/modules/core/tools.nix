{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop
    curl
    fastfetch
    ffmpeg
    git
    minicom
    pciutils
    sqlite
    usbutils
    v4l-utils
    wget

    # Artificial Intelligence/Machine Learning Stack
    (python3.withPackages (ps: with ps; [
      numpy pandas scipy scikit-learn
      opencv4 pillow scikit-image matplotlib
      torch torchvision
      openvino onnxruntime
      pyserial
      jupyterlab ipykernel fastapi uvicorn pydantic
    ]))
  ];
}