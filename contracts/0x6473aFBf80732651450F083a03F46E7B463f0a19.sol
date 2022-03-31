contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f600ae8(?)
#  - getTokenPairsByChainID(uint256 arg1, uint256 arg2)
#  - sub_5d2e9ead(?)
#  - sub_6c45e2dc(?)
#
array of uint256 stor1;
uint256 sub_d0ad718d;
mapping of struct ancestorChainID;
mapping of uint256 sub_58a007fb;
address owner;
address newOwner;
mapping of uint8 stor10;

function sub_58a007fb(?) {
    require calldata.size - 4 >= 32
    return sub_58a007fb[arg1]
}

function owner() {
    return owner
}

function sub_d0ad718d(?) {
    return sub_d0ad718d
}

function newOwner() {
    return newOwner
}

function sub_d51dddd7(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function getAncestorChainID(uint256 arg1) {
    require calldata.size - 4 >= 32
    return ancestorChainID[arg1].field_1024
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
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor10[address(arg1)] = 1
    emit AddAdmin(arg1);
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor10[address(arg1)] = 0
    emit RemoveAdmin(arg1);
}

function acceptTokenOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.0x79ba5097 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeTokenOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.0xa6f9dae1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokenOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(arg1)
    call arg1.0x4fb2e45d with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor10[msg.sender]:
        revert with 0, 'not admin'
    require ext_code.size(arg1)
    call arg1.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor10[msg.sender]:
        revert with 0, 'not admin'
    require ext_code.size(arg1)
    call arg1.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAncestorSymbol(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = ancestorChainID[arg1][2].field_0
    idx = 128
    s = 0
    while ancestorChainID[arg1][2].length + 96 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=ancestorChainID[arg1][2].length, data=mem[128 len ceil32(ancestorChainID[arg1][2].length)]), 
           uint8(ancestorChainID[arg1].field_768)
}

function getTokenPairInfoSlim(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = ancestorChainID[arg1][6].field_0
    idx = 128
    s = 0
    while ancestorChainID[arg1][6].length + 96 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return ancestorChainID[arg1].field_1280, 
           Array(len=ancestorChainID[arg1][6].length, data=mem[128 len ceil32(ancestorChainID[arg1][6].length)]),
           ancestorChainID[arg1].field_1792
}

function getTokenPairInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = ancestorChainID[arg1][6].field_0
    idx = 128
    s = 0
    while ancestorChainID[arg1][6].length + 96 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(ancestorChainID[arg1][6].length) + 160] = ancestorChainID[arg1][8].field_0
    idx = ceil32(ancestorChainID[arg1][6].length) + 160
    s = 0
    while ceil32(ancestorChainID[arg1][6].length) + ancestorChainID[arg1][8].length + 128 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(ancestorChainID[arg1][6].length) > ancestorChainID[arg1][6].length:
        mem[ceil32(ancestorChainID[arg1][6].length) + ceil32(ancestorChainID[arg1][8].length) + ancestorChainID[arg1][6].length + 320] = 0
    mem[(2 * ceil32(ancestorChainID[arg1][6].length)) + ceil32(ancestorChainID[arg1][8].length) + 320] = ancestorChainID[arg1][8].length
    return ancestorChainID[arg1].field_1280, 
           Array(len=ancestorChainID[arg1][6].length, data=mem[128 len ceil32(ancestorChainID[arg1][6].length)], ancestorChainID[arg1][8].length, mem[ceil32(ancestorChainID[arg1][6].length) + 160 len ceil32(ancestorChainID[arg1][8].length)]),
           ancestorChainID[arg1].field_1792,
           ceil32(ancestorChainID[arg1][6].length) + 160
}

function addToken(string arg1, string arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    mem[96 len 4999] = code.data[15453 len 4999]
    mem[5095] = 96
    mem[5191] = arg1.length
    mem[5223 len arg1.length] = arg1[all]
    mem[arg1.length + 5223] = 0
    mem[5127] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + 5223] = arg2.length
    mem[ceil32(arg1.length) + 5255 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + 5255] = 0
    mem[5159] = arg3
    create contract with 0 wei
                    code: code.data[15453 len 4999], 96, ceil32(arg1.length) + 128, arg3, arg1.length, arg1[all], 0, mem[arg1.length + 5255 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 256] = arg2.length
    mem[ceil32(arg1.length) + 288 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + 288] = 0
    emit AddToken(address rg1, string rg2, string rg3, uint8 rg4):
                  address(create.new_address),
                  128,
                  ceil32(arg1.length) + 160,
                  arg3,
                  arg1.length,
                  arg1[all],
                  0,
                  mem[arg1.length + 288 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length],
}

function updateToken(address arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    mem[196 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + 228 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg2.length) + 228] = 0
    require ext_code.size(arg1)
    call arg1.update(string rg1, string rg2) with:
         gas gas_remaining wei
        args 0, 64, ceil32(arg2.length) + 96, arg2.length, arg2[all], 0, mem[arg2.length + 228 len ceil32(arg2.length) - arg2.length], arg3[all], mem[ceil32(arg2.length) + arg3.length + 228 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192] = arg2.length
    mem[224 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 224] = arg3.length
    mem[ceil32(arg2.length) + 256 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg2.length) + 256] = 0
    emit UpdateToken(address rg1, string rg2, string rg3):
                     address(arg1),
                     96,
                     ceil32(arg2.length) + 128,
                     mem[192 len arg2.length + 4],
                     0,
                     0,
                     mem[arg2.length + 256 len ceil32(arg2.length) - arg2.length],
                     arg3[all],
                     mem[ceil32(arg2.length) + arg3.length + 256 len ceil32(arg3.length) - arg3.length],
}

