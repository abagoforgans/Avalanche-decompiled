contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1, address arg2, uint256 arg3)
#
const token1 = 0x333333f9e4ba7303f1ac0bf8fe1f47d582629194


address token0Address;

function token0() {
    return token0Address
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if token0Address:
        revert with 3152027570
    token0Address = arg1
}

function withdrawEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != 0x777777c4e9f6e52bc71e15b7c87a85431d956f2d:
        revert with 3797961072
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 1525469035
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if token0() == uint32(call.func_hash) >> 224:
            require not msg.value
            return token0Address
        if unknown_0x1b9a91a4(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if msg.sender != 0x777777c4e9f6e52bc71e15b7c87a85431d956f2d:
                revert with 3797961072
            call address(arg1) with:
               value arg2 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 1525469035
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x5e35359e(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xc4d66de8(?????):
                    require unknown_0xd21220a7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0x333333f9e4ba7303f1ac0bf8fe1f47d582629194
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if token0Address:
                    revert with 3152027570
                token0Address = address(arg1)
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if msg.sender != 0x777777c4e9f6e52bc71e15b7c87a85431d956f2d:
                    revert with 3797961072
                mem[228 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, mem[228 len 28]
                call address(arg1).mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 2373538349
                    require not mem[96]
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 2373538349
                if return_data.size:
                    require return_data.size >= 32
                    require mem[260] == bool(mem[260])
                    if not mem[260]:
                        revert with 2373538349
}



}
