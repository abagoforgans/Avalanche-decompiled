contract main {




// =====================  Runtime code  =====================


const sub_411aab8d(?) = eth.balance(this.address)


address xtokenAddress;
address tokenAddress;
uint8 stor2; offset 160
address owner;

function xtoken() {
    return xtokenAddress
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'you are not owner'
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'you are not owner'
    require not stor2
    stor2 = 1
    emit Pause()
}

function contractbalance() {
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_9b5cbda7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall xtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6f96e022(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'you are not owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'contract have not enough balance'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a15e50e4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'you are not owner'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_416c14b4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'you are not owner'
    call xtokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_681d5d28(?) {
    require calldata.size - 4 >= 32
    require not stor2
    staticcall xtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No Xsplash Balance!'
    if arg1 <= 0:
        revert with 0, 'enter some amount'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'contract out off funds!'
    call xtokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x681d5d28(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1718a68f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return xtokenAddress
            if unknown_0x30e4f9aa(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'you are not owner'
                require stor2
                stor2 = 0
                emit Unpause()
            else:
                if unknown_0x411aab8d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                if uint32(call.func_hash) >> 224 != unknown_0x416c14b4(?????):
                    require unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return bool(stor2)
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'you are not owner'
                call xtokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9b5cbda7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    staticcall xtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if uint32(call.func_hash) >> 224 != unknown_0xa15e50e4(?????):
                    require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return tokenAddress
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'you are not owner'
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x681d5d28(?????):
                    if unknown_0x6f96e022(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'you are not owner'
                        if eth.balance(this.address) < arg1:
                            revert with 0, 'contract have not enough balance'
                        call owner with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'you are not owner'
                        require not stor2
                        stor2 = 1
                        emit Pause()
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require not stor2
                    staticcall xtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'No Xsplash Balance!'
                    if arg1 <= 0:
                        revert with 0, 'enter some amount'
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg1:
                        revert with 0, 'contract out off funds!'
                    call xtokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
