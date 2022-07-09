contract main {




// =====================  Runtime code  =====================


#
#  - sub_2d2cac24(?)
#
address owner;
address factoryAddress;
address sub_e30145e0Address;
address sub_a5d2a715Address;

function owner() payable {
    return owner
}

function sub_a5d2a715(?) payable {
    return sub_a5d2a715Address
}

function factory() payable {
    return factoryAddress
}

function sub_e30145e0(?) payable {
    return sub_e30145e0Address
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

function sub_37864999(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e30145e0Address = address(arg1)
}

function sub_93822b21(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a5d2a715Address = address(arg1)
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

function removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if block.timestamp >= arg7:
        revert with 0, 'expired transaction'
    mem[100] = arg1
    mem[132] = arg2
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = arg3
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0
    mem[ceil32(return_data.size) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, address(arg2) << 64 == bool(0, address(arg2) << 64)
            if not 0, address(arg2) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call address(ext_call.return_data[0]).burn(address arg1) with:
         gas gas_remaining wei
        args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Insufficient insurance token amount'
    if ext_call.return_data[32] < arg5:
        revert with 0, 'Insufficient USDT token'
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 64, ext_call.return_data[0], 8, 'Amount A', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[32], 8, 'Amount B', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg3, 9, 'Liquidity', 0
    emit LiquidityRemoved(ext_call.return_data[0], ext_call.return_data[32], arg3, address(ext_call.return_data[0]));
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_0a7af5c6(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if block.timestamp >= arg6:
        revert with 0, 'expired transaction'
    mem[100] = address(arg3)
    mem[132] = address(arg4)
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).deadline() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > ext_call.return_data[0]:
        revert with 0, 'This pool has been frozen for swapping'
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg3)
    staticcall sub_e30145e0Address.0x5cb3b14f with:
            gas gas_remaining wei
           args address(arg3)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).feeRate() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
    mem[(6 * ceil32(return_data.size)) + 132] = address(arg4)
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    if arg1 <= 0:
        revert with 0, 'insufficient input amount'
    if ext_call.return_data[0]:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'insufficient liquidity'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'insufficient liquidity'
        if 1000 < ext_call.return_data[0]:
            revert with 0, 17
        if arg1 and -ext_call.return_data[0] + 1000 > -1 / arg1:
            revert with 0, 17
        if (1000 * arg1) - (ext_call.return_data[0] * arg1) and ext_call.return_data[18 len 14] > -1 / (1000 * arg1) - (ext_call.return_data[0] * arg1):
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !((1000 * arg1) - (ext_call.return_data[0] * arg1)):
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (1000 * arg1) - (ext_call.return_data[0] * arg1):
            revert with 0, 18
        if (1000 * arg1 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * arg1 * ext_call.return_data[18 len 14]) / (1000 * ext_call.return_data[50 len 14]) + (1000 * arg1) - (ext_call.return_data[0] * arg1) < arg2:
            revert with 0, 'excessive output amount'
        mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 196] = arg1
        mem[(8 * ceil32(return_data.size)) + 96] = 100
        mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(8 * ceil32(return_data.size)) + 228] = 32
        mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0
        mem[(8 * ceil32(return_data.size)) + 392] = 0
        call address(arg3) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, address(arg4) << 64 == bool(0, address(arg4) << 64)
                if not 0, address(arg4) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                if not mem[(8 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, (1000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), address(arg5)
        else:
            require ext_code.size(sub_a5d2a715Address)
            call sub_a5d2a715Address.mintBuyerToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[0]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args (1000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), 0, address(arg5)
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0, (1000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), address(arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return ((1000 * arg1 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[0])) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (1000 * arg1) - (ext_call.return_data[0] * arg1))
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if 1000 < ext_call.return_data[0]:
        revert with 0, 17
    if arg1 and -ext_call.return_data[0] + 1000 > -1 / arg1:
        revert with 0, 17
    if (1000 * arg1) - (ext_call.return_data[0] * arg1) and ext_call.return_data[50 len 14] > -1 / (1000 * arg1) - (ext_call.return_data[0] * arg1):
        revert with 0, 17
    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[18 len 14] > !((1000 * arg1) - (ext_call.return_data[0] * arg1)):
        revert with 0, 17
    if not (1000 * ext_call.return_data[18 len 14]) + (1000 * arg1) - (ext_call.return_data[0] * arg1):
        revert with 0, 18
    if (1000 * arg1 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * arg1 * ext_call.return_data[50 len 14]) / (1000 * ext_call.return_data[18 len 14]) + (1000 * arg1) - (ext_call.return_data[0] * arg1) < arg2:
        revert with 0, 'excessive output amount'
    mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = arg1
    mem[(8 * ceil32(return_data.size)) + 96] = 100
    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(8 * ceil32(return_data.size)) + 228] = 32
    mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg3)):
        revert with 0, 'Address: call to non-contract'
    mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0
    mem[(8 * ceil32(return_data.size)) + 392] = 0
    call address(arg3) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, address(arg4) << 64 == bool(0, address(arg4) << 64)
            if not 0, address(arg4) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
            if not mem[(8 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0, (1000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), address(arg5)
    else:
        require ext_code.size(sub_a5d2a715Address)
        call sub_a5d2a715Address.mintBuyerToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args (1000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), 0, address(arg5)
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, (1000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * arg1) - (ext_call.return_data[0] * arg1), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((1000 * arg1 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * arg1 * Mask(112, 0, ext_call.return_data[32])) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * arg1) - (ext_call.return_data[0] * arg1))
}

