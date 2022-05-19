contract main {




// =====================  Runtime code  =====================


array of struct instanceAt;
mapping of uint256 stor1;
address owner;

function instanceAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= instanceAt.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return instanceAt[arg1].field_0
}

function isInstance(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function instanceCount() payable {
    return instanceAt.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function register(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x73496e7374616e636552656769737472793a20616c726561647920726567697374657265,
                    mem[200 len 28]
    instanceAt.length++
    instanceAt[instanceAt.length].field_0 = arg1
    instanceAt[instanceAt.length].field_160 = 0
    stor1[address(arg1)] = instanceAt.length
    emit InstanceAdded(arg1);
}



}
