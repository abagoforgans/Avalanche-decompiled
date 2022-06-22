contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
address MEMOAddress;
address TIMEAddress;
address sub_125fdbbcAddress;
address WMEMOAddress;
address sub_f3e0491fAddress;
uint256 sub_4c9b80b2;
uint256 sub_a1260734;

function sub_125fdbbc(?) payable {
    return sub_125fdbbcAddress
}

function WMEMO() payable {
    return WMEMOAddress
}

function enabled() payable {
    return bool(uint8(stor0.field_0))
}

function sub_4c9b80b2(?) payable {
    return sub_4c9b80b2
}

function sub_a1260734(?) payable {
    return sub_a1260734
}

function TIME() payable {
    return TIMEAddress
}

function MEMO() payable {
    return MEMOAddress
}

function sub_f3e0491f(?) payable {
    return sub_f3e0491fAddress
}

function _fallback() payable {
    revert
}

function sub_14a61f72(?) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    sub_4c9b80b2 = arg1
}

function sub_3b857a28(?) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    sub_a1260734 = arg1
}

function enable(bool arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor0.field_8) != msg.sender:
        revert with 0, 'only owner'
    uint8(stor0.field_0) = uint8(arg1)
}

function wMEMOToMEMO(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.index() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * arg1 / 10^9)
}

function MEMOTowMEMO(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.index() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^9 * arg1 / arg1 != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^9 * arg1 / ext_call.return_data[0])
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'wrap disabled now'
    require ext_code.size(msg.sender)
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args WMEMOAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0xde0e9a3e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    call MEMOAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f3e0491fAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3e0491fAddress)
    call sub_f3e0491fAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_4c9b80b2 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(TIMEAddress)
    call TIMEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_4c9b80b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TIMEAddress)
    call TIMEAddress.0x42966c68 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - sub_4c9b80b2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return sub_4c9b80b2
}

function sub_fa927ed5(?) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor0.field_0):
        revert with 0, 'wrap disabled now'
    require ext_code.size(msg.sender)
    require ext_code.size(TIMEAddress)
    call TIMEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= 1000:
        require ext_code.size(TIMEAddress)
        call TIMEAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_125fdbbcAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_125fdbbcAddress)
        call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_125fdbbcAddress)
        call sub_125fdbbcAddress.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(MEMOAddress)
        call MEMOAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args WMEMOAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(WMEMOAddress)
        call WMEMOAddress.0xea598cb0 with:
             gas gas_remaining wei
            args arg1
    else:
        if 1000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            require ext_code.size(TIMEAddress)
            call TIMEAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(TIMEAddress)
            call TIMEAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_125fdbbcAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.claim(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(MEMOAddress)
            call MEMOAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WMEMOAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(WMEMOAddress)
            call WMEMOAddress.0xea598cb0 with:
                 gas gas_remaining wei
                args arg1
        else:
            if (-1000 * arg1) + (arg2 * arg1) / arg1 != arg2 - 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(TIMEAddress)
            call TIMEAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (-1000 * arg1) + (arg2 * arg1) / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((-1000 * arg1) + (arg2 * arg1) / 1000) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(TIMEAddress)
            call TIMEAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_125fdbbcAddress, ((-1000 * arg1) + (arg2 * arg1) / 1000) + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args ((-1000 * arg1) + (arg2 * arg1) / 1000) + arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.claim(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(MEMOAddress)
            call MEMOAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WMEMOAddress, ((-1000 * arg1) + (arg2 * arg1) / 1000) + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(WMEMOAddress)
            call WMEMOAddress.0xea598cb0 with:
                 gas gas_remaining wei
                args (((-1000 * arg1) + (arg2 * arg1) / 1000) + arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'wrap disabled now'
    require ext_code.size(msg.sender)
    if not uint8(stor0.field_0):
        revert with 0, 'wrap disabled now'
    require ext_code.size(msg.sender)
    require ext_code.size(TIMEAddress)
    call TIMEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_a1260734 <= 1000:
        require ext_code.size(TIMEAddress)
        call TIMEAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_125fdbbcAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_125fdbbcAddress)
        call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_125fdbbcAddress)
        call sub_125fdbbcAddress.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(MEMOAddress)
        call MEMOAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args WMEMOAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(WMEMOAddress)
        call WMEMOAddress.0xea598cb0 with:
             gas gas_remaining wei
            args arg1
    else:
        if 1000 > sub_a1260734:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            require ext_code.size(TIMEAddress)
            call TIMEAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(TIMEAddress)
            call TIMEAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_125fdbbcAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.claim(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(MEMOAddress)
            call MEMOAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WMEMOAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(WMEMOAddress)
            call WMEMOAddress.0xea598cb0 with:
                 gas gas_remaining wei
                args arg1
        else:
            if (-1000 * arg1) + (sub_a1260734 * arg1) / arg1 != sub_a1260734 - 1000:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(TIMEAddress)
            call TIMEAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (-1000 * arg1) + (sub_a1260734 * arg1) / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((-1000 * arg1) + (sub_a1260734 * arg1) / 1000) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(TIMEAddress)
            call TIMEAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_125fdbbcAddress, ((-1000 * arg1) + (sub_a1260734 * arg1) / 1000) + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args ((-1000 * arg1) + (sub_a1260734 * arg1) / 1000) + arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_125fdbbcAddress)
            call sub_125fdbbcAddress.claim(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(MEMOAddress)
            call MEMOAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args WMEMOAddress, ((-1000 * arg1) + (sub_a1260734 * arg1) / 1000) + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(WMEMOAddress)
            call WMEMOAddress.0xea598cb0 with:
                 gas gas_remaining wei
                args (((-1000 * arg1) + (sub_a1260734 * arg1) / 1000) + arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WMEMOAddress)
    call WMEMOAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
