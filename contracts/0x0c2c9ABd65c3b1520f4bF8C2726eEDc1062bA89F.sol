contract main {




// =====================  Runtime code  =====================


#
#  - arbitrage()
#
address stor0;
address routerAddress;
address bridgeTokenAddress;
address underlyingTokenAddress;
array of address route;

function underlyingToken() payable {
    return underlyingTokenAddress
}

function route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < route.length
    return address(route[arg1])
}

function bridgeToken() payable {
    return bridgeTokenAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_74d8a607(?) payable {
    require ext_code.size(bridgeTokenAddress)
    staticcall bridgeTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4be21d3c(?) payable {
    require ext_code.size(underlyingTokenAddress)
    staticcall underlyingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0ff82bdd(?) payable {
    require ext_code.size(underlyingTokenAddress)
    staticcall underlyingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args bridgeTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function widthdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(underlyingTokenAddress)
    call underlyingTokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0c796a09(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = cd[100] + 36
    t = 128
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, '!owner'
    route.length = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while route.length > idx:
            uint256(route[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 100).length) + 128 > idx:
            address(route[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while route.length > idx:
            uint256(route[idx]) = 0
            idx = idx + 1
            continue 
    routerAddress = address(cd[4])
    bridgeTokenAddress = address(cd[36])
    underlyingTokenAddress = address(cd[68])
    if not route.length:
        revert with 0, 50
    if address(route) != address(cd[68]):
        revert with 0, '!route'
    if route.length < 1:
        revert with 0, 17
    if route.length - 1 >= route.length:
        revert with 0, 50
    if address(route[route.length]) != bridgeTokenAddress:
        revert with 0, '!route'
}

function profit() payable {
    mem[100] = bridgeTokenAddress
    require ext_code.size(underlyingTokenAddress)
    staticcall underlyingTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args bridgeTokenAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(bridgeTokenAddress)
    staticcall bridgeTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = 0
    mem[(2 * ceil32(return_data.size)) + 132] = 64
    mem[(2 * ceil32(return_data.size)) + 164] = route.length
    mem[0] = 4
    idx = 0
    s = 0
    t = (2 * ceil32(return_data.size)) + 196
    while idx < route.length:
        mem[t] = address(route[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 0, 64, route.length, mem[(2 * ceil32(return_data.size)) + 196 len 32 * route.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _25 = mem[(2 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 127
    _26 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _26] = mem[(2 * ceil32(return_data.size)) + _25 + 128 len 32 * _26]
    if 0 >= _26:
        revert with 0, 50
    if ext_call.return_data[0] < mem[(4 * ceil32(return_data.size)) + 128]:
        revert with 0, 17
    mem[mem[64]] = ext_call.return_data[0] - mem[(4 * ceil32(return_data.size)) + 128]
    return memory
      from mem[64]
       len 32
}



}
