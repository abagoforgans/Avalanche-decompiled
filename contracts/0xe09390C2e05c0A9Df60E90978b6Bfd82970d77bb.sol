contract main {




// =====================  Runtime code  =====================


#
#  - getRewardAmount(address arg1)
#
const sub_e20fcf00(?) = eth.balance(0x52fd04aa057ba8ca4bcc675b55de7366f607a677)


address owner;
uint256 contractStatus;
address sub_8a14c2fdAddress;
address _burnAddress;
uint256 nodePrice;
uint256 stor5;
uint256 sub_582726fc;
uint256 claimFee;
uint256 sub_a9ddd1c5;
uint256 stor8;
address _tokenContractAddress;
address sub_fc79d647Address;
address stor11;
uint256 sub_c999fea3;
array of struct stor14;
array of struct stor15;

function sub_4110fe25(?) {
    return sub_c999fea3
}

function getClaimFee() {
    return claimFee
}

function sub_582726fc(?) {
    return uint256(sub_582726fc)
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

function getNodePrice() {
    return nodePrice
}

function sub_a9ddd1c5(?) {
    return sub_a9ddd1c5
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

function sub_8572f6a9(?) {
    if sub_a9ddd1c5 and 10 > -1 / sub_a9ddd1c5:
        revert with 0, 17
    return (10 * sub_a9ddd1c5)
}

function sub_cd8ee10e(?) {
    if sub_a9ddd1c5 and 100 > -1 / sub_a9ddd1c5:
        revert with 0, 17
    return (100 * sub_a9ddd1c5)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d4ab7760(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a9ddd1c5 = arg1
}

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractStatus = arg1
}

function setClaimFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimFee = arg1
}

function setNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodePrice = arg1
}

function sub_be27fb45(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(sub_582726fc) = arg1
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fc79d647Address = arg1
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

function sub_90b21db4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_c999fea3 < stor14[address(arg1)].field_0:
        revert with 0, 17
    sub_c999fea3 -= stor14[address(arg1)].field_0
    stor14[address(arg1)].field_0 = 0
    idx = 0
    while 2 * stor14[address(arg1)].field_0 > idx:
        stor14[address(arg1)][idx].field_0 = 0
        stor14[address(arg1)][idx].field_256 = 0
        idx = idx + 2
        continue 
    stor15[address(arg1)].field_0 = 0
    idx = 0
    while 2 * stor15[address(arg1)].field_0 > idx:
        stor15[address(arg1)][idx].field_0 = 0
        uint8(stor15[address(arg1)][idx].field_256) = 0
        idx = idx + 2
        continue 
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
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

function sub_895cf97d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 14
    mem[64] = (32 * stor14[address(arg1)].field_0) + 128
    mem[96] = stor14[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor14[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 14)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor14[address(arg1)][idx].field_0
        mem[_12 + 32] = stor14[address(arg1)][idx].field_256
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
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function getNFTList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * stor15[address(arg1)].field_0) + 128
    mem[96] = stor15[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor15[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 15)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor15[address(arg1)][idx].field_0
        if uint8(stor15[address(arg1)][idx].field_256) > 1:
            revert with 0, 33
        mem[_12 + 32] = uint8(stor15[address(arg1)][idx].field_256)
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

function sub_d4f73da6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (96 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 96
        _23 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_23] = cd[idx]
        mem[_23 + 32] = cd[(idx + 32)]
        mem[_23 + 64] = cd[(idx + 64)]
        mem[s] = _23
        s = s + 32
        idx = idx + 96
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _44 = mem[96]
    idx = 0
    while idx < _44:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 15
        _50 = sha3(mem[0], 15)
        _51 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 0, 50
        mem[_51] = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 32] > 1:
            revert with 0, 33
        mem[_51 + 32] = mem[mem[(32 * idx) + 128] + 32]
        stor[_50]++
        mem[0] = _50
        stor[(2 * stor[_50]) + sha3(_50)] = mem[_51]
        if mem[_51 + 32] > 1:
            revert with 0, 33
        stor[(2 * stor[_50]) + sha3(_50) + 1] = mem[_51 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if _44 != mem[96]:
        revert with 0, 'not complete transaction'
}

function sub_69494c71(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (64 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 64
        _23 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_23] = cd[idx]
        mem[_23 + 32] = cd[(idx + 32)]
        mem[s] = _23
        s = s + 32
        idx = idx + 64
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _44 = mem[96]
    idx = 0
    while idx < _44:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 14
        _50 = sha3(mem[0], 14)
        _51 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 0, 50
        mem[_51] = mem[mem[(32 * idx) + 128] + 32]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 32] > -7776001:
            revert with 0, 17
        mem[_51 + 32] = mem[mem[(32 * idx) + 128] + 32] + (2160 * 24 * 3600)
        stor[_50]++
        mem[0] = _50
        stor[(2 * stor[_50]) + sha3(_50)] = mem[_51]
        stor[(2 * stor[_50]) + sha3(_50) + 1] = mem[_51 + 32]
        if sub_c999fea3 == -1:
            revert with 0, 17
        sub_c999fea3++
        if idx == -1:
            revert with 0, 17
        _44 = mem[96]
        idx = idx + 1
        continue 
    if _44 != mem[96]:
        revert with 0, 'not complete transaction'
}

function sub_d2446bc1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 2
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 >= stor14[msg.sender].field_0:
        revert with 0, 50
    if block.timestamp > -2592001:
        revert with 0, 17
    if block.timestamp + (720 * 24 * 3600) <= stor14[msg.sender][arg1].field_256:
        revert with 0, 'already purchased'
    if arg1 >= stor14[address(msg.sender)].field_0:
        revert with 0, 50
    if block.timestamp > stor14[address(msg.sender)][arg1].field_256:
        if arg1 >= stor14[address(msg.sender)].field_0:
            revert with 0, 50
        stor14[address(msg.sender)][arg1].field_0 = block.timestamp
        if arg1 >= stor14[address(msg.sender)].field_0:
            revert with 0, 50
        stor14[address(msg.sender)][arg1].field_256 = block.timestamp
    if arg2 > 1:
        revert with 0, 33
    if not arg2:
        if uint256(sub_582726fc) != msg.value:
            revert with 0, 'no enough balance'
        if arg1 >= stor14[address(msg.sender)].field_0:
            revert with 0, 50
        if stor14[address(msg.sender)][arg1].field_256 > -7776001:
            revert with 0, 17
        stor14[address(msg.sender)][arg1].field_256 += 2160 * 24 * 3600
    else:
        if arg2 > 1:
            revert with 0, 33
        if arg2 == 1:
            if uint256(sub_582726fc) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * uint256(sub_582726fc) != msg.value:
                revert with 0, 'no enough balance'
            if arg1 >= stor14[address(msg.sender)].field_0:
                revert with 0, 50
            if stor14[address(msg.sender)][arg1].field_256 > -15552001:
                revert with 0, 17
            stor14[address(msg.sender)][arg1].field_256 += 4320 * 24 * 3600
    call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 1:
        revert with 0, 33
    emit 0xf0c943e4: msg.sender, arg1, arg2
}

