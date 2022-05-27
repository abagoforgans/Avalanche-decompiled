contract main {




// =====================  Runtime code  =====================


#
#  - getRewardAmount(address arg1)
#  - sub_4c000c44(?)
#  - sub_717aa7d8(?)
#  - claimAll()
#  - sub_d2446bc1(?)
#
const getNodePrice = 10 * 10^18

const sub_e20fcf00(?) = eth.balance(0x52fd04aa057ba8ca4bcc675b55de7366f607a677)


address owner;
uint256 contractStatus;
address sub_8a14c2fdAddress;
address _burnAddress;
uint256 stor4; offset 32
uint256 stor4;
uint256 stor5; offset 32
uint256 stor5;
address _tokenContractAddress;
address sub_fc79d647Address;
address stor8;
uint256 sub_c999fea3;
array of struct stor11;
array of struct stor12;

function sub_4110fe25(?) {
    return sub_c999fea3
}

function _tokenContract() {
    return _tokenContractAddress
}

function sub_8a14c2fd(?) {
    return sub_8a14c2fdAddress
}

function owner() {
    return owner
}

function _burnAddress() {
    return _burnAddress
}

function getContractStatus() {
    return contractStatus
}

function sub_c999fea3(?) {
    return sub_c999fea3
}

function sub_fc79d647(?) {
    return sub_fc79d647Address
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractStatus = arg1
}

function sub_be27fb45(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor4.field_0) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTreasuryRate() {
    require ext_code.size(_tokenContractAddress)
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (eth.balance(0x52fd04aa057ba8ca4bcc675b55de7366f607a677) / ext_call.return_data[0])
}

function sub_9f71b09d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor11[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 11)
        if stor11[address(arg1)][idx].field_0 > block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor11[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 11)
        if block.timestamp > stor11[address(arg1)][idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_895cf97d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 11
    mem[64] = (32 * stor11[address(arg1)].field_0) + 128
    mem[96] = stor11[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor11[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 11)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = stor11[address(arg1)][idx].field_0
        mem[_13 + 32] = stor11[address(arg1)][idx].field_256
        mem[_13 + 64] = stor11[address(arg1)][idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _21 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_21 + 32]
        mem[t + 64] = mem[_21 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _14 + (96 * _15) + -mem[64] + 64
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(_tokenContractAddress)
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(_tokenContractAddress)
        call _tokenContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getNFTList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 12
    mem[64] = (32 * stor12[address(arg1)].field_0) + 128
    mem[96] = stor12[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor12[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 12)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor12[address(arg1)][idx].field_0
        if stor12[address(arg1)][idx].field_256 > 1:
            revert with 0, 33
        mem[_12 + 32] = stor12[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        if mem[_19 + 32] >= 2:
            revert with 0, 33
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_8572f6a9(?) {
    mem[96] = 2
    mem[128] = _tokenContractAddress
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 10 * 10^18
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10 * 10^18, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], 2328306436
    require mem[ceil32(return_data.size) + 192 len 4], 2328306436 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 2328306436 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_cd8ee10e(?) {
    mem[96] = 2
    mem[128] = _tokenContractAddress
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 100 * 10^18
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 100 * 10^18, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], 23283064365
    require mem[ceil32(return_data.size) + 192 len 4], 23283064365 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 23283064365 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_1bc32687(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = stor8
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_5ca91580(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = _tokenContractAddress
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function getClaimFee() {
    mem[96] = 2
    mem[128] = stor8
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor5.field_0)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor5.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor5.field_32) + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_582726fc(?) {
    mem[96] = 2
    mem[128] = stor8
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor4.field_0)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor4.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor4.field_32) + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function buyNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 and 10 * 10^18 > -1 / arg1:
        revert with 0, 17
    mem[0] = msg.sender
    mem[32] = 11
    mem[100] = msg.sender
    require ext_code.size(_tokenContractAddress)
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10 * 10^18 * arg1:
        revert with 0, 'user doesn't have enough token balance'
    if msg.sender == 0x52fd04aa057ba8ca4bcc675b55de7366f607a677:
        revert with 0, 'can't buy using treasury's address'
    if stor11[msg.sender].field_0 > !arg1:
        revert with 0, 17
    if stor11[msg.sender].field_0 + arg1 > 100:
        revert with 0, 'can't buy more than 100 nodes'
    if 10 * 10^18 * arg1 and 7 > -1 / 10 * 10^18 * arg1:
        revert with 0, 17
    if 10 * 10^18 * arg1 and 1 > -1 / 10 * 10^18 * arg1:
        revert with 0, 17
    if 70 * 10^18 * arg1 / 10 > !(10 * 10^18 * arg1 / 10):
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = (70 * 10^18 * arg1 / 10) + (10 * 10^18 * arg1 / 10)
    require ext_code.size(_tokenContractAddress)
    call _tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, (70 * 10^18 * arg1 / 10) + (10 * 10^18 * arg1 / 10)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10 * 10^18 * arg1 and 2 > -1 / 10 * 10^18 * arg1:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = 0x52fd04aa057ba8ca4bcc675b55de7366f607a677
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * 10 * 10^18 * arg1 / 10
    require ext_code.size(_tokenContractAddress)
    call _tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, 2 * 10 * 10^18 * arg1 / 10
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10 * 10^18 * arg1 and 1 > -1 / 10 * 10^18 * arg1:
        revert with 0, 17
    if 10 * 10^18 * arg1 / 10 < 10 * 10^18 * arg1 / 10 / 2:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = _tokenContractAddress
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 196] = sub_8a14c2fdAddress
    mem[(6 * ceil32(return_data.size)) + 228] = 10 * 10^18 * arg1 / 10 / 2
    require ext_code.size(_tokenContractAddress)
    call _tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, Mask(255, 1, 10 * 10^18 * arg1 / 10), mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = 10 * 10^18 * arg1 / 10 / 2
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(sub_8a14c2fdAddress)
    call sub_8a14c2fdAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, 10 * 10^18 * arg1 / 10), 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    mem[(8 * ceil32(return_data.size)) + 196] = sub_8a14c2fdAddress
    mem[(8 * ceil32(return_data.size)) + 228] = (10 * 10^18 * arg1 / 10) - (10 * 10^18 * arg1 / 10 / 2)
    require ext_code.size(_tokenContractAddress)
    call _tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, (10 * 10^18 * arg1 / 10) - (10 * 10^18 * arg1 / 10 / 2)
    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(10 * ceil32(return_data.size)) + 260] = 0
    mem[(10 * ceil32(return_data.size)) + 292] = 0
    mem[(10 * ceil32(return_data.size)) + 324] = _burnAddress
    mem[(10 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(sub_8a14c2fdAddress)
    call sub_8a14c2fdAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args _tokenContractAddress, (10 * 10^18 * arg1 / 10) - (10 * 10^18 * arg1 / 10 / 2), 0, 0, _burnAddress, block.timestamp
    mem[(10 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 192
    require return_data.size >= 96
    mem[(11 * ceil32(return_data.size)) + 192] = 10 * 10^18 * arg1 / 10 / 2
    mem[(11 * ceil32(return_data.size)) + 224] = 0
    mem[(11 * ceil32(return_data.size)) + 256] = (10 * 10^18 * arg1 / 10) - (10 * 10^18 * arg1 / 10 / 2)
    emit SwapAndLiquify(Mask(255, 1, 10 * 10^18 * arg1 / 10), 0, (10 * 10^18 * arg1 / 10) - (10 * 10^18 * arg1 / 10 / 2));
    idx = 0
    while idx < arg1:
        mem[0] = msg.sender
        mem[32] = 11
        _122 = mem[64]
        mem[64] = mem[64] + 96
        mem[_122] = block.timestamp
        if block.timestamp > -7776001:
            revert with 0, 17
        mem[_122 + 32] = block.timestamp + (2160 * 24 * 3600)
        mem[_122 + 64] = 0
        stor11[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 11)
        stor11[msg.sender][stor11[msg.sender].field_0].field_0 = block.timestamp
        stor11[msg.sender][stor11[msg.sender].field_0].field_256 = block.timestamp + (2160 * 24 * 3600)
        stor11[msg.sender][stor11[msg.sender].field_0].field_512 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _123 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_123 + 32 len 64] = call.data[calldata.size len 64]
    if not mem[_123]:
        revert with 0, 50
    mem[_123 + 32] = stor8
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[_123 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _123 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= mem[_123]:
        revert with 0, 50
    mem[_123 + 64] = ext_call.return_data[12 len 20]
    mem[_123 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_123 + ceil32(return_data.size) + 100] = uint256(stor4.field_0)
    mem[_123 + ceil32(return_data.size) + 132] = 64
    mem[_123 + ceil32(return_data.size) + 164] = mem[_123]
    idx = 0
    s = _123 + 32
    t = _123 + ceil32(return_data.size) + 196
    while idx < mem[_123]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor4.field_0), 64, mem[_123 + ceil32(return_data.size) + 164 len (32 * mem[_123]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_123 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _123 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
    require _123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 127 < _123 + ceil32(return_data.size) + return_data.size + 96
    _154 = mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 96]
    if mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 96] > test266151307():
        revert with 0, 65
    if _123 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 97 > test266151307() or ceil32(32 * mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = _123 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 96]) + 97
    require return_data.size >= mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + (32 * _154) + 32
    mem[_123 + (2 * ceil32(return_data.size)) + 128 len 32 * _154] = mem[_123 + ceil32(return_data.size) + mem[_123 + ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor4.field_32) + 128 len 32 * _154]
    if 1 >= _154:
        revert with 0, 50
    if mem[_123 + (2 * ceil32(return_data.size)) + 160] and arg1 > -1 / mem[_123 + (2 * ceil32(return_data.size)) + 160]:
        revert with 0, 17
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if msg.value > !(10^16 * arg1):
        revert with 0, 17
    if msg.value + (10^16 * arg1) < mem[_123 + (2 * ceil32(return_data.size)) + 160] * arg1:
        revert with 0, 'no enough balance'
    call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_c999fea3 > !arg1:
        revert with 0, 17
    sub_c999fea3 += arg1
    emit 0xafc06ad4: msg.sender, arg1
}



}
