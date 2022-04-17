contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
array of struct sub_5d0414eb;
mapping of uint256 sub_b9ccb089;
mapping of uint256 sub_758f8b13;
mapping of uint256 sub_374ced17;

function sub_374ced17(?) payable {
    require calldata.size - 4 >= 32
    return sub_374ced17[arg1]
}

function sub_5d0414eb(?) payable {
    require calldata.size - 4 >= 32
    return sub_5d0414eb[address(arg1)].field_0
}

function sub_758f8b13(?) payable {
    require calldata.size - 4 >= 32
    return sub_758f8b13[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_b9ccb089(?) payable {
    require calldata.size - 4 >= 32
    return sub_b9ccb089[address(arg1)]
}

function sub_bb304628(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_5d0414eb[address(arg1)].field_0
    return sub_5d0414eb[address(arg1)][arg2].field_0
}

function sub_be8f378e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_5d0414eb[arg1].field_0
    return sub_5d0414eb[arg1][arg2].field_0
}

function sub_d1751952(?) payable {
    require calldata.size - 4 >= 32
    return sub_758f8b13[arg1]
}

function sub_deca730e(?) payable {
    require calldata.size - 4 >= 32
    return sub_b9ccb089[arg1]
}

function sub_eb6b45c8(?) payable {
    require calldata.size - 4 >= 32
    return sub_374ced17[address(arg1)]
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    sub_ffe6e7d7Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9baa1ca9(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    sub_5d0414eb[address(arg1)].field_0++
    sub_5d0414eb[address(arg1)][sub_5d0414eb[address(arg1)].field_0].field_0 = arg2
}

function sub_b0e2e239(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg2 > sub_374ced17[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_374ced17[address(arg1)] -= arg2
}

function sub_284fe1c5(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg2 + sub_758f8b13[address(arg1)] < sub_758f8b13[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_758f8b13[address(arg1)] += arg2
}

function sub_94988dfd(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg2 + sub_374ced17[address(arg1)] < sub_374ced17[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_374ced17[address(arg1)] += arg2
}

function sub_0a166ecc(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg2 <= 0:
        revert with 0, 'SLCCII: 1'
    if arg2 > sub_5d0414eb[address(arg1)].field_0:
        revert with 0, 'SLCCII: 1'
    sub_b9ccb089[address(arg1)] = arg2
}

function sub_514e8ad0(?) payable {
    require calldata.size - 4 >= 32
    if not sub_5d0414eb[address(arg1)].field_0:
        mem[(32 * sub_5d0414eb[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_5d0414eb[address(arg1)].field_0) + 160] = sub_5d0414eb[address(arg1)].field_0
        mem[(32 * sub_5d0414eb[address(arg1)].field_0) + 192 len floor32(sub_5d0414eb[address(arg1)].field_0)] = mem[128 len floor32(sub_5d0414eb[address(arg1)].field_0)]
        return memory
          from (32 * sub_5d0414eb[address(arg1)].field_0) + 128
           len (96 * sub_5d0414eb[address(arg1)].field_0) + 64
    mem[128] = sub_5d0414eb[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_5d0414eb[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_5d0414eb[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_5d0414eb[address(arg1)].field_0) + 192 len floor32(sub_5d0414eb[address(arg1)].field_0)] = mem[128 len floor32(sub_5d0414eb[address(arg1)].field_0)]
    return Array(len=sub_5d0414eb[address(arg1)].field_0, data=mem[128 len floor32(sub_5d0414eb[address(arg1)].field_0)], mem[(32 * sub_5d0414eb[address(arg1)].field_0) + floor32(sub_5d0414eb[address(arg1)].field_0) + 192 len (32 * sub_5d0414eb[address(arg1)].field_0) - floor32(sub_5d0414eb[address(arg1)].field_0)]), 
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}



}