function sub_1bc32687(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = stor11
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
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _25)] = mem[ceil32(return_data.size) + _24 + 224 len ceil32(32 * _25)]
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
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _25)] = mem[ceil32(return_data.size) + _24 + 224 len ceil32(32 * _25)]
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
    if arg1 and nodePrice > -1 / arg1:
        revert with 0, 17
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 * nodePrice:
        revert with 0, 'user doesn't have enough token balance'
    if stor14[msg.sender].field_0 > !arg1:
        revert with 0, 17
    if stor14[msg.sender].field_0 + arg1 > 100:
        revert with 0, 'can't buy more than 100 nodes'
    if arg1 * nodePrice and 7 > -1 / arg1 * nodePrice:
        revert with 0, 17
    if arg1 * nodePrice and 1 > -1 / arg1 * nodePrice:
        revert with 0, 17
    if 7 * arg1 * nodePrice / 10 > !(arg1 * nodePrice / 10):
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = (7 * arg1 * nodePrice / 10) + (arg1 * nodePrice / 10)
    call _tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, (7 * arg1 * nodePrice / 10) + (arg1 * nodePrice / 10)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 * nodePrice and 2 > -1 / arg1 * nodePrice:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = 0x52fd04aa057ba8ca4bcc675b55de7366f607a677
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * arg1 * nodePrice / 10
    call _tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, 2 * arg1 * nodePrice / 10
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 * nodePrice and 1 > -1 / arg1 * nodePrice:
        revert with 0, 17
    if arg1 * nodePrice / 10 < arg1 * nodePrice / 10 / 2:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 128] = _tokenContractAddress
    staticcall sub_8a14c2fdAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    call _tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, Mask(255, 1, arg1 * nodePrice / 10), mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = arg1 * nodePrice / 10 / 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    call sub_8a14c2fdAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg1 * nodePrice / 10), 0, 160, address(this.address), block.timestamp, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call _tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8a14c2fdAddress, (arg1 * nodePrice / 10) - (arg1 * nodePrice / 10 / 2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call sub_8a14c2fdAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args _tokenContractAddress, (arg1 * nodePrice / 10) - (arg1 * nodePrice / 10 / 2), 0, 0, _burnAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 192
    require return_data.size >= 96
    emit SwapAndLiquify(Mask(255, 1, arg1 * nodePrice / 10), 0, (arg1 * nodePrice / 10) - (arg1 * nodePrice / 10 / 2));
    idx = 0
    while idx < arg1:
        mem[0] = msg.sender
        mem[32] = 14
        _82 = mem[64]
        mem[64] = mem[64] + 64
        mem[_82] = block.timestamp
        if block.timestamp > -7776001:
            revert with 0, 17
        mem[_82 + 32] = block.timestamp + (2160 * 24 * 3600)
        stor14[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 14)
        stor14[msg.sender][stor14[msg.sender].field_0].field_0 = block.timestamp
        stor14[msg.sender][stor14[msg.sender].field_0].field_256 = block.timestamp + (2160 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint256(sub_582726fc) != msg.value:
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

function sub_5f2d5827(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 > 1:
        revert with 0, 33
    if not arg1:
        idx = 0
        s = 0
        while idx < stor14[msg.sender].field_0:
            mem[32] = 14
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 14)
            if block.timestamp > stor14[msg.sender][idx].field_256:
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                stor14[msg.sender][idx].field_0 = block.timestamp
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_256 = block.timestamp
            if arg1 > 1:
                revert with 0, 33
            if not arg1:
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                if stor14[msg.sender][idx].field_256 > -7776001:
                    revert with 0, 17
                stor14[msg.sender][idx].field_256 += 2160 * 24 * 3600
            else:
                if arg1 > 1:
                    revert with 0, 33
                if arg1 == 1:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    if stor14[msg.sender][idx].field_256 > -15552001:
                        revert with 0, 17
                    stor14[msg.sender][idx].field_256 += 4320 * 24 * 3600
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if uint256(sub_582726fc) and s > -1 / uint256(sub_582726fc):
            revert with 0, 17
        if msg.value < uint256(sub_582726fc) * s:
            revert with 0, 'no enough balance'
        if uint256(sub_582726fc) and s > -1 / uint256(sub_582726fc):
            revert with 0, 17
        call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
           value uint256(sub_582726fc) * s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_582726fc) and s > -1 / uint256(sub_582726fc):
            revert with 0, 17
        if msg.value < uint256(sub_582726fc) * s:
            revert with 0, 17
        call msg.sender with:
           value msg.value - (uint256(sub_582726fc) * s) wei
             gas 2300 * is_zero(value) wei
    else:
        if arg1 > 1:
            revert with 0, 33
        if arg1 != 1:
            idx = 0
            s = 0
            while idx < stor14[msg.sender].field_0:
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                if block.timestamp > stor14[msg.sender][idx].field_256:
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_256 = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                if not arg1:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    if stor14[msg.sender][idx].field_256 > -7776001:
                        revert with 0, 17
                    stor14[msg.sender][idx].field_256 += 2160 * 24 * 3600
                else:
                    if arg1 > 1:
                        revert with 0, 33
                    if arg1 == 1:
                        mem[32] = 14
                        if idx >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        mem[0] = sha3(msg.sender, 14)
                        if stor14[msg.sender][idx].field_256 > -15552001:
                            revert with 0, 17
                        stor14[msg.sender][idx].field_256 += 4320 * 24 * 3600
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if False and s > 0:
                revert with 0, 17
            if msg.value < 0:
                revert with 0, 'no enough balance'
            if False and s > 0:
                revert with 0, 17
            call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if False and s > 0:
                revert with 0, 17
            if msg.value < 0:
                revert with 0, 17
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            if uint256(sub_582726fc) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            idx = 0
            s = 0
            while idx < stor14[msg.sender].field_0:
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                if block.timestamp > stor14[msg.sender][idx].field_256:
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_256 = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                if not arg1:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    if stor14[msg.sender][idx].field_256 > -7776001:
                        revert with 0, 17
                    stor14[msg.sender][idx].field_256 += 2160 * 24 * 3600
                else:
                    if arg1 > 1:
                        revert with 0, 33
                    if arg1 == 1:
                        mem[32] = 14
                        if idx >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        mem[0] = sha3(msg.sender, 14)
                        if stor14[msg.sender][idx].field_256 > -15552001:
                            revert with 0, 17
                        stor14[msg.sender][idx].field_256 += 4320 * 24 * 3600
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if uint255(stor5) and s > -1 / 2 * uint256(sub_582726fc):
                revert with 0, 17
            if msg.value < 2 * uint256(sub_582726fc) * s:
                revert with 0, 'no enough balance'
            if uint255(stor5) and s > -1 / 2 * uint256(sub_582726fc):
                revert with 0, 17
            call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
               value 2 * uint256(sub_582726fc) * s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint255(stor5) and s > -1 / 2 * uint256(sub_582726fc):
                revert with 0, 17
            if msg.value < 2 * uint256(sub_582726fc) * s:
                revert with 0, 17
            call msg.sender with:
               value msg.value - (2 * uint256(sub_582726fc) * s) wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 1:
        revert with 0, 33
    emit 0x895552a2: msg.sender, arg1
}

