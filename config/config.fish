set fish_greeting
# add GOPATH bin to PATH
fish_add_path "$(go env GOPATH)/bin"
# set max number of threads for cargo/rustc to logical cores - 2
# this prevents rust-analyzer or cargo build from locking up the whole machine
set -gx CARGO_BUILD_JOBS $(math max (nproc) - 2, max 1)
# initialize mise
mise activate fish | source
#initialize starship
starship init fish | source