function removeTokenPair(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if 0 >= ancestorChainID[arg1].field_1280:
        revert with 0, 'token not exist'
    idx = 0
    while idx < sub_d0ad718d:
        mem[0] = idx
        mem[32] = 7
        if arg1 != sub_58a007fb[idx]:
            idx = idx + 1
            continue 
        if idx != sub_d0ad718d - 1:
            sub_58a007fb[idx] = sub_58a007fb[stor5 - 1]
        sub_58a007fb[stor5 - 1] = 0
        sub_d0ad718d--
        ancestorChainID[arg1].field_0 = 0
        if 31 < ancestorChainID[arg1].length:
            idx = sha3(sha3(arg1, 6))
            while sha3(sha3(arg1, 6)) + (ancestorChainID[arg1].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        ancestorChainID[arg1].field_256 = 0
        if 31 < ancestorChainID[arg1][1].length:
            idx = sha3(sha3(arg1, 6) + 1)
            while sha3(sha3(arg1, 6) + 1) + (ancestorChainID[arg1][1].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        ancestorChainID[arg1].field_512 = 0
        if 31 < ancestorChainID[arg1][2].length:
            idx = sha3(sha3(arg1, 6) + 2)
            while sha3(sha3(arg1, 6) + 2) + (ancestorChainID[arg1][2].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        uint8(ancestorChainID[arg1].field_768) = 0
        ancestorChainID[arg1].field_1024 = 0
        ancestorChainID[arg1].field_1280 = 0
        ancestorChainID[arg1].field_1536 = 0
        if 31 < ancestorChainID[arg1][6].length:
            idx = sha3(sha3(arg1, 6) + 6)
            while sha3(sha3(arg1, 6) + 6) + (ancestorChainID[arg1][6].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        ancestorChainID[arg1].field_1792 = 0
        ancestorChainID[arg1].field_2048 = 0
        if 31 < ancestorChainID[arg1][8].length:
            idx = sha3(sha3(arg1, 6) + 8)
            while sha3(sha3(arg1, 6) + 8) + (ancestorChainID[arg1][8].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit RemoveTokenPair(arg1);
}

function getAncestorInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = ancestorChainID[arg1].field_0
    idx = 128
    s = 0
    while ancestorChainID[arg1].length + 96 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(ancestorChainID[arg1].length) + 160] = ancestorChainID[arg1][1].field_0
    idx = ceil32(ancestorChainID[arg1].length) + 160
    s = 0
    while ceil32(ancestorChainID[arg1].length) + ancestorChainID[arg1][1].length + 128 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + 192] = ancestorChainID[arg1][2].field_0
    idx = ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + 192
    s = 0
    while ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + ancestorChainID[arg1][2].length + 160 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(ancestorChainID[arg1].length) > ancestorChainID[arg1].length:
        mem[ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + ceil32(ancestorChainID[arg1][2].length) + ancestorChainID[arg1].length + 384] = 0
    mem[(2 * ceil32(ancestorChainID[arg1].length)) + ceil32(ancestorChainID[arg1][1].length) + ceil32(ancestorChainID[arg1][2].length) + 384] = ancestorChainID[arg1][1].length
    mem[(2 * ceil32(ancestorChainID[arg1].length)) + ceil32(ancestorChainID[arg1][1].length) + ceil32(ancestorChainID[arg1][2].length) + 416 len ceil32(ancestorChainID[arg1][1].length)] = mem[ceil32(ancestorChainID[arg1].length) + 160 len ceil32(ancestorChainID[arg1][1].length)]
    if ceil32(ancestorChainID[arg1][1].length) > ancestorChainID[arg1][1].length:
        mem[(2 * ceil32(ancestorChainID[arg1].length)) + ceil32(ancestorChainID[arg1][1].length) + ceil32(ancestorChainID[arg1][2].length) + ancestorChainID[arg1][1].length + 416] = 0
    mem[(2 * ceil32(ancestorChainID[arg1].length)) + (2 * ceil32(ancestorChainID[arg1][1].length)) + ceil32(ancestorChainID[arg1][2].length) + 416] = ancestorChainID[arg1][2].length
    mem[(2 * ceil32(ancestorChainID[arg1].length)) + (2 * ceil32(ancestorChainID[arg1][1].length)) + ceil32(ancestorChainID[arg1][2].length) + 448 len ceil32(ancestorChainID[arg1][2].length)] = mem[ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + 192 len ceil32(ancestorChainID[arg1][2].length)]
    if ceil32(ancestorChainID[arg1][2].length) > ancestorChainID[arg1][2].length:
        mem[(2 * ceil32(ancestorChainID[arg1].length)) + (2 * ceil32(ancestorChainID[arg1][1].length)) + ceil32(ancestorChainID[arg1][2].length) + ancestorChainID[arg1][2].length + 448] = 0
    return Array(len=ancestorChainID[arg1].length, data=mem[128 len ceil32(ancestorChainID[arg1].length)], ancestorChainID[arg1][1].length, mem[ceil32(ancestorChainID[arg1].length) + 160 len ceil32(ancestorChainID[arg1][1].length)], ancestorChainID[arg1][2].length, mem[ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + 192 len ceil32(ancestorChainID[arg1][2].length)]), 
           ceil32(ancestorChainID[arg1].length) + 192,
           ceil32(ancestorChainID[arg1].length) + ceil32(ancestorChainID[arg1][1].length) + 224,
           uint8(ancestorChainID[arg1].field_768),
           ancestorChainID[arg1].field_1024
}

function getTokenInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ancestorChainID[arg1].field_1280:
        return 0, 128, 160, 0, 0, 0
    mem[32] = 6
    mem[96] = ancestorChainID[arg1][8].length
    mem[0] = sha3(arg1, 6) + 8
    mem[128] = ancestorChainID[arg1][8].field_0
    idx = 128
    s = 0
    while ancestorChainID[arg1][8].length + 96 > idx:
        mem[idx + 32] = ancestorChainID[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _267 = Mask(96, 0, ancestorChainID[arg1][8].length), mem[128 len 20]
    mem[ceil32(ancestorChainID[arg1][8].length) + 128] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_267))
    call address(_267).name() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ancestorChainID[arg1][8].length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _282 = mem[ceil32(ancestorChainID[arg1][8].length) + 128]
    require mem[ceil32(ancestorChainID[arg1][8].length) + 128] <= test266151307()
    require ceil32(ancestorChainID[arg1][8].length) + return_data.size + 128 > ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 159
    _290 = mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128]
    require mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128] <= test266151307()
    require ceil32(mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128]) + 32 >= 0 and ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + ceil32(mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128]) + 160 <= test266151307()
    mem[64] = ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + ceil32(mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128]) + 160
    mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 128] = mem[ceil32(ancestorChainID[arg1][8].length) + mem[ceil32(ancestorChainID[arg1][8].length) + 128] + 128]
    require _282 + _290 + 32 <= return_data.size
    mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 160 len ceil32(_290)] = mem[ceil32(ancestorChainID[arg1][8].length) + _282 + 160 len ceil32(_290)]
    if ceil32(_290) <= _290:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_267))
        call address(_267).symbol() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _542 = mem[_534]
        require mem[_534] <= test266151307()
        require _534 + return_data.size > _534 + mem[_534] + 31
        _554 = mem[_534 + mem[_534]]
        require mem[_534 + mem[_534]] <= test266151307()
        require ceil32(mem[_534 + mem[_534]]) + 32 >= 0 and _534 + ceil32(return_data.size) + ceil32(mem[_534 + mem[_534]]) + 32 <= test266151307()
        mem[64] = _534 + ceil32(return_data.size) + ceil32(mem[_534 + mem[_534]]) + 32
        mem[_534 + ceil32(return_data.size)] = _554
        require _542 + _554 + 32 <= return_data.size
        mem[_534 + ceil32(return_data.size) + 32 len ceil32(_554)] = mem[_534 + _542 + 32 len ceil32(_554)]
        if ceil32(_554) <= _554:
            require ext_code.size(address(_267))
            call address(_267).decimals() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _728 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _748 = mem[_728]
            mem[mem[64]] = address(_267)
            mem[mem[64] + 32] = 128
            mem[mem[64] + 128] = _290
            mem[mem[64] + 160 len ceil32(_290)] = mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 160 len ceil32(_290)]
            if ceil32(_290) > _290:
                mem[mem[64] + _290 + 160] = 0
            mem[mem[64] + 64] = ceil32(_290) + 160
            mem[mem[64] + ceil32(_290) + 160] = _554
            mem[mem[64] + ceil32(_290) + 192 len ceil32(_554)] = mem[_534 + ceil32(return_data.size) + 32 len ceil32(_554)]
            if ceil32(_554) > _554:
                mem[mem[64] + ceil32(_290) + _554 + 192] = 0
            mem[mem[64] + 96] = uint8(_748)
            return address(_267), 
                   Array(len=_290, data=mem[mem[64] + 160 len ceil32(_290) + ceil32(_554) + 32]),
                   ceil32(_290) + 160,
                   uint8(_748)
        mem[_534 + ceil32(return_data.size) + _554 + 32] = 0
        require ext_code.size(address(_267))
        call address(_267).decimals() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _734 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _750 = mem[_734]
        mem[mem[64]] = address(_267)
        mem[mem[64] + 32] = 128
        mem[mem[64] + 128] = _290
        mem[mem[64] + 160 len ceil32(_290)] = mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 160 len ceil32(_290)]
        if ceil32(_290) > _290:
            mem[mem[64] + _290 + 160] = 0
        mem[mem[64] + 64] = ceil32(_290) + 160
        mem[mem[64] + ceil32(_290) + 160] = _554
        mem[mem[64] + ceil32(_290) + 192 len ceil32(_554)] = mem[_534 + ceil32(return_data.size) + 32 len ceil32(_554)]
        if ceil32(_554) > _554:
            mem[mem[64] + ceil32(_290) + _554 + 192] = 0
        mem[mem[64] + 96] = uint8(_750)
        return address(_267), 
               Array(len=_290, data=mem[mem[64] + 160 len ceil32(_290) + ceil32(_554) + 32]),
               ceil32(_290) + 160,
               uint8(_750)
    mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + _290 + 160] = 0
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_267))
    call address(_267).symbol() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _539 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _545 = mem[_539]
    require mem[_539] <= test266151307()
    require _539 + return_data.size > _539 + mem[_539] + 31
    _557 = mem[_539 + mem[_539]]
    require mem[_539 + mem[_539]] <= test266151307()
    require ceil32(mem[_539 + mem[_539]]) + 32 >= 0 and _539 + ceil32(return_data.size) + ceil32(mem[_539 + mem[_539]]) + 32 <= test266151307()
    mem[64] = _539 + ceil32(return_data.size) + ceil32(mem[_539 + mem[_539]]) + 32
    mem[_539 + ceil32(return_data.size)] = _557
    require _545 + _557 + 32 <= return_data.size
    mem[_539 + ceil32(return_data.size) + 32 len ceil32(_557)] = mem[_539 + _545 + 32 len ceil32(_557)]
    if ceil32(_557) <= _557:
        require ext_code.size(address(_267))
        call address(_267).decimals() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _729 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _749 = mem[_729]
        mem[mem[64]] = address(_267)
        mem[mem[64] + 32] = 128
        mem[mem[64] + 128] = _290
        mem[mem[64] + 160 len ceil32(_290)] = mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 160 len ceil32(_290)]
        if ceil32(_290) > _290:
            mem[mem[64] + _290 + 160] = 0
        mem[mem[64] + 64] = ceil32(_290) + 160
        mem[mem[64] + ceil32(_290) + 160] = _557
        mem[mem[64] + ceil32(_290) + 192 len ceil32(_557)] = mem[_539 + ceil32(return_data.size) + 32 len ceil32(_557)]
        if ceil32(_557) > _557:
            mem[mem[64] + ceil32(_290) + _557 + 192] = 0
        mem[mem[64] + 96] = uint8(_749)
        return address(_267), 
               Array(len=_290, data=mem[mem[64] + 160 len ceil32(_290) + ceil32(_557) + 32]),
               ceil32(_290) + 160,
               uint8(_749)
    mem[_539 + ceil32(return_data.size) + _557 + 32] = 0
    require ext_code.size(address(_267))
    call address(_267).decimals() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _735 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _751 = mem[_735]
    mem[mem[64]] = address(_267)
    mem[mem[64] + 32] = 128
    mem[mem[64] + 128] = _290
    mem[mem[64] + 160 len ceil32(_290)] = mem[ceil32(ancestorChainID[arg1][8].length) + ceil32(return_data.size) + 160 len ceil32(_290)]
    if ceil32(_290) > _290:
        mem[mem[64] + _290 + 160] = 0
    mem[mem[64] + 64] = ceil32(_290) + 160
    mem[mem[64] + ceil32(_290) + 160] = _557
    mem[mem[64] + ceil32(_290) + 192 len ceil32(_557)] = mem[_539 + ceil32(return_data.size) + 32 len ceil32(_557)]
    if ceil32(_557) > _557:
        mem[mem[64] + ceil32(_290) + _557 + 192] = 0
    mem[mem[64] + 96] = uint8(_751)
    return address(_267), 
           Array(len=_290, data=mem[mem[64] + 160 len ceil32(_290) + ceil32(_557) + 32]),
           ceil32(_290) + 160,
           uint8(_751)
}

