contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
address sub_1d470cb1Address;
address BUSDAddress;
address BNBAddress;
address USDCAddress;
address USDTAddress;
address AVAXAddress;
address ETHAddress;
address WBTCAddress;
array of address routers;
uint8 stor12;

function sub_1d470cb1(?) {
    return sub_1d470cb1Address
}

function sub_1e5b8cc3(?) {
    return stor1.length
}

function BUSD() {
    return BUSDAddress
}

function WBTC() {
    return WBTCAddress
}

function routers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < routers.length
    return routers[arg1]
}

function BNB() {
    return BNBAddress
}

function ETH() {
    return ETHAddress
}

function USDC() {
    return USDCAddress
}

function owner() {
    return owner
}

function AVAX() {
    return AVAXAddress
}

function USDT() {
    return USDTAddress
}

function paths(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < stor11.length
    require arg2 < stor11[arg1].field_0
    return stor[('array', ('param', 'arg1'), ('name', 'stor11', 11)) + arg2].field_0
}

function withdrawal() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner = caller not owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value'
}

function sub_de0b45e5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'onlyOwner = caller not owner'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8d0c06f4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'onlyOwner = caller not owner'
    if stor11.length < 1:
        revert with 'NH{q', 17
    if stor11.length - 1 >= stor11.length:
        revert with 'NH{q', 50
    if arg1 >= stor11.length:
        revert with 'NH{q', 50
    stor11[arg1].field_0 = stor11[stor11.length].field_0
    if not stor11[stor11.length].field_0:
        idx = 0
        while stor11[arg1].field_0 > idx:
            stor11[arg1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor11[stor11.length].field_0 > idx:
            stor11[arg1 + s].field_0 = stor[idx + sha3(('name', 'stor11', 11) + stor11.length - 1)].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor11[stor11.length].field_0
        while stor11[arg1].field_0 > idx:
            stor11[arg1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    if not stor11.length:
        revert with 'NH{q', 49
    stor11[stor11.length].field_0 = 0
    idx = 0
    while stor11[stor11.length].field_0 > idx:
        stor[idx + sha3(('name', 'stor11', 11) + stor11.length - 1)].field_0 = 0
        idx = idx + 1
        continue 
    stor11.length--
}

function sub_7b226c3b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner = caller not owner'
    stor11.length++
    stor11[stor11.length].field_0 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor11[stor11.length].field_0 > idx:
            stor11[stor11.length + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor11[stor11.length + s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor11[stor11.length].field_0 > idx:
            stor11[stor11.length + idx].field_0 = 0
            idx = idx + 1
            continue 
}

function init() {
    if stor12:
        revert with 0, 'already initialized'
    stor12 = 1
    owner = msg.sender
    mem[96] = sub_1d470cb1Address
    mem[128] = BNBAddress
    stor11.length++
    stor11[stor11.length].field_0 = 2
    s = 0
    idx = 96
    while 160 > idx:
        stor11[stor11.length + s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor11[stor11.length].field_0 > idx:
        stor11[stor11.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[160] = sub_1d470cb1Address
    mem[192] = USDTAddress
    mem[224] = BUSDAddress
    mem[256] = BNBAddress
    stor11.length++
    stor11[stor11.length].field_0 = 4
    s = 0
    idx = 160
    while 288 > idx:
        stor11[stor11.length + s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor11[stor11.length].field_0 > idx:
        stor11[stor11.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[288] = sub_1d470cb1Address
    mem[320] = USDCAddress
    mem[352] = USDTAddress
    mem[384] = BUSDAddress
    mem[416] = BNBAddress
    stor11.length++
    stor11[stor11.length].field_0 = 5
    s = 0
    idx = 288
    while 448 > idx:
        stor11[stor11.length + s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor11[stor11.length].field_0 > idx:
        stor11[stor11.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    routers.length++
    routers[routers.length] = 0xcd7d16fb918511bf7269ec4f48d61d79fb26f918
    routers.length++
    routers[routers.length] = 0xec0a7a0c2439e8cb67b992b12ecd020ea943c7be
    routers.length++
    routers[routers.length] = 0x145863eb42cf62847a6ca784e6416c1682b1b2ae
    routers.length++
    routers[routers.length] = 0x145677fc4d9b8f19b5d56d1820c48e0443049a30
}

function sub_6f520e7c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    if cd[68] >= routers.length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    mem[floor32(('cd', 36).length) + 133] = 128
    mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 261
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + 165] = msg.sender
    mem[floor32(('cd', 36).length) + 197] = block.timestamp
    call routers[cd[68]].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _25 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _26 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + _25 + 129
    s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 36).length) + _25 + (32 * _26) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}

function sub_bf92e75b(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    if cd[68] >= routers.length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 36).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    mem[floor32(('cd', 36).length) + 133] = 64
    mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 197
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routers[cd[68]].getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _35 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _36 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + _35 + 129
    s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 36).length) + _35 + (32 * _36) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= _36:
        revert with 'NH{q', 50
    return memory
      from (32 * ('cd', 36).length - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129
       len 32
}

function sub_1c9bf234(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    if cd[68] >= routers.length:
        revert with 'NH{q', 50
    mem[0] = 10
    mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    mem[floor32(('cd', 36).length) + 133] = 128
    mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 261
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + 165] = this.address
    mem[floor32(('cd', 36).length) + 197] = block.timestamp
    call routers[cd[68]].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _45 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _46 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _45 + (32 * _46) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + _45 + 129
    s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 36).length) + _45 + (32 * _46) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    staticcall BNBAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _63 = mem[_62]
    require mem[_62] == mem[_62]
    mem[mem[64] + 4] = stor1.length
    mem[mem[64] + 36] = _63
    call BNBAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1.length, _63
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_66] == bool(mem[_66])
    require ext_code.size(stor1.length)
    call stor1.length.anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args BNBAddress, msg.sender, _63, 56
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8308c69e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor11.length:
        s = 0
        t = 0
        t = 0
        u = 0
        while s < routers.length:
            if idx >= stor11.length:
                revert with 'NH{q', 50
            mem[0] = 11
            _38 = mem[64]
            mem[64] = mem[64] + (32 * stor11[idx].field_0) + 32
            mem[_38] = stor11[idx].field_0
            if not stor11[idx].field_0:
                if s >= routers.length:
                    revert with 'NH{q', 50
                mem[0] = 10
                _41 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor11[idx].field_0
                v = 0
                w = _38 + 32
                x = mem[64] + 100
                while v < stor11[idx].field_0:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                staticcall routers[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _41 + (32 * stor11[idx].field_0) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _56 = mem[_55]
                require mem[_55] <= test266151307()
                require _55 + mem[_55] + 31 < _55 + return_data.size
                _57 = mem[_55 + mem[_55]]
                if mem[_55 + mem[_55]] > test266151307():
                    revert with 'NH{q', 65
                if _55 + ceil32(return_data.size) + floor32(mem[_55 + mem[_55]]) + 1 > test266151307() or floor32(mem[_55 + mem[_55]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _55 + ceil32(return_data.size) + floor32(mem[_55 + mem[_55]]) + 1
                mem[_55 + ceil32(return_data.size)] = _57
                require _56 + (32 * _57) + 32 <= return_data.size
                v = _55 + _56 + 32
                w = _55 + ceil32(return_data.size) + 32
                while v < _55 + _56 + (32 * _57) + 32:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    continue 
                if mem[_38] < 1:
                    revert with 'NH{q', 17
                if mem[_38] - 1 >= _57:
                    revert with 'NH{q', 50
                if s == -1:
                    revert with 'NH{q', 17
                if mem[(32 * mem[_38] - 1) + _55 + ceil32(return_data.size) + 32] <= t:
                    s = s + 1
                    t = mem[(32 * mem[_38] - 1) + _55 + ceil32(return_data.size) + 32]
                    t = t
                    u = u
                    continue 
                s = s + 1
                t = mem[(32 * mem[_38] - 1) + _55 + ceil32(return_data.size) + 32]
                t = mem[(32 * mem[_38] - 1) + _55 + ceil32(return_data.size) + 32]
                u = idx
                continue 
            mem[0] = sha3(11) + idx
            mem[_38 + 32] = stor11[idx].field_0
            v = _38 + 32
            w = sha3(mem[0])
            while _38 + (32 * stor11[v].field_0) > v:
                mem[v + 32] = stor1[w]
                v = v + 32
                w = w + 1
                continue 
            if s >= routers.length:
                revert with 'NH{q', 50
            mem[0] = 10
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _67 = mem[_38]
            mem[mem[64] + 68] = mem[_38]
            idx = 0
            w = _38 + 32
            x = mem[64] + 100
            while idx < _67:
                mem[x] = mem[w + 12 len 20]
                idx = idx + 1
                w = w + 32
                x = x + 32
                continue 
            staticcall routers[s].getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[mem[64] + 68 len (32 * _67) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _83 = mem[_82]
            require mem[_82] <= test266151307()
            require _82 + mem[_82] + 31 < _82 + return_data.size
            _84 = mem[_82 + mem[_82]]
            if mem[_82 + mem[_82]] > test266151307():
                revert with 'NH{q', 65
            if _82 + ceil32(return_data.size) + floor32(mem[_82 + mem[_82]]) + 1 > test266151307() or floor32(mem[_82 + mem[_82]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _82 + ceil32(return_data.size) + floor32(mem[_82 + mem[_82]]) + 1
            mem[_82 + ceil32(return_data.size)] = _84
            require _83 + (32 * _84) + 32 <= return_data.size
            idx = _82 + _83 + 32
            w = _82 + ceil32(return_data.size) + 32
            while idx < _82 + _83 + (32 * _84) + 32:
                require mem[idx] == mem[idx]
                mem[w] = mem[idx]
                idx = idx + 32
                w = w + 32
                continue 
            if mem[_38] < 1:
                revert with 'NH{q', 17
            if mem[_38] - 1 >= _84:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if mem[(32 * mem[_38] - 1) + _82 + ceil32(return_data.size) + 32] <= t:
                s = s + 1
                t = mem[(32 * mem[_38] - 1) + _82 + ceil32(return_data.size) + 32]
                t = t
                u = u
                continue 
            s = s + 1
            t = mem[(32 * mem[_38] - 1) + _82 + ceil32(return_data.size) + 32]
            t = mem[(32 * mem[_38] - 1) + _82 + ceil32(return_data.size) + 32]
            u = v
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_6d751940(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= stor11.length:
        revert with 'NH{q', 50
    mem[96] = stor11[arg2].field_0
    if not stor11[arg2].field_0:
        if arg3 >= routers.length:
            revert with 'NH{q', 50
        mem[(32 * stor11[arg2].field_0) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * stor11[arg2].field_0) + 132] = arg1
        mem[(32 * stor11[arg2].field_0) + 164] = 64
        mem[(32 * stor11[arg2].field_0) + 196] = stor11[arg2].field_0
        idx = 0
        s = 128
        t = (32 * stor11[arg2].field_0) + 228
        while idx < stor11[arg2].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routers[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * stor11[arg2].field_0) + 132 len (96 * stor11[arg2].field_0) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11[arg2].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _22 = mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159 < (32 * stor11[arg2].field_0) + return_data.size + 128
        _23 = mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        if mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (32 * stor11[arg2].field_0) + ceil32(return_data.size) + floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
        mem[(32 * stor11[arg2].field_0) + ceil32(return_data.size) + 128] = mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        require _22 + (32 * _23) + 32 <= return_data.size
        idx = (32 * stor11[arg2].field_0) + _22 + 160
        s = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + 160
        while idx < (32 * stor11[arg2].field_0) + _22 + (32 * _23) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if stor11[arg2].field_0 < 1:
            revert with 'NH{q', 17
        if stor11[arg2].field_0 - 1 >= _23:
            revert with 'NH{q', 50
    else:
        mem[128] = stor11[arg2].field_0
        idx = 128
        s = 0
        while (32 * stor11[arg2].field_0) + 96 > idx:
            mem[idx + 32] = stor11[arg2 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg3 >= routers.length:
            revert with 'NH{q', 50
        mem[(32 * stor11[arg2].field_0) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * stor11[arg2].field_0) + 132] = arg1
        mem[(32 * stor11[arg2].field_0) + 164] = 64
        mem[(32 * stor11[arg2].field_0) + 196] = stor11[arg2].field_0
        idx = 0
        s = 128
        t = (32 * stor11[arg2].field_0) + 228
        while idx < stor11[arg2].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall routers[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * stor11[arg2].field_0) + 132 len (96 * stor11[arg2].field_0) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * stor11[arg2].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _55 = mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159 < (32 * stor11[arg2].field_0) + return_data.size + 128
        _56 = mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        if mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (32 * stor11[arg2].field_0) + ceil32(return_data.size) + floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + floor32(mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
        mem[(32 * stor11[arg2].field_0) + ceil32(return_data.size) + 128] = mem[(32 * stor11[arg2].field_0) + mem[(32 * stor11[arg2].field_0) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
        require _55 + (32 * _56) + 32 <= return_data.size
        idx = (32 * stor11[arg2].field_0) + _55 + 160
        s = (32 * stor11[arg2].field_0) + ceil32(return_data.size) + 160
        while idx < (32 * stor11[arg2].field_0) + _55 + (32 * _56) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if stor11[arg2].field_0 < 1:
            revert with 'NH{q', 17
        if stor11[arg2].field_0 - 1 >= _56:
            revert with 'NH{q', 50
    return memory
      from (32 * stor11[arg2].field_0 - 1) + (32 * stor11[arg2].field_0) + ceil32(return_data.size) + 160
       len 32
}

function _fallback() payable {
    mem[64] = 96
    idx = 0
    while idx < stor11.length:
        s = 0
        t = 0
        t = 0
        u = 0
        while s < routers.length:
            if idx >= stor11.length:
                revert with 'NH{q', 50
            mem[0] = 11
            _58 = mem[64]
            mem[64] = mem[64] + (32 * stor11[idx].field_0) + 32
            mem[_58] = stor11[idx].field_0
            if not stor11[idx].field_0:
                if s >= routers.length:
                    revert with 'NH{q', 50
                mem[0] = 10
                _61 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.value
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor11[idx].field_0
                v = 0
                w = _58 + 32
                x = mem[64] + 100
                while v < stor11[idx].field_0:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                staticcall routers[s].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _61 + (32 * stor11[idx].field_0) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _96 = mem[_95]
                require mem[_95] <= test266151307()
                require _95 + mem[_95] + 31 < _95 + return_data.size
                _98 = mem[_95 + mem[_95]]
                if mem[_95 + mem[_95]] > test266151307():
                    revert with 'NH{q', 65
                if _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1 > test266151307() or floor32(mem[_95 + mem[_95]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1
                mem[_95 + ceil32(return_data.size)] = _98
                require _96 + (32 * _98) + 32 <= return_data.size
                v = _95 + _96 + 32
                w = _95 + ceil32(return_data.size) + 32
                while v < _95 + _96 + (32 * _98) + 32:
                    require mem[v] == mem[v]
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    continue 
                if mem[_58] < 1:
                    revert with 'NH{q', 17
                if mem[_58] - 1 >= _98:
                    revert with 'NH{q', 50
                if s == -1:
                    revert with 'NH{q', 17
                if mem[(32 * mem[_58] - 1) + _95 + ceil32(return_data.size) + 32] <= t:
                    s = s + 1
                    t = mem[(32 * mem[_58] - 1) + _95 + ceil32(return_data.size) + 32]
                    t = t
                    u = u
                    continue 
                s = s + 1
                t = mem[(32 * mem[_58] - 1) + _95 + ceil32(return_data.size) + 32]
                t = mem[(32 * mem[_58] - 1) + _95 + ceil32(return_data.size) + 32]
                u = idx
                continue 
            mem[0] = sha3(11) + idx
            mem[_58 + 32] = stor11[idx].field_0
            v = _58 + 32
            w = sha3(mem[0])
            while _58 + (32 * stor11[v].field_0) > v:
                mem[v + 32] = stor1[w]
                v = v + 32
                w = w + 1
                continue 
            if s >= routers.length:
                revert with 'NH{q', 50
            mem[0] = 10
            _133 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.value
            mem[mem[64] + 36] = 64
            _135 = mem[_58]
            mem[mem[64] + 68] = mem[_58]
            idx = 0
            w = _58 + 32
            x = mem[64] + 100
            while idx < _135:
                mem[x] = mem[w + 12 len 20]
                idx = idx + 1
                w = w + 32
                x = x + 32
                continue 
            staticcall routers[s].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _133 + (32 * _135) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _169 = mem[_168]
            require mem[_168] <= test266151307()
            require _168 + mem[_168] + 31 < _168 + return_data.size
            _170 = mem[_168 + mem[_168]]
            if mem[_168 + mem[_168]] > test266151307():
                revert with 'NH{q', 65
            if _168 + ceil32(return_data.size) + floor32(mem[_168 + mem[_168]]) + 1 > test266151307() or floor32(mem[_168 + mem[_168]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _168 + ceil32(return_data.size) + floor32(mem[_168 + mem[_168]]) + 1
            mem[_168 + ceil32(return_data.size)] = _170
            require _169 + (32 * _170) + 32 <= return_data.size
            idx = _168 + _169 + 32
            w = _168 + ceil32(return_data.size) + 32
            while idx < _168 + _169 + (32 * _170) + 32:
                require mem[idx] == mem[idx]
                mem[w] = mem[idx]
                idx = idx + 32
                w = w + 32
                continue 
            if mem[_58] < 1:
                revert with 'NH{q', 17
            if mem[_58] - 1 >= _170:
                revert with 'NH{q', 50
            if s == -1:
                revert with 'NH{q', 17
            if mem[(32 * mem[_58] - 1) + _168 + ceil32(return_data.size) + 32] <= t:
                s = s + 1
                t = mem[(32 * mem[_58] - 1) + _168 + ceil32(return_data.size) + 32]
                t = t
                u = u
                continue 
            s = s + 1
            t = mem[(32 * mem[_58] - 1) + _168 + ceil32(return_data.size) + 32]
            t = mem[(32 * mem[_58] - 1) + _168 + ceil32(return_data.size) + 32]
            u = v
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= stor11.length:
        revert with 'NH{q', 50
    mem[0] = 11
    _18 = mem[64]
    mem[64] = mem[64] + (32 * uint256(stor11.field_0)) + 32
    mem[_18] = uint256(stor11.field_0)
    if not uint256(stor11.field_0):
        if 0 >= routers.length:
            revert with 'NH{q', 50
        mem[0] = 10
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = uint256(stor11.field_0)
        idx = 0
        s = _18 + 32
        t = mem[64] + 164
        while idx < uint256(stor11.field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp
        call routers.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, uint256(stor11.field_0), mem[mem[64] + 164 len 32 * uint256(stor11.field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _65 = mem[_64]
        require mem[_64] <= test266151307()
        require _64 + mem[_64] + 31 < _64 + return_data.size
        _66 = mem[_64 + mem[_64]]
        if mem[_64 + mem[_64]] > test266151307():
            revert with 'NH{q', 65
        if _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1 > test266151307() or floor32(mem[_64 + mem[_64]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1
        mem[_64 + ceil32(return_data.size)] = _66
        require _65 + (32 * _66) + 32 <= return_data.size
        idx = _64 + _65 + 32
        s = _64 + ceil32(return_data.size) + 32
        while idx < _64 + _65 + (32 * _66) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall BNBAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _102 = mem[_100]
        require mem[_100] == mem[_100]
        mem[mem[64] + 4] = stor1.length
        mem[mem[64] + 36] = _102
        call BNBAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1.length, _102
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_114] == bool(mem[_114])
        require ext_code.size(stor1.length)
        call stor1.length.anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args BNBAddress, msg.sender, _102, 56
    else:
        mem[_18 + 32] = stor[sha3(('name', 'stor11', 11))].field_0
        idx = _18 + 32
        s = 0
        while _18 + (32 * uint256(stor11.field_0)) > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor11', 11))].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 0 >= routers.length:
            revert with 'NH{q', 50
        mem[0] = 10
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = uint256(stor11.field_0)
        idx = 0
        s = _18 + 32
        t = mem[64] + 164
        while idx < uint256(stor11.field_0):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp
        call routers.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, uint256(stor11.field_0), mem[mem[64] + 164 len 32 * uint256(stor11.field_0)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _140 = mem[_139]
        require mem[_139] <= test266151307()
        require _139 + mem[_139] + 31 < _139 + return_data.size
        _143 = mem[_139 + mem[_139]]
        if mem[_139 + mem[_139]] > test266151307():
            revert with 'NH{q', 65
        if _139 + ceil32(return_data.size) + floor32(mem[_139 + mem[_139]]) + 1 > test266151307() or floor32(mem[_139 + mem[_139]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _139 + ceil32(return_data.size) + floor32(mem[_139 + mem[_139]]) + 1
        mem[_139 + ceil32(return_data.size)] = _143
        require _140 + (32 * _143) + 32 <= return_data.size
        idx = _139 + _140 + 32
        s = _139 + ceil32(return_data.size) + 32
        while idx < _139 + _140 + (32 * _143) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall BNBAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _174 = mem[_172]
        require mem[_172] == mem[_172]
        mem[mem[64] + 4] = stor1.length
        mem[mem[64] + 36] = _174
        call BNBAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1.length, _174
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == bool(mem[_181])
        require ext_code.size(stor1.length)
        call stor1.length.anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args BNBAddress, msg.sender, _174, 56
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
