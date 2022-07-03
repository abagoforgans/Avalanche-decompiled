contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_27c7484e;
address treasuryAddress;
address paperAddress;
uint256 chain;
uint256 sub_8aff87b2;
uint8 stor9;

function bridgeEnabled() {
    return bool(stor9)
}

function sub_27c7484e(?) {
    require calldata.size - 4 >= 32
    return sub_27c7484e[arg1]
}

function treasury() {
    return treasuryAddress
}

function sub_8aff87b2(?) {
    return sub_8aff87b2
}

function sub_9bb3ace4(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_bace0132(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function chain() {
    return chain
}

function sub_e89485d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_f83a1a7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function paper() {
    return paperAddress
}

function sub_c2d7e683(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    sub_8aff87b2 = arg1
}

function sub_cd40dbfc(?) {
    require calldata.size - 4 >= 64
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    sub_27c7484e[arg1] = arg2
}

function sub_d58a8483(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    stor9 = uint8(bool(arg1))
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    treasuryAddress = arg1
}

function sub_a8e27f85(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    stor2[arg1] = uint8(bool(arg2))
}

function sub_c2a0426c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    paperAddress = address(arg1)
}

function sub_fc46b8b0(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    stor3[arg1] = uint8(bool(arg2))
}

function sub_3ab043b2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    stor0[address(arg1)] = uint8(bool(arg2))
}

function sub_af3105ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to remove gas'
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge admin'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_70534aad(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if bool(stor0[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: caller is not a bridge operator'
    if bool(stor9) != 1:
        revert with 0, 'Bridge: faucet is not enabled'
    if 1 == bool(stor2[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: transaction already processed'
    stor2[arg1] = 1
    require ext_code.size(treasuryAddress)
    call treasuryAddress.bridgeMint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa28b9020: arg1, address(arg2), address(arg3), chain, arg4
}

function sub_bc8eae92(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if bool(stor3[arg2]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: chain is not enabled/available'
    if arg3 < sub_27c7484e[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: minimum amount of tokens not met'
    require ext_code.size(paperAddress)
    staticcall paperAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Bridge: user has insufficient token balance'
    if sub_8aff87b2 == -1:
        revert with 0, 17
    sub_8aff87b2++
    require ext_code.size(paperAddress)
    call paperAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(paperAddress)
    call paperAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd72d4ed2: sub_8aff87b2, msg.sender, address(arg1), arg2, arg3
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xbc8eae92(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x70534aad(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x70534aad(?????):
                    if unknown_0x8aff87b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_8aff87b2
                    if unknown_0x9bb3ace4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(stor2[arg1])
                    if unknown_0xa8e27f85(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == bool(arg2)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Bridge: caller is not a bridge admin'
                        stor2[arg1] = uint8(bool(arg2))
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xaf3105ed(?????):
                            require unknown_0xbace0132(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return bool(stor3[arg1])
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Bridge: caller is not a bridge admin'
                        call address(arg1) with:
                           value arg2 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to remove gas'
                else:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    if bool(stor0[msg.sender]) != 1:
                        revert with 0, 'Bridge: caller is not a bridge operator'
                    if bool(stor9) != 1:
                        revert with 0, 'Bridge: faucet is not enabled'
                    if 1 == bool(stor2[arg1]):
                        revert with 0, 'Bridge: transaction already processed'
                    stor2[arg1] = 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.bridgeMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg3), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xa28b9020: arg1, address(arg2), address(arg3), chain, arg4
            else:
                if bridgeEnabled() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor9)
                if unknown_0x27c7484e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_27c7484e[arg1]
                if unknown_0x3ab043b2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Bridge: caller is not a bridge admin'
                    stor0[address(arg1)] = uint8(bool(arg2))
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x54575af4(?????):
                        require unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return treasuryAddress
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg3 == address(arg3)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Bridge: caller is not a bridge admin'
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0xd58a8483(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd58a8483(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Bridge: caller is not a bridge admin'
                    stor9 = uint8(bool(arg1))
                else:
                    if unknown_0xe89485d4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor1[arg1])
                    if unknown_0xf0f44260(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Bridge: caller is not a bridge admin'
                        treasuryAddress = address(arg1)
                    else:
                        if unknown_0xf83a1a7f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor0[arg1])
                        if unknown_0xf8c587ac(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return paperAddress
                        require unknown_0xfc46b8b0(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == bool(arg2)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Bridge: caller is not a bridge admin'
                        stor3[arg1] = uint8(bool(arg2))
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xbc8eae92(?????):
                    if unknown_0xc2a0426c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Bridge: caller is not a bridge admin'
                        paperAddress = address(arg1)
                    else:
                        if unknown_0xc2d7e683(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if bool(stor1[msg.sender]) != 1:
                                revert with 0, 'Bridge: caller is not a bridge admin'
                            sub_8aff87b2 = arg1
                        else:
                            if unknown_0xc763e5a1(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return chain
                            require unknown_0xcd40dbfc(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if bool(stor1[msg.sender]) != 1:
                                revert with 0, 'Bridge: caller is not a bridge admin'
                            sub_27c7484e[arg1] = arg2
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    if bool(stor3[arg2]) != 1:
                        revert with 0, 'Bridge: chain is not enabled/available'
                    if arg3 < sub_27c7484e[arg2]:
                        revert with 0, 'Bridge: minimum amount of tokens not met'
                    require ext_code.size(paperAddress)
                    staticcall paperAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg3:
                        revert with 0, 'Bridge: user has insufficient token balance'
                    if sub_8aff87b2 == -1:
                        revert with 0, 17
                    sub_8aff87b2++
                    require ext_code.size(paperAddress)
                    call paperAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(paperAddress)
                    call paperAddress.0x42966c68 with:
                         gas gas_remaining wei
                        args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xd72d4ed2: sub_8aff87b2, msg.sender, address(arg1), arg2, arg3
}



}
