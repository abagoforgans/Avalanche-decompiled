contract main {




// =====================  Runtime code  =====================


address owner;
array of struct presaleAtIndex;
mapping of uint256 stor2;
array of struct presaleGeneratorAtIndex;
mapping of uint256 stor4;

function presaleGeneratorAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if presaleGeneratorAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < presaleGeneratorAtIndex.length
    return presaleGeneratorAtIndex[arg1].field_0
}

function presalesLength() payable {
    return presaleAtIndex.length
}

function presaleAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if presaleAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < presaleAtIndex.length
    return presaleAtIndex[arg1].field_0
}

function owner() payable {
    return owner
}

function presaleGeneratorsLength() payable {
    return presaleGeneratorAtIndex.length
}

function _fallback() payable {
    revert
}

function presaleIsRegistered(address arg1) payable {
    require calldata.size - 4 >= 32
    return not not stor2[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function registerPresale(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(msg.sender)]:
        revert with 0, 'FORBIDDEN'
    if not stor2[address(arg1)]:
        presaleAtIndex.length++
        presaleAtIndex[presaleAtIndex.length].field_0 = arg1
        presaleAtIndex[presaleAtIndex.length].field_160 = 0
        stor2[address(arg1)] = presaleAtIndex.length
    emit presaleRegistered(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function adminAllowPresaleGenerator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor4[address(arg1)]:
            presaleGeneratorAtIndex.length++
            presaleGeneratorAtIndex[presaleGeneratorAtIndex.length].field_0 = arg1
            presaleGeneratorAtIndex[presaleGeneratorAtIndex.length].field_160 = 0
            stor4[address(arg1)] = presaleGeneratorAtIndex.length
    else:
        if stor4[address(arg1)]:
            require presaleGeneratorAtIndex.length - 1 < presaleGeneratorAtIndex.length
            require stor4[address(arg1)] - 1 < presaleGeneratorAtIndex.length
            presaleGeneratorAtIndex[stor4[address(arg1)]].field_0 = presaleGeneratorAtIndex[presaleGeneratorAtIndex.length].field_0
            stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
            require presaleGeneratorAtIndex.length
            presaleGeneratorAtIndex[presaleGeneratorAtIndex.length].field_0 = 0
            presaleGeneratorAtIndex.length--
            stor4[address(arg1)] = 0
}



}
