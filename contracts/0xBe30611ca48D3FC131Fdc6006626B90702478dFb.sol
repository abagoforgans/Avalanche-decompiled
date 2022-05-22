contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c00dbd51(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require calldata.size - 100 >= 160
    require ext_code.size(address(arg1))
    staticcall address(arg1).getTicket() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 296] = this.address
        mem[(2 * ceil32(return_data.size)) + 328] = address(arg1)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg2:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 328] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] + arg2
        mem[(4 * ceil32(return_data.size)) + 292] = 68
        mem[(4 * ceil32(return_data.size)) + 324 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 392] = 32
        mem[(4 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 456 len 96] = 0, address(arg1), ext_call.return_data[0] + arg2, 0
        mem[(4 * ceil32(return_data.size)) + 524] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0] + arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0] + arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 132 >= 128
            if not bool((4 * ceil32(return_data.size)) + 584 <= test266151307()):
                revert with 'NH{q', 65
        else:
            mem[(4 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 488] == bool(mem[(4 * ceil32(return_data.size)) + 488])
                if not mem[(4 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 132 >= 128
            if not bool((4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 <= test266151307()):
                revert with 'NH{q', 65
        require arg6 == uint8(arg6)
        require arg4 == address(arg4)
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args address(arg3), address(arg4), arg5, arg6 << 248, arg7, arg8
    else:
        mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg1)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg2:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] + arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(arg1), ext_call.return_data[0] + arg2, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0] + arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0] + arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 132 >= 128
            if not bool((4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 <= test266151307()):
                revert with 'NH{q', 65
            require arg6 == uint8(arg6)
            require arg4 == address(arg4)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
                 gas gas_remaining wei
                args address(arg3), address(arg4), arg5, arg6 << 248, arg7, arg8
        else:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 32
                mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 458
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                    mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 462] = 32
                    mem[(8 * ceil32(return_data.size)) + 494] = 42
                    mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                    mem[(8 * ceil32(return_data.size)) + 558] = 'ot succeed'
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 458
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(8 * ceil32(return_data.size)) + 462] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 494] = arg2
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 462 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 132 >= 128
            if not bool((8 * ceil32(return_data.size)) + 586 <= test266151307()):
                revert with 'NH{q', 65
            require arg6 == uint8(arg6)
            require arg4 == address(arg4)
            mem[(8 * ceil32(return_data.size)) + 590] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 622] = address(arg4)
            mem[(8 * ceil32(return_data.size)) + 654] = arg5
            mem[(8 * ceil32(return_data.size)) + 686] = uint8(arg6)
            mem[(8 * ceil32(return_data.size)) + 718] = arg7
            mem[(8 * ceil32(return_data.size)) + 750] = arg8
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 590 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a81bc43b(?) payable {
    require calldata.size - 4 >= 384
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require calldata.size - 100 >= 128
    require calldata.size - 228 >= 160
    require ext_code.size(address(arg1))
    staticcall address(arg1).getTicket() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require arg5 == uint8(arg5)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd505accf with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2, arg4, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 296] = this.address
        mem[(2 * ceil32(return_data.size)) + 328] = address(arg1)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg2:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 328] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 360] = ext_call.return_data[0] + arg2
        mem[(4 * ceil32(return_data.size)) + 292] = 68
        mem[(4 * ceil32(return_data.size)) + 324 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 392] = 32
        mem[(4 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 456 len 96] = 0, address(arg1), ext_call.return_data[0] + arg2, 0
        mem[(4 * ceil32(return_data.size)) + 524] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0] + arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0] + arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 260 >= 128
            if not bool((4 * ceil32(return_data.size)) + 584 <= test266151307()):
                revert with 'NH{q', 65
        else:
            mem[(4 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 488] == bool(mem[(4 * ceil32(return_data.size)) + 488])
                if not mem[(4 * ceil32(return_data.size)) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 260 >= 128
            if not bool((4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 <= test266151307()):
                revert with 'NH{q', 65
        require arg10 == uint8(arg10)
        require arg8 == address(arg8)
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args address(arg3), address(arg8), arg9, arg10 << 248, arg11, arg12
    else:
        mem[(2 * ceil32(return_data.size)) + 292] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg1)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg2:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[0] + arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 96] = 0, address(arg1), ext_call.return_data[0] + arg2, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0] + arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0] + arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 260 >= 128
            if not bool((4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 <= test266151307()):
                revert with 'NH{q', 65
            require arg10 == uint8(arg10)
            require arg8 == address(arg8)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
                 gas gas_remaining wei
                args address(arg3), address(arg8), arg9, arg10 << 248, arg11, arg12
        else:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 32
                mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 458
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                    mem[(8 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 462] = 32
                    mem[(8 * ceil32(return_data.size)) + 494] = 42
                    mem[(8 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                    mem[(8 * ceil32(return_data.size)) + 558] = 'ot succeed'
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 458
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(8 * ceil32(return_data.size)) + 462] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 494] = arg2
            require ext_code.size(address(arg1))
            call address(arg1).depositTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 462 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 260 >= 128
            if not bool((8 * ceil32(return_data.size)) + 586 <= test266151307()):
                revert with 'NH{q', 65
            require arg10 == uint8(arg10)
            require arg8 == address(arg8)
            mem[(8 * ceil32(return_data.size)) + 590] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 622] = address(arg8)
            mem[(8 * ceil32(return_data.size)) + 654] = arg9
            mem[(8 * ceil32(return_data.size)) + 686] = uint8(arg10)
            mem[(8 * ceil32(return_data.size)) + 718] = arg11
            mem[(8 * ceil32(return_data.size)) + 750] = arg12
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).delegateWithSignature(address arg1, address arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 590 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
