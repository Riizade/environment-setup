set fish_greeting
# add GOPATH bin to PATH
fish_add_path "$(go env GOPATH)/bin"
starship init fish | source