set fish_greeting
# add GOPATH bin to PATH
fish_add_path "$(go env GOPATH)/bin"
# initialize mise
mise activate fish | source
#initialize starship
starship init fish | source