function sub_717aa7d8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 < 2
    if contractStatus:
        revert with 0, 'Contract Paused'
    if 1 > !stor8:
        revert with 0, 17
    if 1 > !stor8:
        revert with 0, 17
    if stor15[msg.sender].field_0 == stor8 + 1:
        if stor8 and 10 > -1 / stor8:
            revert with 0, 17
        if stor14[msg.sender].field_0 < 10 * stor8:
            revert with 0, 17
        if arg1 > 1:
            revert with 0, 33
        if stor15[msg.sender].field_0 == stor8 + 1:
            if arg1 == 1:
                revert with 0, 'have already grand nft'
            if stor8 and 10 > -1 / stor8:
                revert with 0, 17
            if stor14[msg.sender].field_0 < 10 * stor8:
                revert with 0, 'no need so many master'
            if stor14[msg.sender].field_0 - (10 * stor8) / 10 < arg2:
                revert with 0, 'no need so many master nft'
            if stor8 > !arg2:
                revert with 0, 17
            if stor8 + arg2 > stor8:
                revert with 0, 'no need more than 10 master nft'
            if sub_a9ddd1c5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if 10 * sub_a9ddd1c5 != msg.value:
                revert with 0, 'no enough AVAX'
            call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg2:
                if arg1 > 1:
                    revert with 0, 33
                mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                require ext_code.size(sub_fc79d647Address)
                call sub_fc79d647Address.0x3c168eab with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = msg.sender
                mem[32] = 15
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                mem[_138 + 32] = arg1
                stor15[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 15)
                stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg1 == 1:
                if arg2 != 1:
                    revert with 0, 'buy only 1 grand nft'
                if stor8 != stor8:
                    revert with 0, 'no need grand nft for now'
                if sub_a9ddd1c5 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if 100 * sub_a9ddd1c5 != msg.value:
                    revert with 0, 'no enough AVAX'
                call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < arg2:
                    if arg1 > 1:
                        revert with 0, 33
                    mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_fc79d647Address)
                    call sub_fc79d647Address.0x3c168eab with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = 15
                    _142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_142] = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    mem[_142 + 32] = arg1
                    stor15[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 15)
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor8 and 10 > -1 / stor8:
                    revert with 0, 17
                if stor14[msg.sender].field_0 < 10 * stor8:
                    revert with 0, 'no need so many master'
                if stor14[msg.sender].field_0 - (10 * stor8) / 10 < arg2:
                    revert with 0, 'no need so many master nft'
                if stor8 > !arg2:
                    revert with 0, 17
                if stor8 + arg2 > stor8:
                    revert with 0, 'no need more than 10 master nft'
                if sub_a9ddd1c5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if 10 * sub_a9ddd1c5 != msg.value:
                    revert with 0, 'no enough AVAX'
                call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < arg2:
                    if arg1 > 1:
                        revert with 0, 33
                    mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_fc79d647Address)
                    call sub_fc79d647Address.0x3c168eab with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = 15
                    _140 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_140] = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    mem[_140 + 32] = arg1
                    stor15[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 15)
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        if stor15[msg.sender].field_0 and 10 > -1 / stor15[msg.sender].field_0:
            revert with 0, 17
        if stor14[msg.sender].field_0 < 10 * stor15[msg.sender].field_0:
            revert with 0, 17
        if arg1 > 1:
            revert with 0, 33
        if stor15[msg.sender].field_0 == stor8 + 1:
            if arg1 == 1:
                revert with 0, 'have already grand nft'
            if stor15[msg.sender].field_0 and 10 > -1 / stor15[msg.sender].field_0:
                revert with 0, 17
            if stor14[msg.sender].field_0 < 10 * stor15[msg.sender].field_0:
                revert with 0, 'no need so many master'
            if stor14[msg.sender].field_0 - (10 * stor15[msg.sender].field_0) / 10 < arg2:
                revert with 0, 'no need so many master nft'
            if stor15[msg.sender].field_0 > !arg2:
                revert with 0, 17
            if stor15[msg.sender].field_0 + arg2 > stor8:
                revert with 0, 'no need more than 10 master nft'
            if sub_a9ddd1c5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if 10 * sub_a9ddd1c5 != msg.value:
                revert with 0, 'no enough AVAX'
            call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < arg2:
                if arg1 > 1:
                    revert with 0, 33
                mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                require ext_code.size(sub_fc79d647Address)
                call sub_fc79d647Address.0x3c168eab with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = msg.sender
                mem[32] = 15
                _144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_144] = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                mem[_144 + 32] = arg1
                stor15[address(msg.sender)].field_0++
                mem[0] = sha3(address(msg.sender), 15)
                stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                if arg1 > 1:
                    revert with 0, 33
                stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg1 == 1:
                if arg2 != 1:
                    revert with 0, 'buy only 1 grand nft'
                if stor15[msg.sender].field_0 != stor8:
                    revert with 0, 'no need grand nft for now'
                if sub_a9ddd1c5 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if 100 * sub_a9ddd1c5 != msg.value:
                    revert with 0, 'no enough AVAX'
                call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < arg2:
                    if arg1 > 1:
                        revert with 0, 33
                    mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_fc79d647Address)
                    call sub_fc79d647Address.0x3c168eab with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = 15
                    _148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_148] = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    mem[_148 + 32] = arg1
                    stor15[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 15)
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if stor15[msg.sender].field_0 and 10 > -1 / stor15[msg.sender].field_0:
                    revert with 0, 17
                if stor14[msg.sender].field_0 < 10 * stor15[msg.sender].field_0:
                    revert with 0, 'no need so many master'
                if stor14[msg.sender].field_0 - (10 * stor15[msg.sender].field_0) / 10 < arg2:
                    revert with 0, 'no need so many master nft'
                if stor15[msg.sender].field_0 > !arg2:
                    revert with 0, 17
                if stor15[msg.sender].field_0 + arg2 > stor8:
                    revert with 0, 'no need more than 10 master nft'
                if sub_a9ddd1c5 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if 10 * sub_a9ddd1c5 != msg.value:
                    revert with 0, 'no enough AVAX'
                call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < arg2:
                    if arg1 > 1:
                        revert with 0, 33
                    mem[mem[64]] = 0x3c168eab00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_fc79d647Address)
                    call sub_fc79d647Address.0x3c168eab with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = 15
                    _146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_146] = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    mem[_146 + 32] = arg1
                    stor15[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 15)
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_0 = block.timestamp
                    if arg1 > 1:
                        revert with 0, 33
                    stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256 = arg1 or Mask(248, 8, stor15[address(msg.sender)][stor15[address(msg.sender)].field_0].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    if arg1 > 1:
        revert with 0, 33
    emit 0x4b2684c3: msg.sender, arg1, arg2
}

