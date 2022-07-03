contract main {




// =====================  Runtime code  =====================


const factory = 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9

const router = 0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8

const vault = 0x9ab2de34a33fb459b538c43f251eb825645e8595


function withdrawEth() {
    staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
            revert with 0, 'NotOperator'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
}

function sub_e3fb008e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
            revert with 0, 'NotOperator'
    require ext_code.size(0x9ab2de34a33fb459b538c43f251eb825645e8595)
    call 0x9ab2de34a33fb459b538c43f251eb825645e8595.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args this.address, address(arg1), address(arg2), arg3, bool(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_13e6911f(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == bool(arg5)
    staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
            revert with 0, 'NotOperator'
    call 0x9ab2de34a33fb459b538c43f251eb825645e8595.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
         gas gas_remaining wei
        args this.address, address(arg1), address(arg2), arg3, arg4, bool(arg5), 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
            revert with 0, 'NotOperator'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = 0xfbc5f51a7f6e7d9d8c5277878c213fef
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xe3fb008e(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x13e6911f(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xa0ef91df(?????):
                    require unknown_0xc45a0155(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9
                require not msg.value
                staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
                        revert with 0, 'NotOperator'
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance'
                call 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                require not msg.value
                require calldata.size - 4 >= 160
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg5 == bool(arg5)
                staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
                        revert with 0, 'NotOperator'
                call 0x9ab2de34a33fb459b538c43f251eb825645e8595.decreasePosition(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, bool arg6, address arg7) with:
                     gas gas_remaining wei
                    args this.address, address(arg1), address(arg2), arg3, arg4, bool(arg5), 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if unknown_0xe3fb008e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg4 == bool(arg4)
                staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
                        revert with 0, 'NotOperator'
                require ext_code.size(0x9ab2de34a33fb459b538c43f251eb825645e8595)
                call 0x9ab2de34a33fb459b538c43f251eb825645e8595.increasePosition(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args this.address, address(arg1), address(arg2), arg3, bool(arg4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf4f3b200(?????):
                    if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8
                    require unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0x9ab2de34a33fb459b538c43f251eb825645e8595
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                mem[132] = msg.sender
                staticcall 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9.0x3ecce421 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if msg.sender != 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9:
                        revert with 0, 'NotOperator'
                mem[ceil32(return_data.size) + 132] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 164] = 0xfbc5f51a7f6e7d9d8c5277878c213fef6ef7bdd9
                mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 128] = 68
                mem[(2 * ceil32(return_data.size)) + 164 len 28] = 0xfbc5f51a7f6e7d9d8c5277878c213fef
                mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 360] = 0
                call address(arg1) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), 0xfbc5f51a7f6e7d9d8c527787, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
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
}



}
