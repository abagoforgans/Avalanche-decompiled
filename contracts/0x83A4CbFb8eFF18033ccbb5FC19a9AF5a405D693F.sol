contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
array of address sub_88ff45c0;
array of address sub_dff6d47a;
uint256 sub_42ce043e;

function sub_42ce043e(?) {
    return sub_42ce043e
}

function sub_88ff45c0(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_88ff45c0[arg1]
}

function owner() {
    return owner
}

function sub_dff6d47a(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_dff6d47a[arg1]
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

function sub_086da4a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 100:
        revert with 0, 'must be >100'
    sub_42ce043e = arg1
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

function sub_b349b035(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x2ee80614ccbc5e28654324a66a396458fa5cd7cc)
    staticcall 0x2ee80614ccbc5e28654324a66a396458fa5cd7cc.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] <= 0:
        revert with 0, 'user was healthy'
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg6 / 10 >= 3:
        revert with 0, 50
    if arg6 / 10 >= 3:
        revert with 0, 50
    if arg6 % 10 >= 3:
        revert with 0, 50
    if arg6 % 10 >= 3:
        revert with 0, 50
    require ext_code.size(sub_dff6d47a[arg6 % 10])
    staticcall sub_dff6d47a[arg6 % 10].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Pair inexistent'
    require ext_code.size(sub_dff6d47a[arg6 / 10])
    staticcall sub_dff6d47a[arg6 / 10].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Pair inexistent'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg4, address(this.address), 128, 192, arg6, arg4, address(arg3), address(arg2), address(arg1), address(arg5)
    else:
        if arg4:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, 0, address(this.address), 128, 192, arg6, arg4, address(arg3), address(arg2), address(arg1), address(arg5)
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, arg4, address(this.address), 128, 192, arg6, arg4, address(arg3), address(arg2), address(arg1), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0976858e(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x2ee80614ccbc5e28654324a66a396458fa5cd7cc)
    staticcall 0x2ee80614ccbc5e28654324a66a396458fa5cd7cc.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] <= 0:
        revert with 0, 'user was healthy'
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg5 / 10 >= 3:
        revert with 0, 50
    if arg5 / 10 >= 3:
        revert with 0, 50
    if arg5 % 10 >= 3:
        revert with 0, 50
    if arg5 % 10 >= 3:
        revert with 0, 50
    require ext_code.size(sub_dff6d47a[arg5 / 10])
    staticcall sub_dff6d47a[arg5 / 10].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Pair inexistent'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
            revert with 0, 'Not enough in pair'
        if Mask(112, 0, ext_call.return_data[32]) <= arg4:
            revert with 0, 'Not enough in pair'
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= arg4:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                revert with 0, 'Not enough in pair'
            if Mask(112, 0, ext_call.return_data[32]) <= arg4:
                revert with 0, 'Not enough in pair'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg4, address(this.address), 128, 192, arg5, arg4, address(arg3), address(arg2), address(arg1), 0
    else:
        if arg4:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, 0, address(this.address), 128, 192, arg5, arg4, address(arg3), address(arg2), address(arg1), 0
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, arg4, address(this.address), 128, 192, arg5, arg4, address(arg3), address(arg2), address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
