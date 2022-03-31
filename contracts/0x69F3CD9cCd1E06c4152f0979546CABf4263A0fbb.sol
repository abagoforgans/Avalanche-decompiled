contract main {




// =====================  Runtime code  =====================


mapping of uint256 mapPrices;
mapping of struct deposit;
address adminAddress;
address owner;
address newOwner;

function isDebtClean(bytes32 arg1) {
    return bool(deposit[arg1].field_2312)
}

function getValue(bytes32 arg1) {
    return mapPrices[arg1]
}

function getDeposit(bytes32 arg1) {
    return deposit[arg1].field_0
}

function owner() {
    return owner
}

function getStoremanGroupStatus(bytes32 arg1) {
    return deposit[arg1].field_2304, deposit[arg1].field_1792, deposit[arg1].field_2048
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

function _fallback() payable {
    revert
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

function setAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    adminAddress = arg1
    emit SetAdmin(arg1);
}

function updateDeposit(bytes32 arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not admin'
    deposit[arg1].field_0 = arg2
    emit UpdateDeposit(arg2, arg1);
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDebtClean(bytes32 arg1, bool arg2) {
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not admin'
    deposit[arg1].field_2312 = Mask(248, 0, arg2)
    emit SetDebtClean(arg2, arg1);
}

function setStoremanGroupStatus(bytes32 arg1, uint8 arg2) {
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not admin'
    deposit[arg1].field_2304 = arg2
    emit SetStoremanGroupStatus(arg2, arg1);
}

function getValues(bytes32[] arg1) {
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[5170 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        require idx < arg1.length
        mem[(32 * idx) + 128] = mapPrices[cd[((32 * idx) + arg1 + 36)]]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function updatePrice(bytes32[] arg1, uint256[] arg2) {
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not admin'
    if arg2.length != arg1.length:
        revert with 0, 'length not same'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        mapPrices[cd[((32 * idx) + arg1 + 36)]] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
    emit UpdatePrice(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]), (32 * arg1.length) + 96);
}

function setStoremanGroupConfig(bytes32 arg1, uint8 arg2, uint256 arg3, uint256[2] arg4, uint256[2] arg5, bytes arg6, bytes arg7, uint256 arg8, uint256 arg9) {
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'not admin'
    deposit[arg1].field_0 = arg3
    deposit[arg1].field_2304 = arg2
    deposit[arg1].field_256 = arg4
    deposit[arg1].field_512 = arg5
    deposit[arg1].field_768 = arg6
    deposit[arg1].field_1024 = arg7
    deposit[arg1].field_1280 = (2 * arg8.length) + 1
    s = 0
    idx = arg8 + 36
    while arg8 + arg8.length + 36 > idx:
        deposit[arg1][s + 5].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg8.length + 31) >> 5
    while deposit[arg1][5].length + 31 / 32 > idx:
        deposit[arg1][idx + 5].field_0 = 0
        idx = idx + 1
        continue 
    deposit[arg1].field_1536 = (2 * arg9.length) + 1
    s = 0
    idx = arg9 + 36
    while arg9 + arg9.length + 36 > idx:
        deposit[arg1][s + 6].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg9.length + 31) >> 5
    while deposit[arg1][6].length + 31 / 32 > idx:
        deposit[arg1][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    deposit[arg1].field_1792 = cd[292]
    deposit[arg1].field_2048 = cd[324]
    emit SetStoremanGroupConfig(bytes32 rg1, uint8 rg2, uint256 rg3, uint256[2] rg4, uint256[2] rg5, bytes rg6, bytes rg7, uint256 rg8, uint256 rg9):
                                arg2 << 248,
                                arg3,
                                call.data[100 len 64],
                                call.data[164 len 64],
                                Array(len=arg9.length, data=arg9[all]),
                                arg8.length + 352,
                                cd[292],
                                cd[324],
                                arg8.length,
                                arg8[all],
                                arg1,
}

function mapStoremanGroupConfig(bytes32 arg1) {
    mem[32] = 6
    mem[96] = deposit[arg1][5].length
    mem[128] = deposit[arg1][5].field_0
    idx = 128
    s = 0
    while deposit[arg1][5].length + 96 > idx:
        mem[idx + 32] = deposit[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 160
    mem[ceil32(deposit[arg1][5].length) + 128] = deposit[arg1][6].length
    mem[0] = sha3(arg1, 6) + 6
    mem[ceil32(deposit[arg1][5].length) + 160] = deposit[arg1][6].field_0
    idx = ceil32(deposit[arg1][5].length) + 160
    s = 0
    while ceil32(deposit[arg1][5].length) + deposit[arg1][6].length + 128 > idx:
        mem[idx + 32] = deposit[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 160] = deposit[arg1].field_0
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 256] = deposit[arg1].field_1792
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 288] = deposit[arg1].field_2048
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 320] = deposit[arg1].field_2304
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 352] = bool(deposit[arg1].field_2312)
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 192] = 224
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 384] = deposit[arg1][5].length
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 416 len ceil32(deposit[arg1][5].length)] = mem[128 len ceil32(deposit[arg1][5].length)]
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 224] = deposit[arg1][5].length + 256
    mem[deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 416] = deposit[arg1][6].length
    mem[deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 448 len ceil32(deposit[arg1][6].length)] = mem[ceil32(deposit[arg1][5].length) + 160 len ceil32(deposit[arg1][6].length)]
    if not deposit[arg1][6].length % 32:
        return deposit[arg1].field_0, 
               Array(len=deposit[arg1][5].length, data=mem[128 len ceil32(deposit[arg1][5].length)], mem[(2 * ceil32(deposit[arg1][5].length)) + ceil32(deposit[arg1][6].length) + 416 len deposit[arg1][6].length + deposit[arg1][5].length + -ceil32(deposit[arg1][5].length) + 32]),
               deposit[arg1][5].length + 256,
               deposit[arg1].field_1792,
               deposit[arg1].field_2048,
               deposit[arg1].field_2304,
               bool(deposit[arg1].field_2312)
    mem[floor32(deposit[arg1][6].length) + deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 448] = mem[floor32(deposit[arg1][6].length) + deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + -deposit[arg1][6].length % 32 + 480 len deposit[arg1][6].length % 32]
    return deposit[arg1].field_0, 
           Array(len=deposit[arg1][5].length, data=mem[128 len ceil32(deposit[arg1][5].length)], mem[(2 * ceil32(deposit[arg1][5].length)) + ceil32(deposit[arg1][6].length) + 416 len floor32(deposit[arg1][6].length) + deposit[arg1][5].length + -ceil32(deposit[arg1][5].length) + 64]),
           deposit[arg1][5].length + 256,
           deposit[arg1].field_1792,
           deposit[arg1].field_2048,
           deposit[arg1].field_2304,
           bool(deposit[arg1].field_2312)
}

