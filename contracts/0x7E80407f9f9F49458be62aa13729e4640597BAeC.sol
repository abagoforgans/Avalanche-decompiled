contract main {




// =====================  Runtime code  =====================


address owner;

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

function withdraw(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(arg2)
    call arg2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6cf6cc0f(?) payable {
    require calldata.size - 4 >= 192
    require calldata.size >= 132
    require 196 <= calldata.size
    require arg5 == address(arg5)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if address(arg2) < address(arg3):
        if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * arg1):
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
            revert with 0, 18
        require arg6 == address(arg6)
        require arg3 == address(arg3)
        require arg4 == address(arg4)
        require ext_code.size(address(arg6))
        staticcall address(arg6).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) < address(arg4):
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                revert with 0, 18
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) <= arg1:
                revert with 0, 'BSwap::NO_DELTA'
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require ext_code.size(address(arg2))
            call address(arg2).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(address(arg5))
            if address(arg2) >= address(arg3):
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg6), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(this.address), 128, 0, None
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(this.address), 128, 0, 0
            else:
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg6), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(this.address), 128, 0, None
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(this.address), 128, 0, 0, None
        else:
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                revert with 0, 18
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) <= arg1:
                revert with 0, 'BSwap::NO_DELTA'
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require ext_code.size(address(arg2))
            call address(arg2).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(address(arg5))
            if address(arg2) >= address(arg3):
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg6), 128, 0, None
            else:
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg6), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg4 == address(arg4)
            require arg3 == address(arg3)
            require arg6 == address(arg6)
            require ext_code.size(address(arg6))
            if address(arg3) >= address(arg4):
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(this.address), 128, 0
            else:
                call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(this.address), 128, 0, 0
    else:
        if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * arg1):
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
            revert with 0, 18
        require arg6 == address(arg6)
        require arg3 == address(arg3)
        require arg4 == address(arg4)
        require ext_code.size(address(arg6))
        staticcall address(arg6).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) < address(arg4):
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                revert with 0, 18
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) <= arg1:
                revert with 0, 'BSwap::NO_DELTA'
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require ext_code.size(address(arg2))
            call address(arg2).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(address(arg5))
            if address(arg2) >= address(arg3):
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg6), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(this.address), 128, 0, None
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(this.address), 128, 0, 0
            else:
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg6), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(this.address), 128, 0, None
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(this.address), 128, 0, 0, None
        else:
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                revert with 0, 17
            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                revert with 0, 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                revert with 0, 18
            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) <= arg1:
                revert with 0, 'BSwap::NO_DELTA'
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require ext_code.size(address(arg2))
            call address(arg2).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            require arg2 == address(arg2)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(address(arg5))
            if address(arg2) >= address(arg3):
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg6), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(this.address), 128, 0, None
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(this.address), 128, 0, 0
            else:
                call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg6), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg4 == address(arg4)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                require ext_code.size(address(arg6))
                if address(arg3) >= address(arg4):
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(this.address), 128, 0, 0
                else:
                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(this.address), 128, 0, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5f1f14de(?) payable {
    require calldata.size - 4 >= 256
    require 164 <= calldata.size
    require calldata.size >= 260
    require arg6 == address(arg6)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) < address(arg3):
            if arg1 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            else:
                if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
                    revert with 0, 17
                else:
                    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    else:
                        if 1000 * ext_call.return_data[18 len 14] > !(997 * arg1):
                            revert with 0, 17
                        else:
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
                                revert with 0, 18
                            else:
                                require arg7 == address(arg7)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require ext_code.size(address(arg7))
                                staticcall address(arg7).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(arg3) < address(arg4):
                                        if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        else:
                                            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                                                revert with 0, 17
                                            else:
                                                if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                    revert with 0, 17
                                                else:
                                                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                        revert with 0, 17
                                                    else:
                                                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                            revert with 0, 18
                                                        else:
                                                            require arg8 == address(arg8)
                                                            require arg4 == address(arg4)
                                                            require arg5 == address(arg5)
                                                            require ext_code.size(address(arg8))
                                                            staticcall address(arg8).getReserves() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                                if address(arg4) < address(arg5):
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                else:
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                    else:
                                        if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        else:
                                            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                                                revert with 0, 17
                                            else:
                                                if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                    revert with 0, 17
                                                else:
                                                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                        revert with 0, 17
                                                    else:
                                                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                            revert with 0, 18
                                                        else:
                                                            require arg8 == address(arg8)
                                                            require arg4 == address(arg4)
                                                            require arg5 == address(arg5)
                                                            require ext_code.size(address(arg8))
                                                            staticcall address(arg8).getReserves() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                                if address(arg4) < address(arg5):
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                else:
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
        else:
            if arg1 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            else:
                if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
                    revert with 0, 17
                else:
                    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    else:
                        if 1000 * ext_call.return_data[50 len 14] > !(997 * arg1):
                            revert with 0, 17
                        else:
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
                                revert with 0, 18
                            else:
                                require arg7 == address(arg7)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require ext_code.size(address(arg7))
                                staticcall address(arg7).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if address(arg3) < address(arg4):
                                        if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        else:
                                            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                                                revert with 0, 17
                                            else:
                                                if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                    revert with 0, 17
                                                else:
                                                    if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                        revert with 0, 17
                                                    else:
                                                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                            revert with 0, 18
                                                        else:
                                                            require arg8 == address(arg8)
                                                            require arg4 == address(arg4)
                                                            require arg5 == address(arg5)
                                                            require ext_code.size(address(arg8))
                                                            staticcall address(arg8).getReserves() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                                if address(arg4) < address(arg5):
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                else:
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                    else:
                                        if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                            revert with 0, 17
                                        else:
                                            if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                                                revert with 0, 17
                                            else:
                                                if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                    revert with 0, 17
                                                else:
                                                    if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                        revert with 0, 17
                                                    else:
                                                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                            revert with 0, 18
                                                        else:
                                                            require arg8 == address(arg8)
                                                            require arg4 == address(arg4)
                                                            require arg5 == address(arg5)
                                                            require ext_code.size(address(arg8))
                                                            staticcall address(arg8).getReserves() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 96
                                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                                if address(arg4) < address(arg5):
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) and ext_call.return_data[50 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[18 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                else:
                                                                    if 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) and ext_call.return_data[18 len 14] > -1 / 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 1000 * ext_call.return_data[50 len 14] > !(997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))):
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) <= arg1:
                                                                                            revert with 0, 'BSwap::NO_DELTA'
                                                                                        else:
                                                                                            require arg2 == address(arg2)
                                                                                            require arg6 == address(arg6)
                                                                                            require ext_code.size(address(arg2))
                                                                                            call address(arg2).transfer(address rg1, uint256 rg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg6), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require arg3 == address(arg3)
                                                                                                require arg2 == address(arg2)
                                                                                                if address(arg2) >= address(arg3):
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(arg7), 128, 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                else:
                                                                                                    require arg6 == address(arg6)
                                                                                                    require arg7 == address(arg7)
                                                                                                    mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
                                                                                                    require ext_code.size(address(arg6))
                                                                                                    call address(arg6).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), address(arg7), 128, 0, None
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require arg4 == address(arg4)
                                                                                                        require arg3 == address(arg3)
                                                                                                        if address(arg3) >= address(arg4):
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            mem[(4 * ceil32(return_data.size)) + 324 len 0] = None
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), 0, address(arg8), 128, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0, None
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 228] = 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)))
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 260] = this.address
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 292] = 128
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 324] = 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32
                                                                                                                    mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)] = mem[(4 * ceil32(return_data.size)) + 192 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                    if ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32) <= 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32:
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                    else:
                                                                                                                        mem[(4 * ceil32(return_data.size)) + 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32 + 356] = 0
                                                                                                                        require ext_code.size(address(arg8))
                                                                                                                        call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), address(this.address), 128, 0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32, mem[(4 * ceil32(return_data.size)) + 356 len ceil32(0, Mask(224, 32, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) >> 32)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                        else:
                                                                                                            require arg7 == address(arg7)
                                                                                                            require arg8 == address(arg8)
                                                                                                            require ext_code.size(address(arg7))
                                                                                                            call address(arg7).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args 0, 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)), address(arg8), 128, 0, None
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require arg5 == address(arg5)
                                                                                                                require arg4 == address(arg4)
                                                                                                                if address(arg4) >= address(arg5):
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), 0, address(this.address), 128, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                else:
                                                                                                                    require arg8 == address(arg8)
                                                                                                                    require ext_code.size(address(arg8))
                                                                                                                    call address(arg8).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args 0, 997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))), this.address, 0, 128, 0, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
}



}
