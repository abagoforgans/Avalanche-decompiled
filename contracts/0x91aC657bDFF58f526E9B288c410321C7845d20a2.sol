contract main {




// =====================  Runtime code  =====================


#
#  - unwrap(address arg1, address arg2, uint256 arg3)
#  - wrap(address arg1, address arg2)
#
function _fallback() payable {
    if calldata.size >= 4:
        if uint32(call.func_hash) >> 224 != unknown_0x8cc7104f(?????):
            if unknown_0x9f454db9(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require ext_code.size(address(arg1))
                call address(arg1).deposit() with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[164] = address(arg2)
                mem[196] = msg.value
                mem[128] = 68
                mem[164 len 28] = address(arg2) << 64
                mem[160 len 4] = unknown_0xa9059cbb(?????)
                mem[228] = 32
                mem[260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, msg.value, 0
                mem[360] = 0
                call address(arg1) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, msg.value, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, msg.value, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    require not mem[96]
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[324] == bool(mem[324])
                    if not mem[324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            mem[164] = msg.sender
            mem[196] = this.address
            mem[228] = arg3
            mem[128] = 100
            mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[160 len 4] = unknown_0x23b872dd(?????)
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0
            mem[424] = 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            else:
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[356] == bool(mem[356])
                    if not mem[356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < 0:
                idx = idx + 32
                continue 
            call address(arg2) with:
               value arg3 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'EtherWrapper: transfer ether failed'
}



}
