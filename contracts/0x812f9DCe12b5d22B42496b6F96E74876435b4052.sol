contract main {




// =====================  Runtime code  =====================


#
#  - sub_41442c0a(?)
#  - sub_9e71d8b3(?)
#
address owner;
uint256 stor1;
address stor2;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
address fundAddress;
uint256 sub_0e977b26;
uint256 sub_8d367a33;
uint256 publicPrice;
uint256 sub_08e5f90c;
mapping of uint256 sub_695cd31c;
uint256 whitelistPrice;
uint256 sub_db60c135;
mapping of uint256 balanceOf;

function sub_08e5f90c(?) {
    return sub_08e5f90c
}

function sub_0e977b26(?) {
    return sub_0e977b26
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function sub_695cd31c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_695cd31c[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8d367a33(?) {
    return sub_8d367a33
}

function owner() {
    return owner
}

function publicPrice() {
    return publicPrice
}

function sub_db60c135(?) {
    return sub_db60c135
}

function fundAddress() {
    return fundAddress
}

function whitelistPrice() {
    return whitelistPrice
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a60b20aa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e977b26 = arg1
}

function sub_7f19abe0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fundAddress = address(arg1)
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function sub_908b2004(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: value must be greater than 0'
    sub_08e5f90c = arg1
}

function sub_e5595206(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Value must be greater than 0'
    sub_db60c135 = arg1
}

function setPublicPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: value must be greater than 0'
    publicPrice = arg1
}

function setWhitelistPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Value must be greater than 0'
    whitelistPrice = arg1
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

function setPriceFeed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[13536 len 914], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = address(create.new_address)
}

function sub_5b6c3924(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor2.getLatestPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if bool(ext_call.return_data[0] > 0) and ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108b:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
        revert with 'NH{q', 17
    if arg1 and 1000000000000000000 * 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (1000000000000000000 * 10^18 * arg1 / 10^10 * ext_call.return_data[0])
}

function sub_1a5df9c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_695cd31c[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_695cd31c[address(msg.sender)] + arg1 > sub_08e5f90c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: buy amount exceeds public max balance'
    if sub_8d367a33 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_8d367a33 + arg1 >= sub_0e977b26:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FOREST: Buy amount exceeds the public hard cap'
    if uint8(stor3.field_160):
        revert with 0, 'FOREST: contract is paused'
    staticcall stor2.getLatestPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if bool(ext_call.return_data[0] > 0) and ext_call.return_data[0] > 0x36f9bfb3af7b756fad5cd10396a21346cbefc1bf33a44ab72e36108b:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[0] < 0) and ext_call.return_data[0] < 0xffffffffc906404c50848a9052a32efc695decb934103e40cc5bb548d1c9ef75:
        revert with 'NH{q', 17
    if publicPrice and 1000000000000000000 * 10^18 > -1 / publicPrice:
        revert with 'NH{q', 17
    if not 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1000000000000000000 * 10^18 * publicPrice / 10^10 * ext_call.return_data[0] and arg1 > -1 / 1000000000000000000 * 10^18 * publicPrice / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if msg.value < 1000000000000000000 * 10^18 * publicPrice / 10^10 * ext_call.return_data[0] * arg1:
        revert with 0, 'FOREST: Value too low'
    if sub_8d367a33 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_8d367a33 += arg1
    if sub_695cd31c[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_695cd31c[address(msg.sender)] += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    stor1 = 1
}

function sub_8e682176(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    staticcall address(stor3.field_0).WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 228] = 128
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = fundAddress
    mem[ceil32(return_data.size) + 292] = block.timestamp + 60
    call address(stor3.field_0).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, fundAddress, block.timestamp + 60, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _22 = mem[ceil32(return_data.size) + 192 len 4], 0
    require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
    require _22 + (32 * _23) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _22 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _22 + (32 * _23) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}

function sub_417cfe28(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if not arg2:
        mem[ceil32(ceil32(arg1.length)) + 194] = 0
        mem[ceil32(ceil32(arg1.length)) + 194 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 1) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(ceil32(arg1.length)) + arg1.length + 194] = 0
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 194 len floor32(arg1.length + 32)] = '0', mem[ceil32(ceil32(arg1.length)) + 194 len floor32(arg1.length + 32) - 1]
        mem[ceil32(ceil32(arg1.length)) + (2 * arg1.length) + 195] = 14
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 194] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 194 len arg1.length + 33])]
        return memory
          from ceil32(ceil32(arg1.length)) + arg1.length + 194
           len 32
    s = 0
    idx = arg2
    while idx:
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg1.length)) + 97] = s
    if s:
        mem[ceil32(ceil32(arg1.length)) + 129 len s] = call.data[calldata.size len s]
    t = s
    idx = arg2
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 'NH{q', 50
        mem[t + ceil32(ceil32(arg1.length)) + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(s) + 161 len ceil32(mem[ceil32(ceil32(arg1.length)) + 97])] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(mem[ceil32(ceil32(arg1.length)) + 97])]
    if ceil32(mem[ceil32(ceil32(arg1.length)) + 97]) > mem[ceil32(ceil32(arg1.length)) + 97]:
        mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + 161 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 161 len floor32(mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 31)] = mem[ceil32(ceil32(arg1.length)) + ceil32(s) + 161 len floor32(mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 31)]
    mem[ceil32(ceil32(arg1.length)) + ceil32(s) + (2 * mem[ceil32(ceil32(arg1.length)) + 97]) + (2 * arg1.length) + 161] = 14
    mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 161] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 161 len mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + ceil32(s) + mem[ceil32(ceil32(arg1.length)) + 97] + arg1.length + 161
       len 32
}



}
