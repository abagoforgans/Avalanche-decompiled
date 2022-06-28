contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_27c7484e;
address paperAddress;
uint256 chain;
uint256 sub_f845d921;
uint256 sub_8aff87b2;
uint8 sub_5d1c3f04;
uint8 burnEnabled; offset 8
uint256 stor9; offset 8

function sub_27c7484e(?) {
    require calldata.size - 4 >= 32
    return sub_27c7484e[arg1]
}

function sub_3aa3ac59(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_5d1c3f04(?) {
    return bool(sub_5d1c3f04)
}

function burnEnabled() {
    return bool(burnEnabled)
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

function sub_c8aa2e92(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_f845d921(?) {
    return sub_f845d921
}

function paper() {
    return paperAddress
}

function sub_c2d7e683(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    sub_8aff87b2 = arg1
}

function sub_e606aa8f(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    sub_f845d921 = arg1
}

function sub_cd40dbfc(?) {
    require calldata.size - 4 >= 64
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    sub_27c7484e[arg1] = arg2
}

function setBurnStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    stor9 = Mask(248, 0, arg1)
}

function sub_a8e27f85(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    stor2[arg1] = uint8(bool(arg2))
}

function sub_c2a0426c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    paperAddress = address(arg1)
}

function sub_fc46b8b0(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    stor3[arg1] = uint8(bool(arg2))
}

function sub_b615f766(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    sub_5d1c3f04 = uint8(bool(arg1))
}

function sub_72cace5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    stor0[address(arg1)] = uint8(bool(arg2))
}

function sub_af3105ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to remove gas'
    emit 0x6cf57863: msg.sender, address(arg1), arg2
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if bool(stor1[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge admin'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_db90df1a(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if bool(stor0[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: caller is not a bridge operator'
    if bool(sub_5d1c3f04) != 1:
        revert with 0, 'Faucet: faucet is not enabled'
    if arg4 >= sub_f845d921:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: amount is too large for max gas'
    if 1 == bool(stor2[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: transaction already processed'
    if eth.balance(this.address) <= arg4:
        revert with 0, 'Faucet: out of gas token'
    stor2[arg1] = 1
    call address(arg3) with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8ecba7d1: arg1, address(arg2), address(arg3), chain, arg4
    emit 0x469f8c5c: eth.balance(this.address)
}

function sub_37152497(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if bool(stor3[arg2]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: chain is not enabled/available'
    if arg3 < sub_27c7484e[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Faucet: minimum amount of tokens not met'
    require ext_code.size(paperAddress)
    staticcall paperAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Faucet: user has insufficient token balance'
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
    if burnEnabled:
        require ext_code.size(paperAddress)
        call paperAddress.burn(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xa6d9bfd6: sub_8aff87b2, msg.sender, address(arg1), arg2, arg3
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit 0xfefbdc4c: msg.sender, msg.value
    else:
        if unknown_0xb615f766(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xcd40dbfc(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb615f766(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge admin'
                    sub_5d1c3f04 = uint8(bool(arg1))
                if unknown_0xbace0132(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return bool(stor3[arg1])
                if unknown_0xc2a0426c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge admin'
                    paperAddress = address(arg1)
                if unknown_0xc2d7e683(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge admin'
                    sub_8aff87b2 = arg1
                if unknown_0xc763e5a1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return chain
                require unknown_0xc8aa2e92(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor1[arg1])
            if unknown_0xcd40dbfc(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if bool(stor1[msg.sender]) != 1:
                    revert with 0, 'Faucet: caller is not a bridge admin'
                sub_27c7484e[arg1] = arg2
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xdb90df1a(?????):
                    if unknown_0xe606aa8f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Faucet: caller is not a bridge admin'
                        sub_f845d921 = arg1
                    else:
                        if unknown_0xf845d921(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f845d921
                        if unknown_0xf8c587ac(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return paperAddress
                        require unknown_0xfc46b8b0(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == bool(arg2)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Faucet: caller is not a bridge admin'
                        stor3[arg1] = uint8(bool(arg2))
                else:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    if bool(stor0[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge operator'
                    if bool(sub_5d1c3f04) != 1:
                        revert with 0, 'Faucet: faucet is not enabled'
                    if arg4 >= sub_f845d921:
                        revert with 0, 'Faucet: amount is too large for max gas'
                    if 1 == bool(stor2[arg1]):
                        revert with 0, 'Faucet: transaction already processed'
                    if eth.balance(this.address) <= arg4:
                        revert with 0, 'Faucet: out of gas token'
                    stor2[arg1] = 1
                    call address(arg3) with:
                       value arg4 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x8ecba7d1: arg1, address(arg2), address(arg3), chain, arg4
                    emit 0x469f8c5c: eth.balance(this.address)
        else:
            if unknown_0x72cace5a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x72cace5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge admin'
                    stor0[address(arg1)] = uint8(bool(arg2))
                else:
                    if unknown_0x8aff87b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_8aff87b2
                    if unknown_0x97a2d0eb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if bool(stor1[msg.sender]) != 1:
                            revert with 0, 'Faucet: caller is not a bridge admin'
                        stor9 = Mask(248, 0, bool(arg1))
                    else:
                        if unknown_0x9bb3ace4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return bool(stor2[arg1])
                        if unknown_0xa8e27f85(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg2 == bool(arg2)
                            if bool(stor1[msg.sender]) != 1:
                                revert with 0, 'Faucet: caller is not a bridge admin'
                            stor2[arg1] = uint8(bool(arg2))
                        else:
                            require unknown_0xaf3105ed(?????) == uint32(call.func_hash) >> 224
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if bool(stor1[msg.sender]) != 1:
                                revert with 0, 'Faucet: caller is not a bridge admin'
                            call address(arg1) with:
                               value arg2 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to remove gas'
                            emit 0x6cf57863: msg.sender, address(arg1), arg2
            else:
                if unknown_0x27c7484e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_27c7484e[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0x37152497(?????):
                    if unknown_0x3aa3ac59(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor0[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0x54575af4(?????):
                        if unknown_0x5d1c3f04(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(sub_5d1c3f04)
                        require unknown_0x5dc96d16(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return bool(burnEnabled)
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg3 == address(arg3)
                    if bool(stor1[msg.sender]) != 1:
                        revert with 0, 'Faucet: caller is not a bridge admin'
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    if bool(stor3[arg2]) != 1:
                        revert with 0, 'Faucet: chain is not enabled/available'
                    if arg3 < sub_27c7484e[arg2]:
                        revert with 0, 'Faucet: minimum amount of tokens not met'
                    require ext_code.size(paperAddress)
                    staticcall paperAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg3:
                        revert with 0, 'Faucet: user has insufficient token balance'
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
                    if burnEnabled:
                        require ext_code.size(paperAddress)
                        call paperAddress.burn(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit 0xa6d9bfd6: sub_8aff87b2, msg.sender, address(arg1), arg2, arg3
}



}
