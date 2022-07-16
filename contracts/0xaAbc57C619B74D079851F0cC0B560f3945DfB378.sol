contract main {




// =====================  Runtime code  =====================


const sub_f556fcdb(?) = address(this.address)


address stor0;
address sub_61797e1cAddress;
address sub_df842386Address;

function sub_61797e1c(?) {
    return sub_61797e1cAddress
}

function sub_df842386(?) {
    return sub_df842386Address
}

function sub_69e34664(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_61797e1cAddress = address(arg1)
    sub_df842386Address = address(arg2)
}

function withdrawETH() {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b669de4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_61797e1cAddress.0x5b669de4 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8b803159(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    call sub_61797e1cAddress.0x8b803159 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'your outstanding airdrop balance is 0!'
    if ext_call.return_data[0]:
        call sub_df842386Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x8b803159(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x8b803159(?????):
                if unknown_0xdf842386(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_df842386Address
                if uint32(call.func_hash) >> 224 != unknown_0xe086e5ec(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf556fcdb(?????):
                    require not msg.value
                    return this.address
                require not msg.value
                if stor0 != msg.sender:
                    revert with 0, 'Caller is not owner'
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                call sub_61797e1cAddress.0x8b803159 with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'your outstanding airdrop balance is 0!'
                if ext_call.return_data[0]:
                    call sub_df842386Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x5b669de4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                staticcall sub_61797e1cAddress.0x5b669de4 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return ext_call.return_data[0], ext_call.return_data[32]
            if unknown_0x61797e1c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_61797e1cAddress
            if unknown_0x69e34664(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if stor0 != msg.sender:
                    revert with 0, 'Caller is not owner'
                sub_61797e1cAddress = address(arg1)
                sub_df842386Address = address(arg2)
            else:
                if unknown_0x89476069(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor0 != msg.sender:
                        revert with 0, 'Caller is not owner'
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
