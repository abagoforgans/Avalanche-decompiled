contract main {




// =====================  Runtime code  =====================


address owner;
address lotteryAddress;
address randomnessAddress;

function randomness() payable {
    return randomnessAddress
}

function owner() payable {
    return owner
}

function lottery() payable {
    return lotteryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d7050b05(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72676f7665726e616e63652f6e6f2d72616e646f6d6e657373732d616464726573,
                    mem[197 len 31]
    randomnessAddress = arg1
}

function sub_e79cb4bb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73676f7665726e616e63652f6e6f2d6c6f74746572792d616464726573732d67697665,
                    mem[199 len 29]
    lotteryAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function init(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73676f7665726e616e63652f6e6f2d6c6f74746572792d616464726573732d67697665,
                    mem[199 len 29]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72676f7665726e616e63652f6e6f2d72616e646f6d6e657373732d616464726573,
                    mem[197 len 31]
    if lotteryAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e676f7665726e616e63652f6c6f74746572792d616464726573732d616c72656164792d7365,
                    mem[202 len 26]
    if randomnessAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73676f7665726e616e63652f72616e646f6d6e6573732d616464726573732d616c72656164792d7365,
                    mem[205 len 23]
    lotteryAddress = arg1
    randomnessAddress = arg2
}



}