function getTokenPairs() {
    mem[96] = sub_d0ad718d
    if not sub_d0ad718d:
        mem[(32 * sub_d0ad718d) + 128] = sub_d0ad718d
        mem[(64 * sub_d0ad718d) + 160] = sub_d0ad718d
        mem[(98 * sub_d0ad718d) + 192] = sub_d0ad718d
        mem[(131 * sub_d0ad718d) + 224] = sub_d0ad718d
        mem[(164 * sub_d0ad718d) + 256] = sub_d0ad718d
        mem[(197 * sub_d0ad718d) + 288] = sub_d0ad718d
        mem[(230 * sub_d0ad718d) + 320] = sub_d0ad718d
        mem[(263 * sub_d0ad718d) + 352] = sub_d0ad718d
        mem[(296 * sub_d0ad718d) + 384] = sub_d0ad718d
        mem[64] = (329 * sub_d0ad718d) + 416
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _9197 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_9197] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_9197 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _9197 + 32
            u = sha3(mem[0])
            while _9197 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _9197
            require s < mem[(98 * sub_d0ad718d) + 192]
            mem[(32 * s) + (98 * sub_d0ad718d) + 224] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _18481 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_18481] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_18481 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _18481 + 32
            u = sha3(mem[0])
            while _18481 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(131 * sub_d0ad718d) + 224]
            mem[(131 * sub_d0ad718d) + (32 * s) + 256] = _18481
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _27428 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_27428] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_27428 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _27428 + 32
            u = sha3(mem[0])
            while _27428 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(164 * sub_d0ad718d) + 256]
            mem[(164 * sub_d0ad718d) + (32 * s) + 288] = _27428
            require s < mem[(197 * sub_d0ad718d) + 288]
            mem[(197 * sub_d0ad718d) + (32 * s) + 320] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _35852 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_35852] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_35852 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _35852 + 32
            u = sha3(mem[0])
            while _35852 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(230 * sub_d0ad718d) + 320]
            mem[(32 * s) + (230 * sub_d0ad718d) + 352] = _35852
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _42759 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_42759] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_42759 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _42759 + 32
            u = sha3(mem[0])
            while _42759 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(263 * sub_d0ad718d) + 352]
            mem[(263 * sub_d0ad718d) + (32 * s) + 384] = _42759
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[(296 * sub_d0ad718d) + 384]
            mem[(296 * sub_d0ad718d) + (32 * s) + 416] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _9192 = mem[64]
        mem[mem[64]] = 320
        _9202 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _18470 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _18470] = mem[(32 * sub_d0ad718d) + 160 len 32 * _18470]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _18470) + 384
        _27542 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _18470) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _18470) + (32 * _27542) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _18470) + 416
        while idx < _27542:
            mem[u] = t + -_9192 + -(32 * _9202) + -(32 * _18470) - 416
            _35501 = mem[s]
            _35621 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _35621:
                mem[v + t + 32] = mem[v + _35501 + 32]
                v = v + 32
                continue 
            if ceil32(_35621) > _35621:
                mem[t + _35621 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_35621) + 32
            u = u + 32
            continue 
        mem[_9192 + 96] = t - _9192
        _35847 = mem[(98 * sub_d0ad718d) + 192]
        mem[t] = mem[(98 * sub_d0ad718d) + 192]
        mem[t + 32 len 32 * _35847] = mem[(98 * sub_d0ad718d) + 224 len 32 * _35847]
        mem[_9192 + 128] = t + (32 * _35847) + -_9192 + 32
        _42993 = mem[(131 * sub_d0ad718d) + 224]
        mem[t + (32 * _35847) + 32] = mem[(131 * sub_d0ad718d) + 224]
        idx = 0
        s = (131 * sub_d0ad718d) + 256
        u = t + (32 * _35847) + (32 * _42993) + 64
        v = t + (32 * _35847) + 64
        while idx < _42993:
            mem[v] = u + -t + -(32 * _35847) - 64
            _48487 = mem[s]
            _48624 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _48624:
                mem[t + u + 32] = mem[t + _48487 + 32]
                t = t + 32
                continue 
            if ceil32(_48624) > _48624:
                mem[u + _48624 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_48624) + 32
            v = v + 32
            continue 
        mem[_9192 + 160] = u - _9192
        _48872 = mem[(164 * sub_d0ad718d) + 256]
        mem[u] = mem[(164 * sub_d0ad718d) + 256]
        idx = 0
        s = (164 * sub_d0ad718d) + 288
        t = u + (32 * _48872) + 32
        v = u + 32
        while idx < _48872:
            mem[v] = t + -u - 32
            _53069 = mem[s]
            _53230 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _53230:
                mem[u + t + 32] = mem[u + _53069 + 32]
                u = u + 32
                continue 
            if ceil32(_53230) > _53230:
                mem[t + _53230 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_53230) + 32
            v = v + 32
            continue 
        mem[_9192 + 192] = t - _9192
        _53537 = mem[(197 * sub_d0ad718d) + 288]
        mem[t] = mem[(197 * sub_d0ad718d) + 288]
        idx = 0
        s = (197 * sub_d0ad718d) + 320
        u = t + 32
        while idx < _53537:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_9192 + 224] = t + (32 * _53537) + -_9192 + 32
        _56545 = mem[(230 * sub_d0ad718d) + 320]
        mem[t + (32 * _53537) + 32] = mem[(230 * sub_d0ad718d) + 320]
        idx = 0
        s = (230 * sub_d0ad718d) + 352
        u = t + (32 * _53537) + (32 * _56545) + 64
        v = t + (32 * _53537) + 64
        while idx < _56545:
            mem[v] = u + -t + -(32 * _53537) - 64
            _57647 = mem[s]
            _57729 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _57729:
                mem[t + u + 32] = mem[t + _57647 + 32]
                t = t + 32
                continue 
            if ceil32(_57729) > _57729:
                mem[u + _57729 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_57729) + 32
            v = v + 32
            continue 
        mem[_9192 + 256] = u - _9192
        _57878 = mem[(263 * sub_d0ad718d) + 352]
        mem[u] = mem[(263 * sub_d0ad718d) + 352]
        idx = 0
        s = (263 * sub_d0ad718d) + 384
        t = u + (32 * _57878) + 32
        v = u + 32
        while idx < _57878:
            mem[v] = t + -u - 32
            _58212 = mem[s]
            _58243 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58243:
                mem[u + t + 32] = mem[u + _58212 + 32]
                u = u + 32
                continue 
            if ceil32(_58243) > _58243:
                mem[t + _58243 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58243) + 32
            v = v + 32
            continue 
        mem[_9192 + 288] = t - _9192
        _58285 = mem[(296 * sub_d0ad718d) + 384]
        mem[t] = mem[(296 * sub_d0ad718d) + 384]
        mem[t + 32 len 32 * _58285] = mem[(296 * sub_d0ad718d) + 416 len 32 * _58285]
        return memory
          from mem[64]
           len t + (32 * _58285) + -mem[64] + 32
    mem[128 len 32 * sub_d0ad718d] = code.data[15453 len 32 * sub_d0ad718d]
    mem[(32 * sub_d0ad718d) + 128] = sub_d0ad718d
    mem[(32 * sub_d0ad718d) + 160 len 32 * sub_d0ad718d] = code.data[15453 len 32 * sub_d0ad718d]
    mem[(64 * sub_d0ad718d) + 160] = sub_d0ad718d
    mem[64] = (98 * sub_d0ad718d) + 192
    mem[(64 * sub_d0ad718d) + 192] = 96
    s = (64 * sub_d0ad718d) + 192
    idx = sub_d0ad718d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _9195 = mem[64]
    if not sub_d0ad718d:
        _9198 = mem[64] + (32 * sub_d0ad718d) + 32
        mem[mem[64] + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[_9198 + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[_9198 + (64 * sub_d0ad718d) + 64] = sub_d0ad718d
        mem[_9198 + (98 * sub_d0ad718d) + 96] = sub_d0ad718d
        mem[_9198 + (131 * sub_d0ad718d) + 128] = sub_d0ad718d
        mem[_9198 + (164 * sub_d0ad718d) + 160] = sub_d0ad718d
        mem[64] = _9198 + (197 * sub_d0ad718d) + 192
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _18468 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_18468] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_18468 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _18468 + 32
            u = sha3(mem[0])
            while _18468 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _18468
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9195]
            mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _27575 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_27575] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_27575 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _27575 + 32
            u = sha3(mem[0])
            while _27575 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9198]
            mem[_9198 + (32 * s) + 32] = _27575
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _35733 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_35733] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_35733 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _35733 + 32
            u = sha3(mem[0])
            while _35733 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9198 + (32 * sub_d0ad718d) + 32]
            mem[_9198 + (32 * sub_d0ad718d) + (32 * s) + 64] = _35733
            require s < mem[_9198 + (64 * sub_d0ad718d) + 64]
            mem[_9198 + (64 * sub_d0ad718d) + (32 * s) + 96] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _43000 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_43000] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_43000 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _43000 + 32
            u = sha3(mem[0])
            while _43000 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9198 + (98 * sub_d0ad718d) + 96]
            mem[(32 * s) + _9198 + (98 * sub_d0ad718d) + 128] = _43000
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _48636 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_48636] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_48636 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _48636 + 32
            u = sha3(mem[0])
            while _48636 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9198 + (131 * sub_d0ad718d) + 128]
            mem[_9198 + (131 * sub_d0ad718d) + (32 * s) + 160] = _48636
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9198 + (164 * sub_d0ad718d) + 160]
            mem[_9198 + (164 * sub_d0ad718d) + (32 * s) + 192] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _18401 = mem[64]
        mem[mem[64]] = 320
        _18528 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _27564 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _27564] = mem[(32 * sub_d0ad718d) + 160 len 32 * _27564]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _27564) + 384
        _35856 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _27564) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _27564) + (32 * _35856) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _27564) + 416
        while idx < _35856:
            mem[u] = t + -_18401 + -(32 * _18528) + -(32 * _27564) - 416
            _42621 = mem[s]
            _42768 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _42768:
                mem[v + t + 32] = mem[v + _42621 + 32]
                v = v + 32
                continue 
            if ceil32(_42768) > _42768:
                mem[t + _42768 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_42768) + 32
            u = u + 32
            continue 
        mem[_18401 + 96] = t - _18401
        _42995 = mem[_9195]
        mem[t] = mem[_9195]
        mem[t + 32 len 32 * _42995] = mem[_9195 + 32 len 32 * _42995]
        mem[_18401 + 128] = t + (32 * _42995) + -_18401 + 32
        _48873 = mem[_9198]
        mem[t + (32 * _42995) + 32] = mem[_9198]
        idx = 0
        s = _9198 + 32
        u = t + (32 * _42995) + (32 * _48873) + 64
        v = t + (32 * _42995) + 64
        while idx < _48873:
            mem[v] = u + -t + -(32 * _42995) - 64
            _53071 = mem[s]
            _53231 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _53231:
                mem[t + u + 32] = mem[t + _53071 + 32]
                t = t + 32
                continue 
            if ceil32(_53231) > _53231:
                mem[u + _53231 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_53231) + 32
            v = v + 32
            continue 
        mem[_18401 + 160] = u - _18401
        _53538 = mem[_9198 + (32 * sub_d0ad718d) + 32]
        mem[u] = mem[_9198 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _9198 + (32 * sub_d0ad718d) + 64
        t = u + (32 * _53538) + 32
        v = u + 32
        while idx < _53538:
            mem[v] = t + -u - 32
            _56117 = mem[s]
            _56264 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _56264:
                mem[u + t + 32] = mem[u + _56117 + 32]
                u = u + 32
                continue 
            if ceil32(_56264) > _56264:
                mem[t + _56264 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_56264) + 32
            v = v + 32
            continue 
        mem[_18401 + 192] = t - _18401
        _56546 = mem[_9198 + (64 * sub_d0ad718d) + 64]
        mem[t] = mem[_9198 + (64 * sub_d0ad718d) + 64]
        idx = 0
        s = _9198 + (64 * sub_d0ad718d) + 96
        u = t + 32
        while idx < _56546:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_18401 + 224] = t + (32 * _56546) + -_18401 + 32
        _57879 = mem[_9198 + (98 * sub_d0ad718d) + 96]
        mem[t + (32 * _56546) + 32] = mem[_9198 + (98 * sub_d0ad718d) + 96]
        idx = 0
        s = _9198 + (98 * sub_d0ad718d) + 128
        u = t + (32 * _56546) + (32 * _57879) + 64
        v = t + (32 * _56546) + 64
        while idx < _57879:
            mem[v] = u + -t + -(32 * _56546) - 64
            _58214 = mem[s]
            _58244 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58244:
                mem[t + u + 32] = mem[t + _58214 + 32]
                t = t + 32
                continue 
            if ceil32(_58244) > _58244:
                mem[u + _58244 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58244) + 32
            v = v + 32
            continue 
        mem[_18401 + 256] = u - _18401
        _58286 = mem[_9198 + (131 * sub_d0ad718d) + 128]
        mem[u] = mem[_9198 + (131 * sub_d0ad718d) + 128]
        idx = 0
        s = _9198 + (131 * sub_d0ad718d) + 160
        t = u + (32 * _58286) + 32
        v = u + 32
        while idx < _58286:
            mem[v] = t + -u - 32
            _58404 = mem[s]
            _58416 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58416:
                mem[u + t + 32] = mem[u + _58404 + 32]
                u = u + 32
                continue 
            if ceil32(_58416) > _58416:
                mem[t + _58416 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58416) + 32
            v = v + 32
            continue 
        mem[_18401 + 288] = t - _18401
        _58425 = mem[_9198 + (164 * sub_d0ad718d) + 160]
        mem[t] = mem[_9198 + (164 * sub_d0ad718d) + 160]
        mem[t + 32 len 32 * _58425] = mem[_9198 + (164 * sub_d0ad718d) + 192 len 32 * _58425]
        return memory
          from mem[64]
           len t + (32 * _58425) + -mem[64] + 32
    mem[mem[64] + 32 len 32 * sub_d0ad718d] = code.data[15453 len 32 * sub_d0ad718d]
    mem[mem[64] + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
    mem[64] = _9195 + (64 * sub_d0ad718d) + 64
    mem[_9195 + (32 * sub_d0ad718d) + 64] = 96
    s = _9195 + (32 * sub_d0ad718d) + 64
    idx = sub_d0ad718d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _18404 = mem[64]
    mem[64] = mem[64] + (32 * sub_d0ad718d) + 32
    if not sub_d0ad718d:
        mem[_18404 + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[_18404 + (64 * sub_d0ad718d) + 64] = sub_d0ad718d
        mem[_18404 + (98 * sub_d0ad718d) + 96] = sub_d0ad718d
        mem[_18404 + (131 * sub_d0ad718d) + 128] = sub_d0ad718d
        mem[64] = _18404 + (164 * sub_d0ad718d) + 160
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _27540 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_27540] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_27540 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _27540 + 32
            u = sha3(mem[0])
            while _27540 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _27540
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9195]
            mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _35889 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_35889] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_35889 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _35889 + 32
            u = sha3(mem[0])
            while _35889 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9195 + (32 * sub_d0ad718d) + 32]
            mem[_9195 + (32 * sub_d0ad718d) + (32 * s) + 64] = _35889
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _42880 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_42880] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_42880 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _42880 + 32
            u = sha3(mem[0])
            while _42880 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404]
            mem[_18404 + (32 * s) + 32] = _42880
            mem[32] = 6
            require s < mem[_18404 + (32 * sub_d0ad718d) + 32]
            mem[_18404 + (32 * sub_d0ad718d) + (32 * s) + 64] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _48880 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_48880] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_48880 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _48880 + 32
            u = sha3(mem[0])
            while _48880 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404 + (64 * sub_d0ad718d) + 64]
            mem[(32 * s) + _18404 + (64 * sub_d0ad718d) + 96] = _48880
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _53243 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_53243] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_53243 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _53243 + 32
            u = sha3(mem[0])
            while _53243 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404 + (98 * sub_d0ad718d) + 96]
            mem[_18404 + (98 * sub_d0ad718d) + (32 * s) + 128] = _53243
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_18404 + (131 * sub_d0ad718d) + 128]
            mem[_18404 + (131 * sub_d0ad718d) + (32 * s) + 160] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _27375 = mem[64]
        mem[mem[64]] = 320
        _27666 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _35878 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _35878] = mem[(32 * sub_d0ad718d) + 160 len 32 * _35878]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _35878) + 384
        _43004 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _35878) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _35878) + (32 * _43004) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _35878) + 416
        while idx < _43004:
            mem[u] = t + -_27375 + -(32 * _27666) + -(32 * _35878) - 416
            _48490 = mem[s]
            _48645 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _48645:
                mem[v + t + 32] = mem[v + _48490 + 32]
                v = v + 32
                continue 
            if ceil32(_48645) > _48645:
                mem[t + _48645 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_48645) + 32
            u = u + 32
            continue 
        mem[_27375 + 96] = t - _27375
        _48875 = mem[_9195]
        mem[t] = mem[_9195]
        mem[t + 32 len 32 * _48875] = mem[_9195 + 32 len 32 * _48875]
        mem[_27375 + 128] = t + (32 * _48875) + -_27375 + 32
        _53539 = mem[_9195 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _48875) + 32] = mem[_9195 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _9195 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _48875) + (32 * _53539) + 64
        v = t + (32 * _48875) + 64
        while idx < _53539:
            mem[v] = u + -t + -(32 * _48875) - 64
            _56119 = mem[s]
            _56265 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _56265:
                mem[t + u + 32] = mem[t + _56119 + 32]
                t = t + 32
                continue 
            if ceil32(_56265) > _56265:
                mem[u + _56265 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_56265) + 32
            v = v + 32
            continue 
        mem[_27375 + 160] = u - _27375
        _56547 = mem[_18404]
        mem[u] = mem[_18404]
        idx = 0
        s = _18404 + 32
        t = u + (32 * _56547) + 32
        v = u + 32
        while idx < _56547:
            mem[v] = t + -u - 32
            _57650 = mem[s]
            _57730 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _57730:
                mem[u + t + 32] = mem[u + _57650 + 32]
                u = u + 32
                continue 
            if ceil32(_57730) > _57730:
                mem[t + _57730 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_57730) + 32
            v = v + 32
            continue 
        mem[_27375 + 192] = t - _27375
        _57880 = mem[_18404 + (32 * sub_d0ad718d) + 32]
        mem[t] = mem[_18404 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _18404 + (32 * sub_d0ad718d) + 64
        u = t + 32
        while idx < _57880:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_27375 + 224] = t + (32 * _57880) + -_27375 + 32
        _58287 = mem[_18404 + (64 * sub_d0ad718d) + 64]
        mem[t + (32 * _57880) + 32] = mem[_18404 + (64 * sub_d0ad718d) + 64]
        idx = 0
        s = _18404 + (64 * sub_d0ad718d) + 96
        u = t + (32 * _57880) + (32 * _58287) + 64
        v = t + (32 * _57880) + 64
        while idx < _58287:
            mem[v] = u + -t + -(32 * _57880) - 64
            _58406 = mem[s]
            _58417 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58417:
                mem[t + u + 32] = mem[t + _58406 + 32]
                t = t + 32
                continue 
            if ceil32(_58417) > _58417:
                mem[u + _58417 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58417) + 32
            v = v + 32
            continue 
        mem[_27375 + 256] = u - _27375
        _58426 = mem[_18404 + (98 * sub_d0ad718d) + 96]
        mem[u] = mem[_18404 + (98 * sub_d0ad718d) + 96]
        idx = 0
        s = _18404 + (98 * sub_d0ad718d) + 128
        t = u + (32 * _58426) + 32
        v = u + 32
        while idx < _58426:
            mem[v] = t + -u - 32
            _58500 = mem[s]
            _58510 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58510:
                mem[u + t + 32] = mem[u + _58500 + 32]
                u = u + 32
                continue 
            if ceil32(_58510) > _58510:
                mem[t + _58510 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58510) + 32
            v = v + 32
            continue 
        mem[_27375 + 288] = t - _27375
        _58514 = mem[_18404 + (131 * sub_d0ad718d) + 128]
        mem[t] = mem[_18404 + (131 * sub_d0ad718d) + 128]
        mem[t + 32 len 32 * _58514] = mem[_18404 + (131 * sub_d0ad718d) + 160 len 32 * _58514]
        return memory
          from mem[64]
           len t + (32 * _58514) + -mem[64] + 32
    mem[_18404 + 32] = 96
    s = _18404 + 32
    idx = sub_d0ad718d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _27378 = mem[64]
    if not sub_d0ad718d:
        _27541 = mem[64] + (32 * sub_d0ad718d) + 32
        mem[mem[64] + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[_27541 + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[_27541 + (64 * sub_d0ad718d) + 64] = sub_d0ad718d
        mem[64] = _27541 + (98 * sub_d0ad718d) + 96
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _35845 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_35845] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_35845 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _35845 + 32
            u = sha3(mem[0])
            while _35845 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _35845
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9195]
            mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _43037 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_43037] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_43037 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _43037 + 32
            u = sha3(mem[0])
            while _43037 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9195 + (32 * sub_d0ad718d) + 32]
            mem[_9195 + (32 * sub_d0ad718d) + (32 * s) + 64] = _43037
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _48757 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_48757] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_48757 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _48757 + 32
            u = sha3(mem[0])
            while _48757 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404]
            mem[_18404 + (32 * s) + 32] = _48757
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_27378]
            mem[_27378 + (32 * s) + 32] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _53546 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_53546] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_53546 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _53546 + 32
            u = sha3(mem[0])
            while _53546 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_27541]
            mem[(32 * s) + _27541 + 32] = _53546
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _56277 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_56277] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_56277 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _56277 + 32
            u = sha3(mem[0])
            while _56277 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_27541 + (32 * sub_d0ad718d) + 32]
            mem[_27541 + (32 * sub_d0ad718d) + (32 * s) + 64] = _56277
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_27541 + (64 * sub_d0ad718d) + 64]
            mem[_27541 + (64 * sub_d0ad718d) + (32 * s) + 96] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _35617 = mem[64]
        mem[mem[64]] = 320
        _35997 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _43026 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _43026] = mem[(32 * sub_d0ad718d) + 160 len 32 * _43026]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _43026) + 384
        _48884 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _43026) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _43026) + (32 * _48884) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _43026) + 416
        while idx < _48884:
            mem[u] = t + -_35617 + -(32 * _35997) + -(32 * _43026) - 416
            _53074 = mem[s]
            _53252 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _53252:
                mem[v + t + 32] = mem[v + _53074 + 32]
                v = v + 32
                continue 
            if ceil32(_53252) > _53252:
                mem[t + _53252 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_53252) + 32
            u = u + 32
            continue 
        mem[_35617 + 96] = t - _35617
        _53541 = mem[_9195]
        mem[t] = mem[_9195]
        mem[t + 32 len 32 * _53541] = mem[_9195 + 32 len 32 * _53541]
        mem[_35617 + 128] = t + (32 * _53541) + -_35617 + 32
        _56548 = mem[_9195 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _53541) + 32] = mem[_9195 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _9195 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _53541) + (32 * _56548) + 64
        v = t + (32 * _53541) + 64
        while idx < _56548:
            mem[v] = u + -t + -(32 * _53541) - 64
            _57652 = mem[s]
            _57731 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _57731:
                mem[t + u + 32] = mem[t + _57652 + 32]
                t = t + 32
                continue 
            if ceil32(_57731) > _57731:
                mem[u + _57731 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_57731) + 32
            v = v + 32
            continue 
        mem[_35617 + 160] = u - _35617
        _57881 = mem[_18404]
        mem[u] = mem[_18404]
        idx = 0
        s = _18404 + 32
        t = u + (32 * _57881) + 32
        v = u + 32
        while idx < _57881:
            mem[v] = t + -u - 32
            _58217 = mem[s]
            _58245 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58245:
                mem[u + t + 32] = mem[u + _58217 + 32]
                u = u + 32
                continue 
            if ceil32(_58245) > _58245:
                mem[t + _58245 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58245) + 32
            v = v + 32
            continue 
        mem[_35617 + 192] = t - _35617
        _58288 = mem[_27378]
        mem[t] = mem[_27378]
        idx = 0
        s = _27378 + 32
        u = t + 32
        while idx < _58288:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_35617 + 224] = t + (32 * _58288) + -_35617 + 32
        _58427 = mem[_27541]
        mem[t + (32 * _58288) + 32] = mem[_27541]
        idx = 0
        s = _27541 + 32
        u = t + (32 * _58288) + (32 * _58427) + 64
        v = t + (32 * _58288) + 64
        while idx < _58427:
            mem[v] = u + -t + -(32 * _58288) - 64
            _58502 = mem[s]
            _58511 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58511:
                mem[t + u + 32] = mem[t + _58502 + 32]
                t = t + 32
                continue 
            if ceil32(_58511) > _58511:
                mem[u + _58511 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58511) + 32
            v = v + 32
            continue 
        mem[_35617 + 256] = u - _35617
        _58515 = mem[_27541 + (32 * sub_d0ad718d) + 32]
        mem[u] = mem[_27541 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _27541 + (32 * sub_d0ad718d) + 64
        t = u + (32 * _58515) + 32
        v = u + 32
        while idx < _58515:
            mem[v] = t + -u - 32
            _58567 = mem[s]
            _58575 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58575:
                mem[u + t + 32] = mem[u + _58567 + 32]
                u = u + 32
                continue 
            if ceil32(_58575) > _58575:
                mem[t + _58575 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58575) + 32
            v = v + 32
            continue 
        mem[_35617 + 288] = t - _35617
        _58577 = mem[_27541 + (64 * sub_d0ad718d) + 64]
        mem[t] = mem[_27541 + (64 * sub_d0ad718d) + 64]
        mem[t + 32 len 32 * _58577] = mem[_27541 + (64 * sub_d0ad718d) + 96 len 32 * _58577]
        return memory
          from mem[64]
           len t + (32 * _58577) + -mem[64] + 32
    mem[mem[64] + 32 len 32 * sub_d0ad718d] = code.data[15453 len 32 * sub_d0ad718d]
    mem[mem[64] + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
    mem[64] = _27378 + (64 * sub_d0ad718d) + 64
    mem[_27378 + (32 * sub_d0ad718d) + 64] = 96
    s = _27378 + (32 * sub_d0ad718d) + 64
    idx = sub_d0ad718d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _35620 = mem[64]
    mem[64] = mem[64] + (32 * sub_d0ad718d) + 32
    if not sub_d0ad718d:
        mem[_35620 + (32 * sub_d0ad718d) + 32] = sub_d0ad718d
        mem[64] = _35620 + (64 * sub_d0ad718d) + 64
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _42992 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_42992] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_42992 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _42992 + 32
            u = sha3(mem[0])
            while _42992 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _42992
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9195]
            mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _48917 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_48917] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_48917 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _48917 + 32
            u = sha3(mem[0])
            while _48917 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9195 + (32 * sub_d0ad718d) + 32]
            mem[_9195 + (32 * sub_d0ad718d) + (32 * s) + 64] = _48917
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _53364 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_53364] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_53364 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _53364 + 32
            u = sha3(mem[0])
            while _53364 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404]
            mem[_18404 + (32 * s) + 32] = _53364
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_27378]
            mem[_27378 + (32 * s) + 32] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _56555 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_56555] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_56555 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _56555 + 32
            u = sha3(mem[0])
            while _56555 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_27378 + (32 * sub_d0ad718d) + 32]
            mem[(32 * s) + _27378 + (32 * sub_d0ad718d) + 64] = _56555
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _57743 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_57743] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_57743 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _57743 + 32
            u = sha3(mem[0])
            while _57743 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_35620]
            mem[_35620 + (32 * s) + 32] = _57743
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_35620 + (32 * sub_d0ad718d) + 32]
            mem[_35620 + (32 * sub_d0ad718d) + (32 * s) + 64] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _42746 = mem[64]
        mem[mem[64]] = 320
        _43148 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _48906 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _48906] = mem[(32 * sub_d0ad718d) + 160 len 32 * _48906]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _48906) + 384
        _53550 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _48906) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _48906) + (32 * _53550) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _48906) + 416
        while idx < _53550:
            mem[u] = t + -_42746 + -(32 * _43148) + -(32 * _48906) - 416
            _56122 = mem[s]
            _56286 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _56286:
                mem[v + t + 32] = mem[v + _56122 + 32]
                v = v + 32
                continue 
            if ceil32(_56286) > _56286:
                mem[t + _56286 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_56286) + 32
            u = u + 32
            continue 
        mem[_42746 + 96] = t - _42746
        _56550 = mem[_9195]
        mem[t] = mem[_9195]
        mem[t + 32 len 32 * _56550] = mem[_9195 + 32 len 32 * _56550]
        mem[_42746 + 128] = t + (32 * _56550) + -_42746 + 32
        _57882 = mem[_9195 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _56550) + 32] = mem[_9195 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _9195 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _56550) + (32 * _57882) + 64
        v = t + (32 * _56550) + 64
        while idx < _57882:
            mem[v] = u + -t + -(32 * _56550) - 64
            _58219 = mem[s]
            _58246 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58246:
                mem[t + u + 32] = mem[t + _58219 + 32]
                t = t + 32
                continue 
            if ceil32(_58246) > _58246:
                mem[u + _58246 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58246) + 32
            v = v + 32
            continue 
        mem[_42746 + 160] = u - _42746
        _58289 = mem[_18404]
        mem[u] = mem[_18404]
        idx = 0
        s = _18404 + 32
        t = u + (32 * _58289) + 32
        v = u + 32
        while idx < _58289:
            mem[v] = t + -u - 32
            _58409 = mem[s]
            _58418 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58418:
                mem[u + t + 32] = mem[u + _58409 + 32]
                u = u + 32
                continue 
            if ceil32(_58418) > _58418:
                mem[t + _58418 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58418) + 32
            v = v + 32
            continue 
        mem[_42746 + 192] = t - _42746
        _58428 = mem[_27378]
        mem[t] = mem[_27378]
        idx = 0
        s = _27378 + 32
        u = t + 32
        while idx < _58428:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_42746 + 224] = t + (32 * _58428) + -_42746 + 32
        _58516 = mem[_27378 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _58428) + 32] = mem[_27378 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _27378 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _58428) + (32 * _58516) + 64
        v = t + (32 * _58428) + 64
        while idx < _58516:
            mem[v] = u + -t + -(32 * _58428) - 64
            _58569 = mem[s]
            _58576 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58576:
                mem[t + u + 32] = mem[t + _58569 + 32]
                t = t + 32
                continue 
            if ceil32(_58576) > _58576:
                mem[u + _58576 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58576) + 32
            v = v + 32
            continue 
        mem[_42746 + 256] = u - _42746
        _58578 = mem[_35620]
        mem[u] = mem[_35620]
        idx = 0
        s = _35620 + 32
        t = u + (32 * _58578) + 32
        v = u + 32
        while idx < _58578:
            mem[v] = t + -u - 32
            _58613 = mem[s]
            _58618 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58618:
                mem[u + t + 32] = mem[u + _58613 + 32]
                u = u + 32
                continue 
            if ceil32(_58618) > _58618:
                mem[t + _58618 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58618) + 32
            v = v + 32
            continue 
        mem[_42746 + 288] = t - _42746
        _58621 = mem[_35620 + (32 * sub_d0ad718d) + 32]
        mem[t] = mem[_35620 + (32 * sub_d0ad718d) + 32]
        mem[t + 32 len 32 * _58621] = mem[_35620 + (32 * sub_d0ad718d) + 64 len 32 * _58621]
        return memory
          from mem[64]
           len t + (32 * _58621) + -mem[64] + 32
    mem[_35620 + 32] = 96
    s = _35620 + 32
    idx = sub_d0ad718d
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _42749 = mem[64]
    mem[mem[64]] = sub_d0ad718d
    mem[64] = mem[64] + (32 * sub_d0ad718d) + 32
    if not sub_d0ad718d:
        idx = 0
        s = 0
        t = 0
        while idx < sub_d0ad718d:
            require s < mem[96]
            mem[(32 * s) + 128] = sub_58a007fb[idx]
            require s < mem[(32 * sub_d0ad718d) + 128]
            mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _48869 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
            mem[_48869] = ancestorChainID[stor7[idx]][6].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 6
            mem[_48869 + 32] = ancestorChainID[stor7[idx]][6].field_0
            t = _48869 + 32
            u = sha3(mem[0])
            while _48869 + ancestorChainID[stor7[idx]][6].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[(64 * sub_d0ad718d) + 160]
            mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _48869
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_9195]
            mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _53583 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
            mem[_53583] = ancestorChainID[stor7[idx]][8].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 8
            mem[_53583 + 32] = ancestorChainID[stor7[idx]][8].field_0
            t = _53583 + 32
            u = sha3(mem[0])
            while _53583 + ancestorChainID[stor7[idx]][8].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_9195 + (32 * sub_d0ad718d) + 32]
            mem[_9195 + (32 * sub_d0ad718d) + (32 * s) + 64] = _53583
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _56398 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
            mem[_56398] = ancestorChainID[stor7[idx]][2].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 2
            mem[_56398 + 32] = ancestorChainID[stor7[idx]][2].field_0
            t = _56398 + 32
            u = sha3(mem[0])
            while _56398 + ancestorChainID[stor7[idx]][2].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_18404]
            mem[_18404 + (32 * s) + 32] = _56398
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_27378]
            mem[_27378 + (32 * s) + 32] = uint8(ancestorChainID[stor7[idx]].field_768)
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _57889 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
            mem[_57889] = ancestorChainID[stor7[idx]].length
            mem[0] = sha3(sub_58a007fb[idx], 6)
            mem[_57889 + 32] = ancestorChainID[stor7[idx]].field_0
            t = _57889 + 32
            u = sha3(mem[0])
            while _57889 + ancestorChainID[stor7[idx]].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_27378 + (32 * sub_d0ad718d) + 32]
            mem[(32 * s) + _27378 + (32 * sub_d0ad718d) + 64] = _57889
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            _58258 = mem[64]
            mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
            mem[_58258] = ancestorChainID[stor7[idx]][1].length
            mem[0] = sha3(sub_58a007fb[idx], 6) + 1
            mem[_58258 + 32] = ancestorChainID[stor7[idx]][1].field_0
            t = _58258 + 32
            u = sha3(mem[0])
            while _58258 + ancestorChainID[stor7[idx]][1].length > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require s < mem[_35620]
            mem[_35620 + (32 * s) + 32] = _58258
            mem[0] = sub_58a007fb[idx]
            mem[32] = 6
            require s < mem[_42749]
            mem[_42749 + (32 * s) + 32] = ancestorChainID[stor7[idx]].field_1024
            idx = idx + 1
            s = s + 1
            t = sub_58a007fb[idx]
            continue 
        _48618 = mem[64]
        mem[mem[64]] = 320
        _49029 = mem[96]
        mem[mem[64] + 320] = mem[96]
        mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 352
        _53572 = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
        mem[mem[64] + (32 * mem[96]) + 384 len 32 * _53572] = mem[(32 * sub_d0ad718d) + 160 len 32 * _53572]
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _53572) + 384
        _56559 = mem[(64 * sub_d0ad718d) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _53572) + 384] = mem[(64 * sub_d0ad718d) + 160]
        idx = 0
        s = (64 * sub_d0ad718d) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _53572) + (32 * _56559) + 416
        u = mem[64] + (32 * mem[96]) + (32 * _53572) + 416
        while idx < _56559:
            mem[u] = t + -_48618 + -(32 * _49029) + -(32 * _53572) - 416
            _57655 = mem[s]
            _57752 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _57752:
                mem[v + t + 32] = mem[v + _57655 + 32]
                v = v + 32
                continue 
            if ceil32(_57752) > _57752:
                mem[t + _57752 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_57752) + 32
            u = u + 32
            continue 
        mem[_48618 + 96] = t - _48618
        _57884 = mem[_9195]
        mem[t] = mem[_9195]
        mem[t + 32 len 32 * _57884] = mem[_9195 + 32 len 32 * _57884]
        mem[_48618 + 128] = t + (32 * _57884) + -_48618 + 32
        _58290 = mem[_9195 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _57884) + 32] = mem[_9195 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _9195 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _57884) + (32 * _58290) + 64
        v = t + (32 * _57884) + 64
        while idx < _58290:
            mem[v] = u + -t + -(32 * _57884) - 64
            _58411 = mem[s]
            _58419 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58419:
                mem[t + u + 32] = mem[t + _58411 + 32]
                t = t + 32
                continue 
            if ceil32(_58419) > _58419:
                mem[u + _58419 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58419) + 32
            v = v + 32
            continue 
        mem[_48618 + 160] = u - _48618
        _58429 = mem[_18404]
        mem[u] = mem[_18404]
        idx = 0
        s = _18404 + 32
        t = u + (32 * _58429) + 32
        v = u + 32
        while idx < _58429:
            mem[v] = t + -u - 32
            _58505 = mem[s]
            _58512 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58512:
                mem[u + t + 32] = mem[u + _58505 + 32]
                u = u + 32
                continue 
            if ceil32(_58512) > _58512:
                mem[t + _58512 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58512) + 32
            v = v + 32
            continue 
        mem[_48618 + 192] = t - _48618
        _58517 = mem[_27378]
        mem[t] = mem[_27378]
        idx = 0
        s = _27378 + 32
        u = t + 32
        while idx < _58517:
            mem[u] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[_48618 + 224] = t + (32 * _58517) + -_48618 + 32
        _58579 = mem[_27378 + (32 * sub_d0ad718d) + 32]
        mem[t + (32 * _58517) + 32] = mem[_27378 + (32 * sub_d0ad718d) + 32]
        idx = 0
        s = _27378 + (32 * sub_d0ad718d) + 64
        u = t + (32 * _58517) + (32 * _58579) + 64
        v = t + (32 * _58517) + 64
        while idx < _58579:
            mem[v] = u + -t + -(32 * _58517) - 64
            _58615 = mem[s]
            _58619 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _58619:
                mem[t + u + 32] = mem[t + _58615 + 32]
                t = t + 32
                continue 
            if ceil32(_58619) > _58619:
                mem[u + _58619 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_58619) + 32
            v = v + 32
            continue 
        mem[_48618 + 256] = u - _48618
        _58622 = mem[_35620]
        mem[u] = mem[_35620]
        idx = 0
        s = _35620 + 32
        t = u + (32 * _58622) + 32
        v = u + 32
        while idx < _58622:
            mem[v] = t + -u - 32
            _58643 = mem[s]
            _58648 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            u = 0
            while u < _58648:
                mem[u + t + 32] = mem[u + _58643 + 32]
                u = u + 32
                continue 
            if ceil32(_58648) > _58648:
                mem[t + _58648 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_58648) + 32
            v = v + 32
            continue 
        mem[_48618 + 288] = t - _48618
        _58650 = mem[_42749]
        mem[t] = mem[_42749]
        mem[t + 32 len 32 * _58650] = mem[_42749 + 32 len 32 * _58650]
        return memory
          from mem[64]
           len t + (32 * _58650) + -mem[64] + 32
    mem[_42749 + 32 len 32 * sub_d0ad718d] = code.data[15453 len 32 * sub_d0ad718d]
    idx = 0
    s = 0
    t = 0
    while idx < sub_d0ad718d:
        require s < mem[96]
        mem[(32 * s) + 128] = sub_58a007fb[idx]
        require s < mem[(32 * sub_d0ad718d) + 128]
        mem[(32 * s) + (32 * sub_d0ad718d) + 160] = ancestorChainID[stor7[idx]].field_1280
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        _48871 = mem[64]
        mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][6].length) + 32
        mem[_48871] = ancestorChainID[stor7[idx]][6].length
        mem[0] = sha3(sub_58a007fb[idx], 6) + 6
        mem[_48871 + 32] = ancestorChainID[stor7[idx]][6].field_0
        t = _48871 + 32
        u = sha3(mem[0])
        while _48871 + ancestorChainID[stor7[idx]][6].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        require s < mem[(64 * sub_d0ad718d) + 160]
        mem[(64 * sub_d0ad718d) + (32 * s) + 192] = _48871
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        require s < mem[_9195]
        mem[(32 * s) + _9195 + 32] = ancestorChainID[stor7[idx]].field_1792
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        _53604 = mem[64]
        mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][8].length) + 32
        mem[_53604] = ancestorChainID[stor7[idx]][8].length
        mem[0] = sha3(sub_58a007fb[idx], 6) + 8
        mem[_53604 + 32] = ancestorChainID[stor7[idx]][8].field_0
        t = _53604 + 32
        u = sha3(mem[0])
        while _53604 + ancestorChainID[stor7[idx]][8].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        require s < mem[_9195 + (32 * sub_d0ad718d) + 32]
        mem[_9195 + (32 * sub_d0ad718d) + (32 * s) + 64] = _53604
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        _56496 = mem[64]
        mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][2].length) + 32
        mem[_56496] = ancestorChainID[stor7[idx]][2].length
        mem[0] = sha3(sub_58a007fb[idx], 6) + 2
        mem[_56496 + 32] = ancestorChainID[stor7[idx]][2].field_0
        t = _56496 + 32
        u = sha3(mem[0])
        while _56496 + ancestorChainID[stor7[idx]][2].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        require s < mem[_18404]
        mem[_18404 + (32 * s) + 32] = _56496
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        require s < mem[_27378]
        mem[_27378 + (32 * s) + 32] = uint8(ancestorChainID[stor7[idx]].field_768)
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        _57898 = mem[64]
        mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]].length) + 32
        mem[_57898] = ancestorChainID[stor7[idx]].length
        mem[0] = sha3(sub_58a007fb[idx], 6)
        mem[_57898 + 32] = ancestorChainID[stor7[idx]].field_0
        t = _57898 + 32
        u = sha3(mem[0])
        while _57898 + ancestorChainID[stor7[idx]].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        require s < mem[_27378 + (32 * sub_d0ad718d) + 32]
        mem[(32 * s) + _27378 + (32 * sub_d0ad718d) + 64] = _57898
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        _58276 = mem[64]
        mem[64] = mem[64] + ceil32(ancestorChainID[stor7[idx]][1].length) + 32
        mem[_58276] = ancestorChainID[stor7[idx]][1].length
        mem[0] = sha3(sub_58a007fb[idx], 6) + 1
        mem[_58276 + 32] = ancestorChainID[stor7[idx]][1].field_0
        t = _58276 + 32
        u = sha3(mem[0])
        while _58276 + ancestorChainID[stor7[idx]][1].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        require s < mem[_35620]
        mem[_35620 + (32 * s) + 32] = _58276
        mem[0] = sub_58a007fb[idx]
        mem[32] = 6
        require s < mem[_42749]
        mem[_42749 + (32 * s) + 32] = ancestorChainID[stor7[idx]].field_1024
        idx = idx + 1
        s = s + 1
        t = sub_58a007fb[idx]
        continue 
    _48621 = mem[64]
    mem[mem[64]] = 320
    _49033 = mem[96]
    mem[mem[64] + 320] = mem[96]
    mem[mem[64] + 352 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 352
    _53593 = mem[(32 * sub_d0ad718d) + 128]
    mem[mem[64] + (32 * mem[96]) + 352] = mem[(32 * sub_d0ad718d) + 128]
    mem[mem[64] + (32 * mem[96]) + 384 len 32 * _53593] = mem[(32 * sub_d0ad718d) + 160 len 32 * _53593]
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _53593) + 384
    _56581 = mem[(64 * sub_d0ad718d) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _53593) + 384] = mem[(64 * sub_d0ad718d) + 160]
    idx = 0
    s = (64 * sub_d0ad718d) + 192
    t = mem[64] + (32 * mem[96]) + (32 * _53593) + (32 * _56581) + 416
    u = mem[64] + (32 * mem[96]) + (32 * _53593) + 416
    while idx < _56581:
        mem[u] = t + -_48621 + -(32 * _49033) + -(32 * _53593) - 416
        _57656 = mem[s]
        _57815 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _57815:
            mem[v + t + 32] = mem[v + _57656 + 32]
            v = v + 32
            continue 
        if ceil32(_57815) > _57815:
            mem[t + _57815 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_57815) + 32
        u = u + 32
        continue 
    mem[_48621 + 96] = t - _48621
    _57893 = mem[_9195]
    mem[t] = mem[_9195]
    mem[t + 32 len 32 * _57893] = mem[_9195 + 32 len 32 * _57893]
    mem[_48621 + 128] = t + (32 * _57893) + -_48621 + 32
    _58292 = mem[_9195 + (32 * sub_d0ad718d) + 32]
    mem[t + (32 * _57893) + 32] = mem[_9195 + (32 * sub_d0ad718d) + 32]
    idx = 0
    s = _9195 + (32 * sub_d0ad718d) + 64
    u = t + (32 * _57893) + (32 * _58292) + 64
    v = t + (32 * _57893) + 64
    while idx < _58292:
        mem[v] = u + -t + -(32 * _57893) - 64
        _58412 = mem[s]
        _58422 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _58422:
            mem[t + u + 32] = mem[t + _58412 + 32]
            t = t + 32
            continue 
        if ceil32(_58422) > _58422:
            mem[u + _58422 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_58422) + 32
        v = v + 32
        continue 
    mem[_48621 + 160] = u - _48621
    _58430 = mem[_18404]
    mem[u] = mem[_18404]
    idx = 0
    s = _18404 + 32
    t = u + (32 * _58430) + 32
    v = u + 32
    while idx < _58430:
        mem[v] = t + -u - 32
        _58507 = mem[s]
        _58513 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        u = 0
        while u < _58513:
            mem[u + t + 32] = mem[u + _58507 + 32]
            u = u + 32
            continue 
        if ceil32(_58513) > _58513:
            mem[t + _58513 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_58513) + 32
        v = v + 32
        continue 
    mem[_48621 + 192] = t - _48621
    _58518 = mem[_27378]
    mem[t] = mem[_27378]
    idx = 0
    s = _27378 + 32
    u = t + 32
    while idx < _58518:
        mem[u] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[_48621 + 224] = t + (32 * _58518) + -_48621 + 32
    _58580 = mem[_27378 + (32 * sub_d0ad718d) + 32]
    mem[t + (32 * _58518) + 32] = mem[_27378 + (32 * sub_d0ad718d) + 32]
    idx = 0
    s = _27378 + (32 * sub_d0ad718d) + 64
    u = t + (32 * _58518) + (32 * _58580) + 64
    v = t + (32 * _58518) + 64
    while idx < _58580:
        mem[v] = u + -t + -(32 * _58518) - 64
        _58616 = mem[s]
        _58620 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _58620:
            mem[t + u + 32] = mem[t + _58616 + 32]
            t = t + 32
            continue 
        if ceil32(_58620) > _58620:
            mem[u + _58620 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_58620) + 32
        v = v + 32
        continue 
    mem[_48621 + 256] = u - _48621
    _58623 = mem[_35620]
    mem[u] = mem[_35620]
    idx = 0
    s = _35620 + 32
    t = u + (32 * _58623) + 32
    v = u + 32
    while idx < _58623:
        mem[v] = t + -u - 32
        _58645 = mem[s]
        _58649 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        u = 0
        while u < _58649:
            mem[u + t + 32] = mem[u + _58645 + 32]
            u = u + 32
            continue 
        if ceil32(_58649) > _58649:
            mem[t + _58649 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_58649) + 32
        v = v + 32
        continue 
    mem[_48621 + 288] = t - _48621
    _58651 = mem[_42749]
    mem[t] = mem[_42749]
    mem[t + 32 len 32 * _58651] = mem[_42749 + 32 len 32 * _58651]
    return memory
      from mem[64]
       len t + (32 * _58651) + -mem[64] + 32
}



}
