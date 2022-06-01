contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address routerAddress;
uint256 stor2; offset 32
uint256 amountIn;
uint256 amountOutMin;
array of address path;
uint256 deadline;

function SELF() {
    return SELFAddress
}

function deadline() {
    return deadline
}

function amountOutMin() {
    return amountOutMin
}

function amountIn() {
    return amountIn
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return address(path[arg1])
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    deadline = arg1
}

function withdrawEth() {
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call SELFAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args SELFAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8937156c(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = address(cd[4])
    amountIn = cd[36]
    amountOutMin = cd[68]
    path.length = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while path.length > idx:
            uint256(path[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[100] + 36
        while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
            address(path[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while path.length > idx:
            uint256(path[idx]) = 0
            idx = idx + 1
            continue 
    deadline = cd[132]
}

function sub_c42652e5(?) {
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = amountIn
    mem[132] = 64
    mem[164] = path.length
    mem[0] = 4
    idx = 0
    s = 0
    t = 196
    while idx < path.length:
        mem[t] = address(path[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args amountIn, Array(len=path.length, data=mem[196 len 32 * path.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96 len 4], stor2
    require mem[96 len 4], stor2 <= test266151307()
    require mem[96 len 4], stor2 + 127 < return_data.size + 96
    _25 = mem[mem[96 len 4], stor2 + 96]
    if mem[mem[96 len 4], stor2 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor2 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], stor2 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], stor2 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _25
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = _24 + 128
    t = ceil32(return_data.size) + 128
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _25 < 1:
        revert with 'NH{q', 17
    if _25 - 1 >= _25:
        revert with 'NH{q', 50
    if mem[(32 * _25 - 1) + ceil32(return_data.size) + 128] < amountOutMin:
        revert with 0, 'e1'
    if 0 >= path.length:
        revert with 'NH{q', 50
    mem[0] = 4
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = -1
    require ext_code.size(address(path))
    call address(path).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_50] == bool(mem[_50])
    _52 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = amountIn
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = path.length
    mem[0] = 4
    idx = 0
    s = 0
    t = mem[64] + 196
    while idx < path.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_52 + 100] = SELFAddress
    mem[_52 + 132] = deadline
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _52 + (32 * path.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
