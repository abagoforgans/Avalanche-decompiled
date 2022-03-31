contract main {




// =====================  Runtime code  =====================


mapping of uint256 mapPrices;
array of struct stor6;
address adminAddress;
address owner;
address newOwner;
address implementationAddress;

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function mapPrices(bytes32 arg1) {
    return mapPrices[arg1]
}

function newOwner() {
    return newOwner
}

function admin() {
    return adminAddress
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    owner = 0
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'implementation contract not set'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to invalid address'
    if implementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to the same implementation'
    implementationAddress = arg1
    emit Upgraded(arg1);
}

function mapStoremanGroupConfig(bytes32 arg1) {
    mem[32] = 6
    mem[96] = stor6[arg1][5].length
    mem[128] = stor6[arg1][5].field_0
    idx = 128
    s = 0
    while stor6[arg1][5].length + 96 > idx:
        mem[idx + 32] = stor6[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 160
    mem[ceil32(stor6[arg1][5].length) + 128] = stor6[arg1][6].length
    mem[0] = sha3(arg1, 6) + 6
    mem[ceil32(stor6[arg1][5].length) + 160] = stor6[arg1][6].field_0
    idx = ceil32(stor6[arg1][5].length) + 160
    s = 0
    while ceil32(stor6[arg1][5].length) + stor6[arg1][6].length + 128 > idx:
        mem[idx + 32] = stor6[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 160] = stor6[arg1].field_0
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 256] = stor6[arg1].field_1792
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 288] = stor6[arg1].field_2048
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 320] = stor6[arg1].field_2304
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 352] = bool(stor6[arg1].field_2312)
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 192] = 224
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 384] = stor6[arg1][5].length
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 416 len ceil32(stor6[arg1][5].length)] = mem[128 len ceil32(stor6[arg1][5].length)]
    mem[ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 224] = stor6[arg1][5].length + 256
    mem[stor6[arg1][5].length + ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 416] = stor6[arg1][6].length
    mem[stor6[arg1][5].length + ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 448 len ceil32(stor6[arg1][6].length)] = mem[ceil32(stor6[arg1][5].length) + 160 len ceil32(stor6[arg1][6].length)]
    if not stor6[arg1][6].length % 32:
        return stor6[arg1].field_0, 
               Array(len=stor6[arg1][5].length, data=mem[128 len ceil32(stor6[arg1][5].length)], mem[(2 * ceil32(stor6[arg1][5].length)) + ceil32(stor6[arg1][6].length) + 416 len stor6[arg1][6].length + stor6[arg1][5].length + -ceil32(stor6[arg1][5].length) + 32]),
               stor6[arg1][5].length + 256,
               stor6[arg1].field_1792,
               stor6[arg1].field_2048,
               stor6[arg1].field_2304,
               bool(stor6[arg1].field_2312)
    mem[floor32(stor6[arg1][6].length) + stor6[arg1][5].length + ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + 448] = mem[floor32(stor6[arg1][6].length) + stor6[arg1][5].length + ceil32(stor6[arg1][5].length) + ceil32(stor6[arg1][6].length) + -stor6[arg1][6].length % 32 + 480 len stor6[arg1][6].length % 32]
    return stor6[arg1].field_0, 
           Array(len=stor6[arg1][5].length, data=mem[128 len ceil32(stor6[arg1][5].length)], mem[(2 * ceil32(stor6[arg1][5].length)) + ceil32(stor6[arg1][6].length) + 416 len floor32(stor6[arg1][6].length) + stor6[arg1][5].length + -ceil32(stor6[arg1][5].length) + 64]),
           stor6[arg1][5].length + 256,
           stor6[arg1].field_1792,
           stor6[arg1].field_2048,
           stor6[arg1].field_2304,
           bool(stor6[arg1].field_2312)
}



}
