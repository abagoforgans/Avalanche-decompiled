contract main {




// =====================  Runtime code  =====================


const version = 1


address adminAddress;
uint256 sub_ee8d26e7;
uint256 sub_65f7273f;
uint256 sub_f1460211;
uint8 stor4;
mapping of struct payments;

function sub_65f7273f(?) {
    return sub_65f7273f
}

function sub_a9ccdc01(?) {
    return bool(stor4)
}

function payments(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(payments[arg1].field_0), payments[arg1].field_256
}

function sub_ee8d26e7(?) {
    return sub_ee8d26e7
}

function sub_f1460211(?) {
    return sub_f1460211
}

function admin() {
    return adminAddress
}

function sub_7b7dc8ad(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    sub_ee8d26e7 = arg1
}

function sub_aa7db7f8(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    sub_f1460211 = arg1
}

function sub_c28c1b40(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    sub_65f7273f = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    adminAddress = arg1
}

function sub_8d6ec056(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    stor4 = uint8(bool(arg1))
}

function transferEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'ERR_ADMIN_PROTECT'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0f912e09(?) {
    if not payments[address(msg.sender)].field_0:
        if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
            revert with 0, 17
        return (sub_65f7273f * sub_ee8d26e7)
    if block.number >= payments[address(msg.sender)].field_256:
        if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
            revert with 0, 17
        return (sub_65f7273f * sub_ee8d26e7)
    if payments[address(msg.sender)].field_256 < block.number:
        revert with 0, 17
    if sub_65f7273f < payments[address(msg.sender)].field_256 - block.number:
        revert with 0, 17
    if sub_65f7273f - payments[address(msg.sender)].field_256 + block.number and sub_ee8d26e7 > -1 / sub_65f7273f - payments[address(msg.sender)].field_256 + block.number:
        revert with 0, 17
    return ((sub_65f7273f * sub_ee8d26e7) - (payments[address(msg.sender)].field_256 * sub_ee8d26e7) + (block.number * sub_ee8d26e7))
}

function pay() payable {
    if bool(stor4) != 1:
        revert with 0, 'ERROR_PAYMENTS_DISABLED'
    if not payments[address(msg.sender)].field_0:
        if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
            revert with 0, 17
        if msg.value > sub_65f7273f * sub_ee8d26e7:
            revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
    else:
        if block.number >= payments[address(msg.sender)].field_256:
            if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
                revert with 0, 17
            if msg.value > sub_65f7273f * sub_ee8d26e7:
                revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
        else:
            if payments[address(msg.sender)].field_256 < block.number:
                revert with 0, 17
            if sub_65f7273f < payments[address(msg.sender)].field_256 - block.number:
                revert with 0, 17
            if sub_65f7273f - payments[address(msg.sender)].field_256 + block.number and sub_ee8d26e7 > -1 / sub_65f7273f - payments[address(msg.sender)].field_256 + block.number:
                revert with 0, 17
            if msg.value > (sub_65f7273f * sub_ee8d26e7) - (payments[address(msg.sender)].field_256 * sub_ee8d26e7) + (block.number * sub_ee8d26e7):
                revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
    if sub_f1460211 and sub_ee8d26e7 > -1 / sub_f1460211:
        revert with 0, 17
    if msg.value < sub_f1460211 * sub_ee8d26e7:
        revert with 0, 'ERROR_PAYMENT_TOO_SMALL'
    if not payments[msg.sender].field_0:
        payments[msg.sender].field_0 = 1
        if msg.value and sub_ee8d26e7 > -1 / msg.value:
            revert with 0, 17
        if block.number > !(msg.value * sub_ee8d26e7):
            revert with 0, 17
        payments[msg.sender].field_256 = block.number + (msg.value * sub_ee8d26e7)
    else:
        if msg.value and sub_ee8d26e7 > -1 / msg.value:
            revert with 0, 17
        if block.number >= payments[msg.sender].field_256:
            if block.number > !(msg.value * sub_ee8d26e7):
                revert with 0, 17
            payments[msg.sender].field_256 = block.number + (msg.value * sub_ee8d26e7)
        else:
            if payments[msg.sender].field_256 > !(msg.value * sub_ee8d26e7):
                revert with 0, 17
            payments[msg.sender].field_256 += msg.value * sub_ee8d26e7
    emit 0x72dfb12f: msg.sender, msg.value, payments[msg.sender].field_256
    call adminAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x8d6ec056(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe2982c21(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe2982c21(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(payments[arg1].field_0), payments[arg1].field_256
                if unknown_0xee8d26e7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_ee8d26e7
                if unknown_0xf1460211(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_f1460211
                if uint32(call.func_hash) >> 224 != unknown_0xf851a440(?????):
                require not msg.value
                return adminAddress
            if unknown_0x8d6ec056(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == bool(arg1)
                if adminAddress != msg.sender:
                    revert with 0, 'ERR_ADMIN_PROTECT'
                stor4 = uint8(bool(arg1))
            else:
                if unknown_0xa9ccdc01(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor4)
                if unknown_0xaa7db7f8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if adminAddress != msg.sender:
                        revert with 0, 'ERR_ADMIN_PROTECT'
                    sub_f1460211 = arg1
                else:
                    if unknown_0xc28c1b40(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if adminAddress != msg.sender:
                            revert with 0, 'ERR_ADMIN_PROTECT'
                        sub_65f7273f = arg1
        else:
            if unknown_0x54fd4d50(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x54fd4d50(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 1
                if unknown_0x65f7273f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_65f7273f
                if unknown_0x704b6c02(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if adminAddress != msg.sender:
                        revert with 0, 'ERR_ADMIN_PROTECT'
                    adminAddress = address(arg1)
                else:
                    if unknown_0x7b7dc8ad(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if adminAddress != msg.sender:
                            revert with 0, 'ERR_ADMIN_PROTECT'
                        sub_ee8d26e7 = arg1
            else:
                if unknown_0x0f912e09(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not payments[address(msg.sender)].field_0:
                        if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
                            revert with 0, 17
                        return (sub_65f7273f * sub_ee8d26e7)
                    if block.number >= payments[address(msg.sender)].field_256:
                        if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
                            revert with 0, 17
                        return (sub_65f7273f * sub_ee8d26e7)
                    if payments[address(msg.sender)].field_256 < block.number:
                        revert with 0, 17
                    if sub_65f7273f < payments[address(msg.sender)].field_256 - block.number:
                        revert with 0, 17
                    if sub_65f7273f - payments[address(msg.sender)].field_256 + block.number and sub_ee8d26e7 > -1 / sub_65f7273f - payments[address(msg.sender)].field_256 + block.number:
                        revert with 0, 17
                    return ((sub_65f7273f * sub_ee8d26e7) - (payments[address(msg.sender)].field_256 * sub_ee8d26e7) + (block.number * sub_ee8d26e7))
                if unknown_0x1072cbea(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if adminAddress != msg.sender:
                        revert with 0, 'ERR_ADMIN_PROTECT'
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x1b9265b8(?????):
                        if unknown_0x1f57256f(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if adminAddress != msg.sender:
                                revert with 0, 'ERR_ADMIN_PROTECT'
                            call msg.sender with:
                               value arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bool(stor4) != 1:
                            revert with 0, 'ERROR_PAYMENTS_DISABLED'
                        if not payments[address(msg.sender)].field_0:
                            if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
                                revert with 0, 17
                            if msg.value > sub_65f7273f * sub_ee8d26e7:
                                revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
                        else:
                            if block.number >= payments[address(msg.sender)].field_256:
                                if sub_65f7273f and sub_ee8d26e7 > -1 / sub_65f7273f:
                                    revert with 0, 17
                                if msg.value > sub_65f7273f * sub_ee8d26e7:
                                    revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
                            else:
                                if payments[address(msg.sender)].field_256 < block.number:
                                    revert with 0, 17
                                if sub_65f7273f < payments[address(msg.sender)].field_256 - block.number:
                                    revert with 0, 17
                                if sub_65f7273f - payments[address(msg.sender)].field_256 + block.number and sub_ee8d26e7 > -1 / sub_65f7273f - payments[address(msg.sender)].field_256 + block.number:
                                    revert with 0, 17
                                if msg.value > (sub_65f7273f * sub_ee8d26e7) - (payments[address(msg.sender)].field_256 * sub_ee8d26e7) + (block.number * sub_ee8d26e7):
                                    revert with 0, 'ERROR_PAYMENT_TOO_LARGE'
                        if sub_f1460211 and sub_ee8d26e7 > -1 / sub_f1460211:
                            revert with 0, 17
                        if msg.value < sub_f1460211 * sub_ee8d26e7:
                            revert with 0, 'ERROR_PAYMENT_TOO_SMALL'
                        if not payments[msg.sender].field_0:
                            payments[msg.sender].field_0 = 1
                            if msg.value and sub_ee8d26e7 > -1 / msg.value:
                                revert with 0, 17
                            if block.number > !(msg.value * sub_ee8d26e7):
                                revert with 0, 17
                            payments[msg.sender].field_256 = block.number + (msg.value * sub_ee8d26e7)
                        else:
                            if msg.value and sub_ee8d26e7 > -1 / msg.value:
                                revert with 0, 17
                            if block.number >= payments[msg.sender].field_256:
                                if block.number > !(msg.value * sub_ee8d26e7):
                                    revert with 0, 17
                                payments[msg.sender].field_256 = block.number + (msg.value * sub_ee8d26e7)
                            else:
                                if payments[msg.sender].field_256 > !(msg.value * sub_ee8d26e7):
                                    revert with 0, 17
                                payments[msg.sender].field_256 += msg.value * sub_ee8d26e7
                        emit 0x72dfb12f: msg.sender, msg.value, payments[msg.sender].field_256
                        call adminAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
