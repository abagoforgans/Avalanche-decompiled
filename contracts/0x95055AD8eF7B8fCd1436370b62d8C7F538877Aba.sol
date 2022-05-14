contract main {




// =====================  Runtime code  =====================


#
#  - sub_695c2d53(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - withdraw(address arg1, uint256 arg2)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of address sub_5d520bb7;

function sub_5d520bb7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5d520bb7[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function approve(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a8a8a66e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'lps != routers lens'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_17]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        sub_5d520bb7[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setDXFTermRewardRatePerMonth(uint256 arg1) payable {
    require calldata.size - 4 >= 128
    require cd[68] == address(cd[68])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] < arg1:
        revert with 0, 17
    if ext_call.return_data[50 len 14] < cd[36]:
        revert with 0, 17
    if ext_call.return_data[50 len 14] - cd[36] and ext_call.return_data[18 len 14] - arg1 > -1 / ext_call.return_data[50 len 14] - cd[36]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] < (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (arg1 * ext_call.return_data[50 len 14]) - (ext_call.return_data[18 len 14] * cd[36]) + (arg1 * cd[36]):
        revert with 0, 17
    if (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (arg1 * ext_call.return_data[50 len 14]) + (ext_call.return_data[18 len 14] * cd[36]) - (arg1 * cd[36]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if ext_call.return_data[50 len 14] < cd[36]:
        revert with 0, 17
    if ext_call.return_data[50 len 14] - cd[36] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if not (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]):
        revert with 0, 18
    if not (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]):
        revert with 0, 18
    if not (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) % (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]):
        if (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]) > -1:
            revert with 0, 17
        if (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]) < cd[100]:
            return (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]), 
                   0
    else:
        if (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36]) > -2:
            revert with 0, 17
        if ((1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36])) + 1 < cd[100]:
            return ((1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (1000 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + (1000 * arg1 * ext_call.return_data[50 len 14]) + (1000 * ext_call.return_data[18 len 14] * cd[36]) - (1000 * arg1 * cd[36]) / (997 * ext_call.return_data[50 len 14]) - (997 * cd[36])) + 1, 
                   0
    if cd[100] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if ext_call.return_data[18 len 14] < arg1:
        revert with 0, 17
    if ext_call.return_data[18 len 14] - arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if (1000 * ext_call.return_data[18 len 14]) - (1000 * arg1) > !(997 * cd[100]):
        revert with 0, 17
    if ext_call.return_data[50 len 14] < cd[36]:
        revert with 0, 17
    if (1000 * ext_call.return_data[18 len 14]) - (1000 * arg1) + (997 * cd[100]) and ext_call.return_data[50 len 14] - cd[36] > -1 / (1000 * ext_call.return_data[18 len 14]) - (1000 * arg1) + (997 * cd[100]):
        revert with 0, 17
    if (1000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - (1000 * cd[36] * ext_call.return_data[18 len 14]) - (1000 * ext_call.return_data[50 len 14] * arg1) + (1000 * cd[36] * arg1) + (997 * ext_call.return_data[50 len 14] * cd[100]) - (997 * cd[36] * cd[100]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if ext_call.return_data[18 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
        revert with 0, 17
    if 10^6 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] < (10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - (10^6 * cd[36] * ext_call.return_data[18 len 14]) - (10^6 * ext_call.return_data[50 len 14] * arg1) + (10^6 * cd[36] * arg1) + (997000 * ext_call.return_data[50 len 14] * cd[100]) - (997000 * cd[36] * cd[100]):
        revert with 0, 17
    if (1000 * ext_call.return_data[18 len 14]) - (1000 * arg1) + (997 * cd[100]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if not (997000 * ext_call.return_data[18 len 14]) - (997000 * arg1) + (994009 * cd[100]):
        revert with 0, 18
    if not (997000 * ext_call.return_data[18 len 14]) - (997000 * arg1) + (994009 * cd[100]):
        revert with 0, 18
    if not (10^6 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) + (10^6 * cd[36] * ext_call.return_data[18 len 14]) + (10^6 * ext_call.return_data[50 len 14] * arg1) - (10^6 * cd[36] * arg1) - (997000 * ext_call.return_data[50 len 14] * cd[100]) + (997000 * cd[36] * cd[100]) % (997000 * ext_call.return_data[18 len 14]) - (997000 * arg1) + (994009 * cd[100]):
        if (10^6 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) + (10^6 * cd[36] * ext_call.return_data[18 len 14]) + (10^6 * ext_call.return_data[50 len 14] * arg1) - (10^6 * cd[36] * arg1) - (997000 * ext_call.return_data[50 len 14] * cd[100]) + (997000 * cd[36] * cd[100]) / (997000 * ext_call.return_data[18 len 14]) - (997000 * arg1) + (994009 * cd[100]) > -1:
            revert with 0, 17
        return cd[100], 
               (10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (10^6 * cd[36] * Mask(112, 0, ext_call.return_data[0])) + (10^6 * Mask(112, 0, ext_call.return_data[32]) * arg1) - (10^6 * cd[36] * arg1) - (997000 * Mask(112, 0, ext_call.return_data[32]) * cd[100]) + (997000 * cd[36] * cd[100]) / (997000 * Mask(112, 0, ext_call.return_data[0])) - (997000 * arg1) + (994009 * cd[100])
    if (10^6 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) - (10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) + (10^6 * cd[36] * ext_call.return_data[18 len 14]) + (10^6 * ext_call.return_data[50 len 14] * arg1) - (10^6 * cd[36] * arg1) - (997000 * ext_call.return_data[50 len 14] * cd[100]) + (997000 * cd[36] * cd[100]) / (997000 * ext_call.return_data[18 len 14]) - (997000 * arg1) + (994009 * cd[100]) > -2:
        revert with 0, 17
    return cd[100], 
           ((10^6 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - (10^6 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + (10^6 * cd[36] * Mask(112, 0, ext_call.return_data[0])) + (10^6 * Mask(112, 0, ext_call.return_data[32]) * arg1) - (10^6 * cd[36] * arg1) - (997000 * Mask(112, 0, ext_call.return_data[32]) * cd[100]) + (997000 * cd[36] * cd[100]) / (997000 * Mask(112, 0, ext_call.return_data[0])) - (997000 * arg1) + (994009 * cd[100])) + 1
}



}