function claimAll() payable {
    if contractStatus:
        revert with 0, 'Contract Paused'
    if stor8 < stor15[msg.sender].field_0:
        if stor8 and 10 > -1 / stor8:
            revert with 0, 17
        idx = 0
        s = 0
        t = 0
        while idx < stor14[msg.sender].field_0:
            mem[32] = 14
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 14)
            if stor14[msg.sender][idx].field_256 < block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if block.timestamp < stor14[msg.sender][idx].field_0:
                revert with 0, 17
            if block.timestamp - stor14[msg.sender][idx].field_0 and 2604166666666 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                revert with 0, 17
            if t > !((2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0)):
                revert with 0, 17
            if idx >= 10 * stor8:
                if idx >= 100:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    t = t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0)
                    continue 
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                if idx / 100 >= stor15[msg.sender].field_0:
                    revert with 0, 50
                if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                    if block.timestamp < stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                        revert with 0, 17
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (3182870370369 * block.timestamp) - (3182870370369 * stor14[msg.sender][idx].field_0)
                    continue 
                if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 100].field_0
                t = t + (3182870370369 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if idx / 10 >= stor15[msg.sender].field_0:
                revert with 0, 50
            if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 10].field_0:
                if block.timestamp < stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if block.timestamp - stor14[msg.sender][idx].field_0 and 289351851851 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[msg.sender][idx].field_0)):
                    revert with 0, 17
                if idx >= 100:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0)
                    continue 
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                if idx / 100 >= stor15[msg.sender].field_0:
                    revert with 0, 50
                if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                    if block.timestamp < stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                        revert with 0, 17
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (3472222222220 * block.timestamp) - (3472222222220 * stor14[msg.sender][idx].field_0)
                    continue 
                if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 100].field_0
                t = t + (3472222222220 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
                continue 
            if block.timestamp < stor15[msg.sender][idx / 10].field_0:
                revert with 0, 17
            if block.timestamp - stor15[msg.sender][idx / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[msg.sender][idx / 10].field_0:
                revert with 0, 17
            if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[msg.sender][idx / 10].field_0)):
                revert with 0, 17
            if idx >= 100:
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 10].field_0
                t = t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0)
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if idx / 100 >= stor15[msg.sender].field_0:
                revert with 0, 50
            if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                if block.timestamp < stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor14[msg.sender][idx].field_0
                t = t + (3472222222220 * block.timestamp) - (3182870370369 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0)
                continue 
            if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                revert with 0, 17
            if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                revert with 0, 17
            if t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                revert with 0, 17
            mem[32] = 14
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 14)
            stor14[msg.sender][idx].field_0 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = block.timestamp - stor15[msg.sender][idx / 100].field_0
            t = t + (3472222222220 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
            continue 
    else:
        if stor15[msg.sender].field_0 and 10 > -1 / stor15[msg.sender].field_0:
            revert with 0, 17
        idx = 0
        s = 0
        t = 0
        while idx < stor14[msg.sender].field_0:
            mem[32] = 14
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 14)
            if stor14[msg.sender][idx].field_256 < block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if block.timestamp < stor14[msg.sender][idx].field_0:
                revert with 0, 17
            if block.timestamp - stor14[msg.sender][idx].field_0 and 2604166666666 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                revert with 0, 17
            if t > !((2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0)):
                revert with 0, 17
            if idx >= 10 * stor15[msg.sender].field_0:
                if idx >= 0:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    t = t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0)
                    continue 
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                if idx / 100 >= stor15[msg.sender].field_0:
                    revert with 0, 50
                if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                    if block.timestamp < stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                        revert with 0, 17
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (3182870370369 * block.timestamp) - (3182870370369 * stor14[msg.sender][idx].field_0)
                    continue 
                if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 100].field_0
                t = t + (3182870370369 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if idx / 10 >= stor15[msg.sender].field_0:
                revert with 0, 50
            if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 10].field_0:
                if block.timestamp < stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if block.timestamp - stor14[msg.sender][idx].field_0 and 289351851851 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[msg.sender][idx].field_0)):
                    revert with 0, 17
                if idx >= 0:
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0)
                    continue 
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                if idx / 100 >= stor15[msg.sender].field_0:
                    revert with 0, 50
                if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                    if block.timestamp < stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                        revert with 0, 17
                    if t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                        revert with 0, 17
                    mem[32] = 14
                    if idx >= stor14[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = sha3(msg.sender, 14)
                    stor14[msg.sender][idx].field_0 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = block.timestamp - stor14[msg.sender][idx].field_0
                    t = t + (3472222222220 * block.timestamp) - (3472222222220 * stor14[msg.sender][idx].field_0)
                    continue 
                if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                    revert with 0, 17
                if t + (2893518518517 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 100].field_0
                t = t + (3472222222220 * block.timestamp) - (2893518518517 * stor14[msg.sender][idx].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
                continue 
            if block.timestamp < stor15[msg.sender][idx / 10].field_0:
                revert with 0, 17
            if block.timestamp - stor15[msg.sender][idx / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[msg.sender][idx / 10].field_0:
                revert with 0, 17
            if t + (2604166666666 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[msg.sender][idx / 10].field_0)):
                revert with 0, 17
            if idx >= 0:
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor15[msg.sender][idx / 10].field_0
                t = t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0)
                continue 
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            if idx / 100 >= stor15[msg.sender].field_0:
                revert with 0, 50
            if stor14[msg.sender][idx].field_0 >= stor15[msg.sender][idx / 100].field_0:
                if block.timestamp < stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if block.timestamp - stor14[msg.sender][idx].field_0 and 578703703703 > -1 / block.timestamp - stor14[msg.sender][idx].field_0:
                    revert with 0, 17
                if t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[msg.sender][idx].field_0)):
                    revert with 0, 17
                mem[32] = 14
                if idx >= stor14[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 14)
                stor14[msg.sender][idx].field_0 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = block.timestamp - stor14[msg.sender][idx].field_0
                t = t + (3472222222220 * block.timestamp) - (3182870370369 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0)
                continue 
            if block.timestamp < stor15[msg.sender][idx / 100].field_0:
                revert with 0, 17
            if block.timestamp - stor15[msg.sender][idx / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[msg.sender][idx / 100].field_0:
                revert with 0, 17
            if t + (2893518518517 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[msg.sender][idx / 100].field_0)):
                revert with 0, 17
            mem[32] = 14
            if idx >= stor14[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 14)
            stor14[msg.sender][idx].field_0 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = block.timestamp - stor15[msg.sender][idx / 100].field_0
            t = t + (3472222222220 * block.timestamp) - (2604166666666 * stor14[msg.sender][idx].field_0) - (289351851851 * stor15[msg.sender][idx / 10].field_0) - (578703703703 * stor15[msg.sender][idx / 100].field_0)
            continue 
    if claimFee and stor14[msg.sender].field_0 > -1 / claimFee:
        revert with 0, 17
    if msg.value < claimFee * stor14[msg.sender].field_0:
        revert with 0, 'no enough balance for claim fee'
    call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if t <= 0:
        revert with 0, 'There is no rewards.'
    staticcall _tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= t:
        revert with 0, 'no enough balance on phoenix'
    call _tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xedf0ff6b: msg.sender
}

