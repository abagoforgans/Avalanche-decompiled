contract main {




// =====================  Runtime code  =====================


address owner;
address swapRouteAddress;
array of struct tokenPaths;
mapping of uint256 tokenDecimals;

function TokenDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenDecimals[arg1]
}

function swapRoute() payable {
    return swapRouteAddress
}

function owner() payable {
    return owner
}

function TokenPaths(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < tokenPaths[arg1].field_0
    return tokenPaths[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTokenPath(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPaths[address(arg1)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while tokenPaths[address(arg1)].field_0 > idx:
            tokenPaths[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            tokenPaths[address(arg1)][s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while tokenPaths[address(arg1)].field_0 > idx:
            tokenPaths[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    tokenDecimals[address(arg1)] = arg2
    return 1
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = 10^tokenDecimals[address(arg1)]
    mem[132] = 64
    mem[164] = tokenPaths[address(arg1)].field_0
    if not tokenPaths[address(arg1)].field_0:
        require ext_code.size(swapRouteAddress)
        staticcall swapRouteAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 10^tokenDecimals[address(arg1)], 64, tokenPaths[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _7 = mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32
        require mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96]
        _10 = mem[_7 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_7 + 96])] = mem[_7 + 128 len floor32(mem[_7 + 96])]
        mem[64] = (32 * _10) + ceil32(return_data.size) + 128
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        mem[(32 * _10) + ceil32(return_data.size) + 128] = 10^12 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        return memory
          from (32 * _10) + ceil32(return_data.size) + 128
           len 32
    mem[0] = sha3(address(arg1), 2)
    mem[196] = tokenPaths[address(arg1)].field_0
    idx = 196
    s = 0
    while (32 * tokenPaths[address(arg1)].field_0) + 196 > idx + 32:
        mem[idx + 32] = tokenPaths[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(swapRouteAddress)
    staticcall swapRouteAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^tokenDecimals[address(arg1)], Array(len=tokenPaths[address(arg1)].field_0, data=mem[196 len 32 * tokenPaths[address(arg1)].field_0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _25 = mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32
    require mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, 10^tokenDecimals[address(arg1)]) >> 32 + 96]
    _28 = mem[_25 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_25 + 96])] = mem[_25 + 128 len floor32(mem[_25 + 96])]
    mem[64] = (32 * _28) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _28) + ceil32(return_data.size) + 128] = 10^12 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    return memory
      from (32 * _28) + ceil32(return_data.size) + 128
       len 32
}



}