function getStoremanGroupConfig(bytes32 arg1) {
    mem[96] = deposit[arg1][5].length
    mem[128] = deposit[arg1][5].field_0
    idx = 128
    s = 0
    while deposit[arg1][5].length + 96 > idx:
        mem[idx + 32] = deposit[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 160
    mem[ceil32(deposit[arg1][5].length) + 128] = deposit[arg1][6].length
    mem[ceil32(deposit[arg1][5].length) + 160] = deposit[arg1][6].field_0
    idx = ceil32(deposit[arg1][5].length) + 160
    s = 0
    while ceil32(deposit[arg1][5].length) + deposit[arg1][6].length + 128 > idx:
        mem[idx + 32] = deposit[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 160] = arg1
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 192] = deposit[arg1].field_2304
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 224] = deposit[arg1].field_0
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 256] = deposit[arg1].field_256
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 288] = deposit[arg1].field_512
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 320] = deposit[arg1].field_768
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 352] = deposit[arg1].field_1024
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 448] = deposit[arg1].field_1792
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 480] = deposit[arg1].field_2048
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 384] = 352
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 512] = deposit[arg1][5].length
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 544 len ceil32(deposit[arg1][5].length)] = mem[128 len ceil32(deposit[arg1][5].length)]
    mem[ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 416] = deposit[arg1][5].length + 384
    mem[deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 544] = deposit[arg1][6].length
    mem[deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 576 len ceil32(deposit[arg1][6].length)] = mem[ceil32(deposit[arg1][5].length) + 160 len ceil32(deposit[arg1][6].length)]
    if not deposit[arg1][6].length % 32:
        return arg1, 
               deposit[arg1].field_2304,
               deposit[arg1].field_0,
               deposit[arg1].field_256,
               deposit[arg1].field_512,
               deposit[arg1].field_768,
               deposit[arg1].field_1024,
               Array(len=deposit[arg1][5].length, data=mem[128 len ceil32(deposit[arg1][5].length)], mem[(2 * ceil32(deposit[arg1][5].length)) + ceil32(deposit[arg1][6].length) + 544 len deposit[arg1][6].length + deposit[arg1][5].length + -ceil32(deposit[arg1][5].length) + 32]),
               deposit[arg1][5].length + 384,
               deposit[arg1].field_1792,
               deposit[arg1].field_2048
    mem[floor32(deposit[arg1][6].length) + deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + 576] = mem[floor32(deposit[arg1][6].length) + deposit[arg1][5].length + ceil32(deposit[arg1][5].length) + ceil32(deposit[arg1][6].length) + -deposit[arg1][6].length % 32 + 608 len deposit[arg1][6].length % 32]
    return arg1, 
           deposit[arg1].field_2304,
           deposit[arg1].field_0,
           deposit[arg1].field_256,
           deposit[arg1].field_512,
           deposit[arg1].field_768,
           deposit[arg1].field_1024,
           Array(len=deposit[arg1][5].length, data=mem[128 len ceil32(deposit[arg1][5].length)], mem[(2 * ceil32(deposit[arg1][5].length)) + ceil32(deposit[arg1][6].length) + 544 len floor32(deposit[arg1][6].length) + deposit[arg1][5].length + -ceil32(deposit[arg1][5].length) + 64]),
           deposit[arg1][5].length + 384,
           deposit[arg1].field_1792,
           deposit[arg1].field_2048
}



}
