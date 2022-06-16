contract main {




// =====================  Runtime code  =====================


address owner;
array of struct tokenAtIndex;
mapping of uint256 stor2;
mapping of uint256 indexOfToken;

function indexOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return indexOfToken[address(arg1)]
}

function tokenAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenAtIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenAtIndex[arg1].field_0
}

function sub_805b5b74(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function tokensLength() payable {
    return tokenAtIndex.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function registerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor2[address(arg1)]:
        revert with 0, 'ALREADY REGISTERED'
    if not stor2[address(arg1)]:
        tokenAtIndex.length++
        tokenAtIndex[tokenAtIndex.length].field_0 = arg1
        tokenAtIndex[tokenAtIndex.length].field_160 = 0
        stor2[address(arg1)] = tokenAtIndex.length
    indexOfToken[address(arg1)] = tokenAtIndex.length
    emit 0xa2e1ce62: arg1
}

function sub_f383af20(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not stor2[address(arg1)]:
        revert with 0, 'NOT REGISTERED'
    if stor2[address(arg1)]:
        require tokenAtIndex.length - 1 < tokenAtIndex.length
        require stor2[address(arg1)] - 1 < tokenAtIndex.length
        tokenAtIndex[stor2[address(arg1)]].field_0 = tokenAtIndex[tokenAtIndex.length].field_0
        stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        require tokenAtIndex.length
        tokenAtIndex[tokenAtIndex.length].field_0 = 0
        tokenAtIndex.length--
        stor2[address(arg1)] = 0
    indexOfToken[address(arg1)] = 0
    emit 0x2f1b8c34: arg1
}



}
