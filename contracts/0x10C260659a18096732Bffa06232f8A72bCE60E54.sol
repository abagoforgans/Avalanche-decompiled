contract main {




// =====================  Runtime code  =====================


const isActive = 1


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
array of struct stor1;
address sub_80260717Address;
uint256 sub_f76f8405;
uint256 sub_34e14306;
uint256 sub_1e51e6b6;
uint256 sub_d64fe168;
uint256 sub_8215d4a9;
uint256 sub_72a85160;
address stor9;
address stor10;
address stor11;
address stor12;

function sub_1e51e6b6(?) payable {
    return sub_1e51e6b6
}

function sub_34e14306(?) payable {
    return sub_34e14306
}

function sub_381165f3(?) payable {
    return bool(uint8(stor0.field_8))
}

function _active() payable {
    return bool(uint8(stor0.field_0))
}

function sub_72a85160(?) payable {
    return sub_72a85160
}

function sub_80260717(?) payable {
    return sub_80260717Address
}

function sub_8215d4a9(?) payable {
    return sub_8215d4a9
}

function sub_9e3669ee(?) payable {
    return bool(uint8(stor0.field_16))
}

function sub_d64fe168(?) payable {
    return sub_d64fe168
}

function sub_f76f8405(?) payable {
    return sub_f76f8405
}

function _fallback() payable {
    revert
}

function cancel() payable {
    if stor10 != msg.sender:
        revert with 0, 'only payor can cancel'
    uint8(stor0.field_0) = 0
    Mask(248, 0, stor0.field_8) = 1
    Mask(240, 0, stor0.field_16) = 0
    sub_72a85160 = block.timestamp
}

function makePayment() payable {
    if block.timestamp >= sub_d64fe168:
        require ext_code.size(stor11)
        call stor11.0x5040109 with:
             gas gas_remaining wei
            args sub_f76f8405
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        sub_1e51e6b6 = ext_call.return_data[0]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor12)
        if ext_call.return_data[0] < sub_1e51e6b6:
            call stor12.0x23b872dd with:
                 gas gas_remaining wei
                args stor10, stor9, sub_1e51e6b6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_8215d4a9 = sub_d64fe168
            if sub_d64fe168 > -sub_34e14306 - 1:
                revert with 'NH{q', 17
            sub_d64fe168 += sub_34e14306
        else:
            staticcall stor12.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), stor10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= sub_1e51e6b6:
                uint8(stor0.field_0) = 0
                Mask(240, 0, stor0.field_16) = 1
                Mask(248, 0, stor0.field_8) = 0
                sub_72a85160 = block.timestamp
            else:
                require ext_code.size(stor12)
                call stor12.0x23b872dd with:
                     gas gas_remaining wei
                    args stor10, stor9, sub_1e51e6b6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_8215d4a9 = sub_d64fe168
                if sub_d64fe168 > -sub_34e14306 - 1:
                    revert with 'NH{q', 17
                sub_d64fe168 += sub_34e14306
}

function sub_45c212e5(?) payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
