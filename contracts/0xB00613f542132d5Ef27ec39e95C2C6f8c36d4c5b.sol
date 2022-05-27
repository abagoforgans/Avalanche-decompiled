contract main {




// =====================  Runtime code  =====================


#
#  - getRewardAmount(address arg1)
#  - sub_4c000c44(?)
#  - sub_717aa7d8(?)
#  - claimAll()
#  - sub_d2446bc1(?)
#  - buyNode(uint256 arg1)
#
const sub_e20fcf00(?) = eth.balance(0x52fd04aa057ba8ca4bcc675b55de7366f607a677)


address owner;
uint256 contractStatus;
address sub_8a14c2fdAddress;
address _burnAddress;
uint256 nodePrice;
uint256 sub_582726fc;
uint256 claimFee;
uint256 sub_a9ddd1c5;
address _tokenContractAddress;
address sub_fc79d647Address;
address stor10;
uint256 sub_c999fea3;
array of struct stor13;
array of struct stor14;

function sub_4110fe25(?) {
    return sub_c999fea3
}

function getClaimFee() {
    return claimFee
}

function sub_582726fc(?) {
    return sub_582726fc
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

function sub_be27fb45(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_582726fc = arg1
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
    if sub_c999fea3 < stor13[address(arg1)].field_0:
        revert with 0, 17
    sub_c999fea3 -= stor13[address(arg1)].field_0
    stor13[address(arg1)].field_0 = 0
    idx = 0
    while 3 * stor13[address(arg1)].field_0 > idx:
        stor13[address(arg1)][idx].field_0 = 0
        stor13[address(arg1)][idx].field_256 = 0
        stor13[address(arg1)][idx].field_512 = 0
        idx = idx + 3
        continue 
    stor14[address(arg1)].field_0 = 0
    idx = 0
    while 2 * stor14[address(arg1)].field_0 > idx:
        stor14[address(arg1)][idx].field_0 = 0
        uint8(stor14[address(arg1)][idx].field_256) = 0
        idx = idx + 2
        continue 
}

function sub_9f71b09d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor13[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 13)
        if stor13[address(arg1)][idx].field_0 > block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor13[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 13)
        if block.timestamp > stor13[address(arg1)][idx].field_256:
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
    mem[32] = 13
    mem[64] = (32 * stor13[address(arg1)].field_0) + 128
    mem[96] = stor13[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor13[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 13)
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = stor13[address(arg1)][idx].field_0
        mem[_13 + 32] = stor13[address(arg1)][idx].field_256
        mem[_13 + 64] = stor13[address(arg1)][idx].field_512
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

function getNFTList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
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
        if uint8(stor14[address(arg1)][idx].field_256) > 1:
            revert with 0, 33
        mem[_12 + 32] = uint8(stor14[address(arg1)][idx].field_256)
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
        mem[32] = 14
        _50 = sha3(mem[0], 14)
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
        _24 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_24] = cd[idx]
        mem[_24 + 32] = cd[(idx + 32)]
        mem[s] = _24
        s = s + 32
        idx = idx + 64
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _46 = mem[96]
    idx = 0
    while idx < _46:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 13
        _52 = sha3(mem[0], 13)
        _53 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[96]:
            revert with 0, 50
        mem[_53] = mem[mem[(32 * idx) + 128] + 32]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 32] > -7776001:
            revert with 0, 17
        mem[_53 + 32] = mem[mem[(32 * idx) + 128] + 32] + (2160 * 24 * 3600)
        mem[_53 + 64] = 0
        stor[_52]++
        mem[0] = _52
        stor[(3 * stor[_52]) + sha3(_52)] = mem[_53]
        stor[(3 * stor[_52]) + sha3(_52) + 1] = mem[_53 + 32]
        stor[(3 * stor[_52]) + sha3(_52) + 2] = 0
        if sub_c999fea3 == -1:
            revert with 0, 17
        sub_c999fea3++
        if idx == -1:
            revert with 0, 17
        _46 = mem[96]
        idx = idx + 1
        continue 
    if _46 != mem[96]:
        revert with 0, 'not complete transaction'
}