function sub_1a771f0a(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if block.timestamp >= arg6:
        revert with 0, 'expired transaction'
    mem[100] = address(arg3)
    mem[132] = address(arg4)
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).deadline() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > ext_call.return_data[0]:
        revert with 0, 'This pool has been frozen for swapping'
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg3)
    staticcall sub_e30145e0Address.0x5cb3b14f with:
            gas gas_remaining wei
           args address(arg3)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).feeRate() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
    mem[(6 * ceil32(return_data.size)) + 132] = address(arg4)
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    if arg2 <= 0:
        revert with 0, 'insufficient output amount'
    if ext_call.return_data[0]:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'insufficient liquidity'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'insufficient liquidity'
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 < ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[18 len 14] < arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] - arg2 and -ext_call.return_data[0] + 1000 > -1 / ext_call.return_data[18 len 14] - arg2:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (1000 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2)):
            revert with 0, 17
        if (1000 * ext_call.return_data[50 len 14] * arg2 / (1000 * ext_call.return_data[18 len 14]) - (ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1 > arg1:
            revert with 0, 'excessive input amount'
        mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 196] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1
        mem[(8 * ceil32(return_data.size)) + 96] = 100
        mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(8 * ceil32(return_data.size)) + 228] = 32
        mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0
        mem[(8 * ceil32(return_data.size)) + 392] = 0
        call address(arg3) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, address(arg4) << 64 == bool(0, address(arg4) << 64)
                if not 0, address(arg4) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                if not mem[(8 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, arg2, address(arg5)
        else:
            require ext_code.size(sub_a5d2a715Address)
            call sub_a5d2a715Address.mintBuyerToken(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[0]:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg2, 0, address(arg5)
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0, arg2, address(arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1)
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 < ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[50 len 14] < arg2:
        revert with 0, 17
    if ext_call.return_data[50 len 14] - arg2 and -ext_call.return_data[0] + 1000 > -1 / ext_call.return_data[50 len 14] - arg2:
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2):
        revert with 0, 18
    if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (1000 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2)):
        revert with 0, 17
    if (1000 * ext_call.return_data[18 len 14] * arg2 / (1000 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1 > arg1:
        revert with 0, 'excessive input amount'
    mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(8 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1
    mem[(8 * ceil32(return_data.size)) + 96] = 100
    mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(8 * ceil32(return_data.size)) + 228] = 32
    mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg3)):
        revert with 0, 'Address: call to non-contract'
    mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0
    mem[(8 * ceil32(return_data.size)) + 392] = 0
    call address(arg3) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, address(arg4) << 64 == bool(0, address(arg4) << 64)
            if not 0, address(arg4) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
            if not mem[(8 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0, arg2, address(arg5)
    else:
        require ext_code.size(sub_a5d2a715Address)
        call sub_a5d2a715Address.mintBuyerToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg2, 0, address(arg5)
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, arg2, address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (1000 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (1000 * arg2) + (ext_call.return_data[0] * arg2)) + 1)
}

function addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if block.timestamp >= arg8:
        revert with 0, 'expired transaction'
    mem[100] = arg2
    staticcall sub_e30145e0Address.0x5cb3b14f with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Please put stablecoin as tokenB'
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = arg2
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    if 0 == ext_call.return_data[18 len 14]:
        if not ext_call.return_data[50 len 14]:
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            mem[(4 * ceil32(return_data.size)) + 132] = arg2
            staticcall factoryAddress.0xb4f69a2f with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 196] = arg3
            mem[(6 * ceil32(return_data.size)) + 96] = 100
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 228] = 32
            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(6 * ceil32(return_data.size)) + 328] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 360] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 392] = arg4
                mem[(6 * ceil32(return_data.size)) + 292] = 100
                mem[(6 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
                mem[(6 * ceil32(return_data.size)) + 424] = 32
                mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg4, 0
                mem[(6 * ceil32(return_data.size)) + 588] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                        if not mem[(6 * ceil32(return_data.size)) + 520]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                call address(ext_call.return_data[0]).'jbxB' with:
                     gas gas_remaining wei
                    args arg7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                emit LiquidityAdded(arg3, arg4, ext_call.return_data[0], address(ext_call.return_data[0]));
                return arg3, arg4, ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                if not mem[(6 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg4, 0
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
            call arg2 with:
               funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                call address(ext_call.return_data[0]).'jbxB' with:
                     gas gas_remaining wei
                    args arg7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                emit LiquidityAdded(arg3, arg4, ext_call.return_data[0], address(ext_call.return_data[0]));
                return arg3, arg4, ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            call address(ext_call.return_data[0]).'jbxB' with:
                 gas gas_remaining wei
                args arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit LiquidityAdded(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                                arg3,
                                arg4,
                                ext_call.return_data[0],
                                mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                address(ext_call.return_data[0]),
            return arg3, 
                   arg4,
                   ext_call.return_data[0],
                   mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if arg3 <= 0:
        revert with 0, 'insufficient amount'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if arg3 and ext_call.return_data[50 len 14] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg4:
        if arg3 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] < arg6:
            revert with 0, 'INSUFFICIENT_B_AMOUNT'
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        mem[(4 * ceil32(return_data.size)) + 132] = arg2
        staticcall factoryAddress.0xb4f69a2f with:
                gas gas_remaining wei
               args address(arg1), arg2
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 196] = arg3
        mem[(6 * ceil32(return_data.size)) + 96] = 100
        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(6 * ceil32(return_data.size)) + 228] = 32
        mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0
        mem[(6 * ceil32(return_data.size)) + 392] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg3, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + 328] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 360] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 392] = arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 292] = 100
            mem[(6 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 424] = 32
            mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
            mem[(6 * ceil32(return_data.size)) + 588] = 0
            call arg2 with:
               funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                    if not mem[(6 * ceil32(return_data.size)) + 520]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            call address(ext_call.return_data[0]).'jbxB' with:
                 gas gas_remaining wei
                args arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit LiquidityAdded(arg3, arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]));
            return arg3, arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
        call arg2 with:
           funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            call address(ext_call.return_data[0]).'jbxB' with:
                 gas gas_remaining wei
                args arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            emit LiquidityAdded(arg3, arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[0], address(ext_call.return_data[0]));
            return arg3, arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
            if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                revert with 0, 
                            'SafeERC20: ERC20 operation did not succeed',
                            mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        call address(ext_call.return_data[0]).'jbxB' with:
             gas gas_remaining wei
            args arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit LiquidityAdded(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                            arg3,
                            arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                            ext_call.return_data[0],
                            mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                            address(ext_call.return_data[0]),
        return arg3, 
               arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
               ext_call.return_data[0],
               mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if arg4 <= 0:
        revert with 0, 'insufficient amount'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'insufficient liquidity'
    if arg4 and ext_call.return_data[18 len 14] > -1 / arg4:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] > arg3:
        revert with 0, 'nonono'
    if arg4 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] < arg5:
        revert with 0, 'INSUFFICIENT_A_AMOUNT'
    mem[(4 * ceil32(return_data.size)) + 100] = arg1
    mem[(4 * ceil32(return_data.size)) + 132] = arg2
    staticcall factoryAddress.0xb4f69a2f with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 196] = arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(6 * ceil32(return_data.size)) + 328] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 360] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 392] = arg4
        mem[(6 * ceil32(return_data.size)) + 292] = 100
        mem[(6 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
        mem[(6 * ceil32(return_data.size)) + 424] = 32
        mem[(6 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 488 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg4, 0
        mem[(6 * ceil32(return_data.size)) + 588] = 0
        call arg2 with:
           funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 520] == bool(mem[(6 * ceil32(return_data.size)) + 520])
                if not mem[(6 * ceil32(return_data.size)) + 520]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        call address(ext_call.return_data[0]).'jbxB' with:
             gas gas_remaining wei
            args arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit LiquidityAdded(arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), arg4, ext_call.return_data[0], address(ext_call.return_data[0]));
        return arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), arg4, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 292] = return_data.size
    mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
        if not mem[(6 * ceil32(return_data.size)) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg4
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, msg.sender, address(ext_call.return_data[0]), arg4, 0
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
    call arg2 with:
       funct Mask(32, 224, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(ext_call.return_data[0]), arg4, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        call address(ext_call.return_data[0]).'jbxB' with:
             gas gas_remaining wei
            args arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        emit LiquidityAdded(arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), arg4, ext_call.return_data[0], address(ext_call.return_data[0]));
        return arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), arg4, ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(9 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
            revert with 0, 
                        'SafeERC20: ERC20 operation did not succeed',
                        mem[(9 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    call address(ext_call.return_data[0]).'jbxB' with:
         gas gas_remaining wei
        args arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit LiquidityAdded(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                        arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                        arg4,
                        ext_call.return_data[0],
                        mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                        address(ext_call.return_data[0]),
    return arg4 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
           arg4,
           ext_call.return_data[0],
           mem[(10 * ceil32(return_data.size)) + 586 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
