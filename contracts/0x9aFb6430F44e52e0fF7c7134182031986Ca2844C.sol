contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_f9dab964Address;
address sub_b0eae70dAddress;
address sub_5073b1a9Address;
uint16 sub_520b1513; offset 160
address newGameAddress;

function sub_5073b1a9(?) payable {
    return sub_5073b1a9Address
}

function sub_520b1513(?) payable {
    return sub_520b1513
}

function paused() payable {
    return bool(stor0)
}

function newGame() payable {
    return newGameAddress
}

function owner() payable {
    return owner
}

function sub_b0eae70d(?) payable {
    return sub_b0eae70dAddress
}

function sub_f9dab964(?) payable {
    return sub_f9dab964Address
}

function _fallback() payable {
    revert
}

function sub_cccd1df4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_520b1513 = uint16(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8aa31311(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f9dab964Address = address(arg2)
    newGameAddress = address(arg1)
    sub_b0eae70dAddress = address(arg3)
    sub_5073b1a9Address = address(arg4)
}

function sub_df9b788b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall sub_f9dab964Address.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_520b1513 > 65534:
            revert with 'NH{q', 17
        if sub_520b1513 > -uint16(arg1) + 65535:
            revert with 'NH{q', 17
        if uint16(var162002) > uint16(sub_520b1513 + uint16(arg1)):
            sub_520b1513 = uint16(var162003)
        mem[ceil32(return_data.size) + 96] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var172009] = uint16(var172001)
        staticcall sub_f9dab964Address.0x6352211e with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + 100 len var172011 + -ceil32(return_data.size) - 100]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        s = uint16(var172001)
        s = var172006
        s = var172008
        s = var172009
        s = var172011
        s = var172012
        s = var172013
        s = var172018
        t = var172019
        while ext_call.success:
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _183 = mem[_182]
            require mem[_182] == mem[_182 + 12 len 20]
            require ext_code.size(newGameAddress)
            call newGameAddress.0xeb0b4453 with:
                 gas gas_remaining wei
                args sub_f9dab964Address, s << 240, mem[_182 + 12 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_182 + 12 len 20] == sub_b0eae70dAddress:
                require ext_code.size(sub_5073b1a9Address)
                call sub_5073b1a9Address.0xfd851931 with:
                     gas gas_remaining wei
                    args (s << 240)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = uint16(s)
            require ext_code.size(sub_f9dab964Address)
            call sub_f9dab964Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(_183), address(this.address), uint16(s)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint16(t) == 65535:
                revert with 'NH{q', 17
            if uint16(s) == 65535:
                revert with 'NH{q', 17
            if sub_520b1513 > -uint16(arg1) + 65535:
                revert with 'NH{q', 17
            if uint16(uint16(s) + 1) > uint16(sub_520b1513 + uint16(arg1)):
                sub_520b1513 = uint16(uint16(t) + 1)
            mem[mem[64] + 4] = uint16(uint16(uint16(s) + 1) + 1)
            staticcall sub_f9dab964Address.0x6352211e with:
                    gas gas_remaining wei
                   args (uint16(uint16(s) + 1) + 1 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            s = uint16(uint16(s) + 1)
            s = uint16(s) + 1
            s = uint16(s) + 1
            s = mem[64] + 4
            s = mem[64] + 36
            s = mem[64] + 4
            s = uint16(s) + 1
            s = uint16(s) + 1
            t = uint16(t) + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