function sub_4c000c44(?) payable {
    require calldata.size - 4 >= 32
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 >= stor14[msg.sender].field_0:
        revert with 0, 'invalid Node ID'
    if claimFee != msg.value:
        revert with 0, 'no enough balance'
    if arg1 >= stor14[msg.sender].field_0:
        revert with 0, 50
    if stor14[msg.sender][arg1].field_256 <= block.timestamp:
        revert with 0, 'expired node claim'
    if arg1 >= stor14[address(msg.sender)].field_0:
        revert with 0, 50
    if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 2604166666666 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
        revert with 0, 17
    if stor15[address(msg.sender)].field_0 <= stor8:
        if stor15[address(msg.sender)].field_0 < stor14[address(msg.sender)].field_0 / 10:
            if stor15[address(msg.sender)].field_0 and 10 > -1 / stor15[address(msg.sender)].field_0:
                revert with 0, 17
            if 0 < stor14[address(msg.sender)].field_0 / 100:
                if arg1 >= 10 * stor15[address(msg.sender)].field_0:
                    if arg1 >= 0:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if arg1 >= 0:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if arg1 >= 0:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
            else:
                if arg1 >= 10 * stor15[address(msg.sender)].field_0:
                    if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                        revert with 0, 17
                    if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
        else:
            if stor14[address(msg.sender)].field_0 / 10 and 10 > -1 / stor14[address(msg.sender)].field_0 / 10:
                revert with 0, 17
            if 0 < stor14[address(msg.sender)].field_0 / 100:
                if arg1 >= 10 * stor14[address(msg.sender)].field_0 / 10:
                    if arg1 >= 0:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if arg1 >= 0:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if arg1 >= 0:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
            else:
                if arg1 >= 10 * stor14[address(msg.sender)].field_0 / 10:
                    if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                        revert with 0, 17
                    if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
    else:
        if stor8 < stor14[address(msg.sender)].field_0 / 10:
            if stor8 and 10 > -1 / stor8:
                revert with 0, 17
            if 1 < stor14[address(msg.sender)].field_0 / 100:
                if arg1 >= 10 * stor8:
                    if arg1 >= 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if arg1 >= 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if arg1 >= 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
            else:
                if arg1 >= 10 * stor8:
                    if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                        revert with 0, 17
                    if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
        else:
            if stor14[address(msg.sender)].field_0 / 10 and 10 > -1 / stor14[address(msg.sender)].field_0 / 10:
                revert with 0, 17
            if 1 < stor14[address(msg.sender)].field_0 / 100:
                if arg1 >= 10 * stor14[address(msg.sender)].field_0 / 10:
                    if arg1 >= 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if arg1 >= 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if arg1 >= 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
            else:
                if arg1 >= 10 * stor14[address(msg.sender)].field_0 / 10:
                    if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                        revert with 0, 17
                    if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                        if arg1 >= stor14[msg.sender].field_0:
                            revert with 0, 50
                        stor14[msg.sender][arg1].field_0 = block.timestamp
                        if not (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'There is no rewards.'
                        staticcall _tokenContractAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0):
                            revert with 0, 'no enough balance on phoenix'
                        call _tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0)
                    else:
                        if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                            revert with 0, 50
                        if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                            if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                revert with 0, 17
                            if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                revert with 0, 17
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (3182870370369 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                else:
                    if arg1 / 10 >= stor15[address(msg.sender)].field_0:
                        revert with 0, 50
                    if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 10].field_0:
                        if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 289351851851 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor14[address(msg.sender)][arg1].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3472222222220 * stor14[address(msg.sender)][arg1].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2893518518517 * stor14[address(msg.sender)][arg1].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
                    else:
                        if block.timestamp < stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0 and 289351851851 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 10].field_0:
                            revert with 0, 17
                        if (2604166666666 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) > !((289351851851 * block.timestamp) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)):
                            revert with 0, 17
                        if stor14[address(msg.sender)].field_0 / 100 and 100 > -1 / stor14[address(msg.sender)].field_0 / 100:
                            revert with 0, 17
                        if arg1 >= 100 * stor14[address(msg.sender)].field_0 / 100:
                            if arg1 >= stor14[msg.sender].field_0:
                                revert with 0, 50
                            stor14[msg.sender][arg1].field_0 = block.timestamp
                            if not (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'There is no rewards.'
                            staticcall _tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                revert with 0, 'no enough balance on phoenix'
                            call _tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                        else:
                            if arg1 / 100 >= stor15[address(msg.sender)].field_0:
                                revert with 0, 50
                            if stor14[address(msg.sender)][arg1].field_0 >= stor15[address(msg.sender)][arg1 / 100].field_0:
                                if block.timestamp < stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor14[address(msg.sender)][arg1].field_0 and 578703703703 > -1 / block.timestamp - stor14[address(msg.sender)][arg1].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor14[address(msg.sender)][arg1].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (3182870370369 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0)
                            else:
                                if block.timestamp < stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0 and 578703703703 > -1 / block.timestamp - stor15[address(msg.sender)][arg1 / 100].field_0:
                                    revert with 0, 17
                                if (2893518518517 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) > !((578703703703 * block.timestamp) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)):
                                    revert with 0, 17
                                if arg1 >= stor14[msg.sender].field_0:
                                    revert with 0, 50
                                stor14[msg.sender][arg1].field_0 = block.timestamp
                                if not (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'There is no rewards.'
                                staticcall _tokenContractAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0):
                                    revert with 0, 'no enough balance on phoenix'
                                call _tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (3472222222220 * block.timestamp) - (2604166666666 * stor14[address(msg.sender)][arg1].field_0) - (289351851851 * stor15[address(msg.sender)][arg1 / 10].field_0) - (578703703703 * stor15[address(msg.sender)][arg1 / 100].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call 0xcdd337ac33be88d437cfae5e1538ee73c8c76f98 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ClaimNode(msg.sender, arg1);
}



}