function sub_1bc32687(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = stor10
    staticcall sub_8a14c2fdAddress.WAVAX() with:
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
    mem[(2 * ceil32(return_data.size)) + 192] = _25
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
    staticcall sub_8a14c2fdAddress.WAVAX() with:
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
    mem[(2 * ceil32(return_data.size)) + 192] = _25
    require _24 + (32 * _25) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _25)] = mem[ceil32(return_data.size) + _24 + 224 len ceil32(32 * _25)]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_5f2d5827(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 > 1:
        revert with 0, 33
    if not arg1:
        if not sub_582726fc:
            revert with 0, 18
        idx = 0
        while idx < stor13[msg.sender].field_0:
            if idx >= stor13[msg.sender].field_0:
                revert with 0, 50
            if block.timestamp <= stor13[msg.sender][idx].field_256:
                if idx >= stor13[msg.sender].field_0:
                    revert with 0, 50
                if block.timestamp > -2592001:
                    revert with 0, 17
                if block.timestamp + (720 * 24 * 3600) >= stor13[msg.sender][idx].field_256:
                    if msg.value / sub_582726fc < 0:
                        if False and sub_582726fc > 0:
                            revert with 0, 17
                        if msg.value < 0:
                            revert with 0, 17
                        revert with 0, 'no enough balance'
                    if arg1 > 1:
                        revert with 0, 33
                    if not arg1:
                        if idx >= stor13[msg.sender].field_0:
                            revert with 0, 50
                        if stor13[msg.sender][idx].field_256 > -7776001:
                            revert with 0, 17
                        stor13[msg.sender][idx].field_256 += 2160 * 24 * 3600
                    else:
                        if arg1 > 1:
                            revert with 0, 33
                        if arg1 == 1:
                            if idx >= stor13[msg.sender].field_0:
                                revert with 0, 50
                            if stor13[msg.sender][idx].field_256 > -15552001:
                                revert with 0, 17
                            stor13[msg.sender][idx].field_256 += 4320 * 24 * 3600
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            continue 
        if False and sub_582726fc > 0:
            revert with 0, 17
    else:
        if arg1 > 1:
            revert with 0, 33
        if arg1 != 1:
            revert with 0, 18
        if sub_582726fc > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if not 2 * sub_582726fc:
            revert with 0, 18
        idx = 0
        while idx < stor13[msg.sender].field_0:
            if idx >= stor13[msg.sender].field_0:
                revert with 0, 50
            if block.timestamp <= stor13[msg.sender][idx].field_256:
                if idx >= stor13[msg.sender].field_0:
                    revert with 0, 50
                if block.timestamp > -2592001:
                    revert with 0, 17
                if block.timestamp + (720 * 24 * 3600) >= stor13[msg.sender][idx].field_256:
                    if msg.value / 2 * sub_582726fc < 0:
                        if False and 2 * sub_582726fc > 0:
                            revert with 0, 17
                        if msg.value < 0:
                            revert with 0, 17
                        revert with 0, 'no enough balance'
                    if arg1 > 1:
                        revert with 0, 33
                    if not arg1:
                        if idx >= stor13[msg.sender].field_0:
                            revert with 0, 50
                        if stor13[msg.sender][idx].field_256 > -7776001:
                            revert with 0, 17
                        stor13[msg.sender][idx].field_256 += 2160 * 24 * 3600
                    else:
                        if arg1 > 1:
                            revert with 0, 33
                        if arg1 == 1:
                            if idx >= stor13[msg.sender].field_0:
                                revert with 0, 50
                            if stor13[msg.sender][idx].field_256 > -15552001:
                                revert with 0, 17
                            stor13[msg.sender][idx].field_256 += 4320 * 24 * 3600
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            continue 
        if False and 2 * sub_582726fc > 0:
            revert with 0, 17
    if msg.value < 0:
        revert with 0, 17
    revert with 0, 'no enough balance'
}



}
