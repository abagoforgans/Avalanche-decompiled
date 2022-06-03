contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor1;
uint256 stor2;

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

function setParameters(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor1) = arg1
    stor2 = arg2
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

function approveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_38870467(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint32(ext_code.size(arg1)):
        revert with 0, 'a'
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if uint255(stor1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    if Mask(1, 255, uint256(stor1)) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        if 997 * uint255(stor1) and ext_call.return_data[18 len 14] > -1 / 997 * uint255(stor1):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * uint255(stor1)):
            revert with 'NH{q', 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * uint255(stor1)):
            revert with 'NH{q', 18
        if 997 * uint255(stor1) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * uint255(stor1)) < stor2:
            revert with 0, 'b'
        if owner != msg.sender:
            revert with 0, 'approved infinite AVAX spending'
        staticcall address(arg1).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg1).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), uint255(stor1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if Mask(1, 255, uint256(stor1)) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(stor1)), 0, msg.sender, 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(stor1)), msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'SCAMMED'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < stor2:
            revert with 0, 'SCAMMED'
    if 997 * uint255(stor1) and ext_call.return_data[50 len 14] > -1 / 997 * uint255(stor1):
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] > !(997 * uint255(stor1)):
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * uint255(stor1)):
        revert with 'NH{q', 18
    if 997 * uint255(stor1) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * uint255(stor1)) < stor2:
        revert with 0, 'b'
    if owner != msg.sender:
        revert with 0, 'approved infinite AVAX spending'
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if Mask(1, 255, uint256(stor1)) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), uint255(stor1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        if Mask(1, 255, uint256(stor1)) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(stor1)), 0, msg.sender, 128, 0
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(stor1)), msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'SCAMMED'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < stor2:
            revert with 0, 'SCAMMED'
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 132] = uint255(stor1)
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), uint255(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if Mask(1, 255, uint256(stor1)) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(address(arg1))
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(stor1)), 0, msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'SCAMMED'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 < stor2:
            revert with 0, 'SCAMMED'
    mem[(7 * ceil32(return_data.size)) + 164] = 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(stor1))
    mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
    mem[(7 * ceil32(return_data.size)) + 228] = 128
    mem[(7 * ceil32(return_data.size)) + 260] = 0
    mem[(7 * ceil32(return_data.size)) + 292 len 0] = None
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 997 * uint255(stor1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(stor1)), address(msg.sender), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 0 >= stor2:
    mem[(8 * ceil32(return_data.size)) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 132] = 32
    mem[(8 * ceil32(return_data.size)) + 164] = 7
    mem[(8 * ceil32(return_data.size)) + 196] = 'SCAMMED'
    revert with memory
      from (8 * ceil32(return_data.size)) + 128
       len ceil32(return_data.size) + 100
}



}
