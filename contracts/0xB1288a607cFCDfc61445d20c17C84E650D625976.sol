contract main {




// =====================  Runtime code  =====================


const sub_0f032cbe(?) = -1

const ETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;

function sub_7412dbb3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[arg1])
}

function owner() {
    return owner
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

function sub_28be9038(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = uint8(bool(arg2))
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

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
}

function sub_1f393ed5(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == address(arg8)
    require arg9 == arg9
    require arg2 == address(arg2)
    require arg2 == address(arg2)
    if address(arg2) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).sendToL2(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), arg3, arg6, arg7, address(arg8), arg9
        else:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).sendToL2(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), eth.balance(this.address), arg6, arg7, address(arg8), arg9
    else:
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).sendToL2(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), arg3, arg6, arg7, address(arg8), arg9
        else:
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require arg2 == address(arg2)
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).sendToL2(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg4, address(arg5), ext_call.return_data[0], arg6, arg7, address(arg8), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_639a1f82(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    require arg2 == address(arg2)
    require arg2 == address(arg2)
    if address(arg2) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).swapAndSend(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), arg3, arg6, arg7, arg8, arg9, arg10
        else:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).swapAndSend(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), eth.balance(this.address), arg6, arg7, arg8, arg9, arg10
    else:
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).swapAndSend(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(arg4), address(arg5), arg3, arg6, arg7, arg8, arg9, arg10
        else:
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require arg2 == address(arg2)
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg2 == address(arg2)
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            call address(arg1).swapAndSend(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg4, address(arg5), ext_call.return_data[0], arg6, arg7, arg8, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98dec2ec(?) payable {
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 64
    require calldata.size - 68 >= 64
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    require arg8.length <= test266151307()
    require arg8 + arg8.length + 36 <= calldata.size
    if not stor101[address(arg7)]:
        revert with 0, 'Woven: exchange not allowed'
    require arg1 == address(arg1)
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        mem[96 len arg8.length] = arg8[all]
        mem[arg8.length + 96] = 0
        call address(arg7) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg8[all]
        if not return_data.size:
            if not ext_call.success:
                mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000] = 32, 0x8c379a000000000000000000000000000000000000000000000000000000000, mem[164 len 0x8c3799fffffffffffffffffffffffffffffffffffffffffffffffffffffffdc]
                revert with 0, 
                            32,
                            0x8c379a000000000000000000000000000000000000000000000000000000000,
                            mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            return_data.size,
                            ext_call.return_data[0 len return_data.size],
                            Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
    else:
        require arg1 == address(arg1)
        if msg.sender == this.address:
            mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg6), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len arg8.length] = arg8[all]
            mem[arg8.length + 96] = 0
            call address(arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg8[all]
            if not return_data.size:
                if not ext_call.success:
                    mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000] = 32, 0x8c379a000000000000000000000000000000000000000000000000000000000, mem[164 len 0x8c3799fffffffffffffffffffffffffffffffffffffffffffffffffffffffdc]
                    revert with 0, 
                                32,
                                0x8c379a000000000000000000000000000000000000000000000000000000000,
                                mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                return_data.size,
                                ext_call.return_data[0 len return_data.size],
                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        else:
            require ext_code.size(address(arg1))
            call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg1 == address(arg1)
            mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg6), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len arg8.length] = arg8[all]
            mem[arg8.length + 96] = 0
            call address(arg7) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg8[all]
            if not return_data.size:
                if not ext_call.success:
                    mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000] = 32, 0x8c379a000000000000000000000000000000000000000000000000000000000, arg2, mem[196 len 0x8c3799fffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
                    revert with 0, 
                                32,
                                0x8c379a000000000000000000000000000000000000000000000000000000000,
                                mem[164 len 0x8c379a000000000000000000000000000000000000000000000000000000000]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                return_data.size,
                                ext_call.return_data[0 len return_data.size],
                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
    # ext_call.success
    if address(arg5) != this.address:
        if arg4 > 0:
            if eth.balance(this.address) > 0:
                call address(arg5) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            if address(arg3) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require arg3 == address(arg3)
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require arg3 == address(arg3)
                require ext_code.size(address(arg3))
                call address(arg3).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg5), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_3c712388(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == address(arg6)
    require arg2 == address(arg2)
    require arg2 == address(arg2)
    if address(arg2) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        require arg2 == address(arg2)
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not address(arg2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg1))
                call address(arg1).anySwapOutNative(address arg1, address arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(arg4), address(arg6), arg5
            else:
                require arg2 == address(arg2)
                require ext_code.size(address(arg1))
                if address(arg4) - address(arg2):
                    call address(arg1).anySwapOutUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), arg3, arg5
                else:
                    call address(arg1).anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), arg3, arg5
        else:
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not address(arg2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg1))
                call address(arg1).anySwapOutNative(address arg1, address arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(arg4), address(arg6), arg5
            else:
                require arg2 == address(arg2)
                require ext_code.size(address(arg1))
                if address(arg4) - address(arg2):
                    call address(arg1).anySwapOutUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), eth.balance(this.address), arg5
                else:
                    call address(arg1).anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), eth.balance(this.address), arg5
    else:
        if arg3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            require arg2 == address(arg2)
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not address(arg2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg1))
                call address(arg1).anySwapOutNative(address arg1, address arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(arg4), address(arg6), arg5
            else:
                require arg2 == address(arg2)
                require ext_code.size(address(arg1))
                if address(arg4) - address(arg2):
                    call address(arg1).anySwapOutUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), arg3, arg5
                else:
                    call address(arg1).anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), arg3, arg5
        else:
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require arg2 == address(arg2)
            require arg2 == address(arg2)
            if address(arg2) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg2))
                if this.address != msg.sender:
                    call address(arg2).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not address(arg2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require ext_code.size(address(arg1))
                call address(arg1).anySwapOutNative(address arg1, address arg2, uint256 arg3) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(arg4), address(arg6), arg5
            else:
                require arg2 == address(arg2)
                require ext_code.size(address(arg1))
                if address(arg4) - address(arg2):
                    call address(arg1).anySwapOutUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(arg4), address(arg6), ext_call.return_data[0], arg5
                else:
                    call address(arg1).anySwapOut(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(arg4), address(arg6), ext_call.return_data[0], arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e75dfeee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 4:
        revert with 0, 'InvalidByteOperation'
    if Mask(32, 224, mem[128]) != 0x98dec2ec00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'calldata error'
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if arg2.length < 4:
        revert with 0, 'InvalidByteOperation'
    if 0x1f393ed500000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[ceil32(arg1.length) + 160]):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
        delegate this.address with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg1.length - 4]
        if not return_data.size:
            if delegate.return_code:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 0
                call this.address with:
                   funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg2.length - 4]
                if ext_call.success:
                if return_data.size:
                    revert with 0, 
                                32,
                                return_data.size,
                                ext_call.return_data[0 len return_data.size],
                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 228] = 0
            revert with 0, 
                        32,
                        arg1.length,
                        Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 228 len 2 * ceil32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 0, 
                        32,
                        return_data.size,
                        ext_call.return_data[0 len return_data.size],
                        Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 161 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + arg2.length + 161] = 0
        call this.address with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if ext_call.success:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 229 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + arg1.length + 229] = 0
            revert with 0, 
                        32,
                        arg1.length,
                        Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(return_data.size) + 229 len 2 * ceil32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 162] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 166] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 198] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 230 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 193 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 230] = 0
        revert with memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 162
           len (6 * ceil32(return_data.size)) + 68
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 192] = 0
    if arg2.length < 4:
        revert with 0, 'InvalidByteOperation'
    if 0x639a1f8200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]):
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 192 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg1.length + 192] = 0
        delegate this.address with:
             gas gas_remaining wei
            args arg1[all]
        if not return_data.size:
            if delegate.return_code:
                mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 192 len arg2.length] = arg2[all]
                mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg2.length + 192] = 0
                call this.address with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args arg2[all]
                if ext_call.success:
                if return_data.size:
                    revert with 0, 
                                32,
                                return_data.size,
                                ext_call.return_data[0 len return_data.size],
                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
            mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg1.length + 260] = 0
            revert with 0, 
                        32,
                        arg1.length,
                        Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                        mem[(2 * ceil32(arg1.length)) + (2 * ceil32(arg2.length)) + 260 len 2 * ceil32(arg1.length)]
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 192] = return_data.size
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 0, 
                        32,
                        return_data.size,
                        ext_call.return_data[0 len return_data.size],
                        Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 193 len arg2.length] = arg2[all]
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 193] = 0
        call this.address with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if ext_call.success:
            mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 261] = 0
            revert with 0, 
                        32,
                        arg1.length,
                        Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                        mem[(2 * ceil32(arg1.length)) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 261 len 2 * ceil32(arg1.length)]
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 194] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 198] = 32
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 230] = return_data.size
        mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 262 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + ceil32(return_data.size) + return_data.size + 225 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + return_data.size + 262] = 0
        revert with memory
          from ceil32(arg1.length) + (2 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 194
           len (6 * ceil32(return_data.size)) + 68
    mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 224 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + arg2.length + 224] = 0
    if arg2.length < 4:
        revert with 0, 'InvalidByteOperation'
    if Mask(32, 224, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 224]) != 0x3c71238800000000000000000000000000000000000000000000000000000000:
        revert with 0, 'calldata error'
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + 224 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + arg1.length + 224] = 0
    delegate this.address with:
         gas gas_remaining wei
        args arg1[all]
    if not return_data.size:
        if delegate.return_code:
            mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + 224 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + arg2.length + 224] = 0
            call this.address with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args arg2[all]
            if ext_call.success:
            if return_data.size:
                revert with 0, 
                            32,
                            return_data.size,
                            ext_call.return_data[0 len return_data.size],
                            Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
        mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + arg1.length + 292] = 0
        revert with 0, 
                    32,
                    arg1.length,
                    Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                    mem[(2 * ceil32(arg1.length)) + (4 * ceil32(arg2.length)) + 292 len 2 * ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + 224] = return_data.size
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with 0, 
                    32,
                    return_data.size,
                    ext_call.return_data[0 len return_data.size],
                    Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + 225 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 225] = 0
    call this.address with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if ext_call.success:
        mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + 293 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 293] = 0
        revert with 0, 
                    32,
                    arg1.length,
                    Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                    mem[(2 * ceil32(arg1.length)) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + 293 len 2 * ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + 257 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 226] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 230] = 32
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 262] = return_data.size
    mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 294 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + ceil32(return_data.size) + return_data.size + 257 len ceil32(return_data.size) - return_data.size]
    if ceil32(return_data.size) > return_data.size:
        mem[ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + return_data.size + 294] = 0
    revert with memory
      from ceil32(arg1.length) + (4 * ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 226
       len (6 * ceil32(return_data.size)) + 68
}



}
