contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address sub_edd2bb92Address;
address baseTokenAddress;
array of address path;
uint256 stor5; offset 32
uint256 amountOutMin;
uint256 stor6; offset 32
uint256 amountIn;
uint8 sub_3148e308;
mapping of uint8 stor8;

function amountOutMin() {
    return amountOutMin
}

function sub_3148e308(?) {
    return sub_3148e308
}

function amountIn() {
    return amountIn
}

function owner() {
    return owner
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return address(path[arg1])
}

function baseToken() {
    return baseTokenAddress
}

function sub_c9bcb7b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function sub_edd2bb92(?) {
    return sub_edd2bb92Address
}

function router() {
    return routerAddress
}

function destory() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function setBurnRatio(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 100:
        revert with 0, 'burn ratio must be less then 100'
    sub_3148e308 = arg1
}

function withDraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function approve(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34e8bc8f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_558ac2db(?) {
    mem[32] = 8
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Worker: caller is not the worker''
    if block.timestamp > -2:
        revert with 'NH{q', 17
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = amountIn
    mem[132] = amountOutMin
    mem[164] = 160
    mem[260] = path.length
    mem[0] = 4
    idx = 0
    s = 0
    t = 292
    while idx < path.length:
        mem[t] = address(path[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[196] = owner
    mem[228] = block.timestamp + 1
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args amountIn, amountOutMin, Array(len=path.length, data=mem[292 len 32 * path.length]), owner, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], stor6
    require mem[96 len 4], stor6 <= test266151307()
    require mem[96 len 4], stor6 + 127 < return_data.size + 96
    _15 = mem[mem[96 len 4], stor6 + 96]
    if mem[mem[96 len 4], stor6 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor6 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor6 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor6 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _15
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = _14 + 128
    t = ceil32(return_data.size) + 128
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function buyWithEth() {
    mem[32] = 8
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Worker: caller is not the worker''
    if block.timestamp > -2:
        revert with 'NH{q', 17
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = amountOutMin
    mem[132] = 128
    mem[228] = path.length
    mem[0] = 4
    idx = 0
    s = 0
    t = 260
    while idx < path.length:
        mem[t] = address(path[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[164] = owner
    mem[196] = block.timestamp + 1
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value amountIn wei
         gas gas_remaining wei
        args amountOutMin, Array(len=path.length, data=mem[260 len 32 * path.length]), owner, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _20 = mem[96 len 4], stor5
    require mem[96 len 4], stor5 <= test266151307()
    require mem[96 len 4], stor5 + 127 < return_data.size + 96
    _21 = mem[mem[96 len 4], stor5 + 96]
    if mem[mem[96 len 4], stor5 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor5 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor5 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor5 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _21
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = _20 + 128
    t = ceil32(return_data.size) + 128
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 100 < sub_3148e308:
        revert with 'NH{q', 17
    if amountOutMin and uint8(-sub_3148e308 + 100) > -1 / amountOutMin:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = owner
    require ext_code.size(sub_edd2bb92Address)
    staticcall sub_edd2bb92Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _33 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_33] == mem[_33]
    if mem[_33] and 100 > -1 / mem[_33]:
        revert with 'NH{q', 17
    if 100 * mem[_33] < amountOutMin * uint8(-sub_3148e308 + 100):
        revert with 0, 'burned too much'
}

function sub_77762661(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_edd2bb92Address = address(cd[4])
    baseTokenAddress = address(cd[36])
    path.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while path.length > idx:
            uint256(path[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            address(path[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while path.length > idx:
            uint256(path[idx]) = 0
            idx = idx + 1
            continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if cd[100] and 1 > -1 / cd[100]:
            revert with 'NH{q', 17
        amountIn = cd[100]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if cd[100] and 10^ext_call.return_data[31 len 1] > -1 / cd[100]:
                revert with 'NH{q', 17
            amountIn = cd[100] * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if cd[100] and t * s > -1 / cd[100]:
                revert with 'NH{q', 17
            amountIn = cd[100] * t * s
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if cd[132] and 1 > -1 / cd[132]:
            revert with 'NH{q', 17
        amountOutMin = cd[132]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if cd[132] and 10^ext_call.return_data[31 len 1] > -1 / cd[132]:
                revert with 'NH{q', 17
            amountOutMin = cd[132] * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if cd[132] and t * s > -1 / cd[132]:
                revert with 'NH{q', 17
            amountOutMin = cd[132] * t * s
}



}
