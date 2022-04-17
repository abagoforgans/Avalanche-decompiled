contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
array of struct sub_fb0a2656;
mapping of uint8 stor103;
uint256 sub_49cfe175;
uint256 maxDurationInDays;
mapping of uint256 minAmountOfCurrency;
mapping of uint256 maxAmountOfCurrency;
uint256 maxClaimDurationInDaysAfterExpired;
uint256 insurTokenRewardPercentX10000;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;

function sub_043c18ef(?) payable {
    return maxClaimDurationInDaysAfterExpired
}

function sub_06392e1e(?) payable {
    return maxDurationInDays
}

function getMinAmountOfCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    return minAmountOfCurrency[address(arg1)]
}

function getMinDurationInDays() payable {
    return sub_49cfe175
}

function sub_406fbb72(?) payable {
    require calldata.size - 4 >= 32
    return minAmountOfCurrency[arg1]
}

function sub_49cfe175(?) payable {
    return sub_49cfe175
}

function isValidCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'IVC: 1'
    return bool(stor103[address(arg1)])
}

function sub_5ffddd66(?) payable {
    return insurTokenRewardPercentX10000
}

function owner() payable {
    return owner
}

function getMaxClaimDurationInDaysAfterExpired() payable {
    return maxClaimDurationInDaysAfterExpired
}

function getMaxAmountOfCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    return maxAmountOfCurrency[address(arg1)]
}

function getMaxDurationInDays() payable {
    return maxDurationInDays
}

function sub_d2d4d67c(?) payable {
    require calldata.size - 4 >= 32
    return maxAmountOfCurrency[arg1]
}

function sub_db050f30(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor103[arg1])
}

function getInsurTokenRewardPercentX10000() payable {
    return insurTokenRewardPercentX10000
}

function sub_fb0a2656(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fb0a2656.length
    return sub_fb0a2656[arg1].field_0
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

function sub_8af85e67(?) payable {
    require calldata.size - 4 >= 32
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
    maxClaimDurationInDaysAfterExpired = arg1
}

function sub_1caf4f32(?) payable {
    require calldata.size - 4 >= 32
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
    if arg1 > 1825:
        revert with 0, 'SMADID: 1'
    maxDurationInDays = arg1
}

function sub_f981893b(?) payable {
    require calldata.size - 4 >= 32
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
    if arg1 > maxDurationInDays:
        revert with 0, 'SMIDID: 1'
    sub_49cfe175 = arg1
}

function sub_4a50e5bd(?) payable {
    require calldata.size - 4 >= 32
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
    if arg1 > 10000:
        revert with 0, 'SITRP: 1'
    insurTokenRewardPercentX10000 = arg1
}

function sub_2e0a5608(?) payable {
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
    if not arg1:
        revert with 0, 'SMAAOC: 1'
    maxAmountOfCurrency[address(arg1)] = arg2
}

function sub_3900bf33(?) payable {
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
    if not arg1:
        revert with 0, 'SMIAOC: 1'
    minAmountOfCurrency[address(arg1)] = arg2
}

function addCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0, 'AC: 1'
    if stor103[address(arg1)]:
        revert with 0, 'AC: 2'
    sub_fb0a2656.length++
    stor4650[stor102.length] = arg1
    stor103[address(arg1)] = 1
}

function setup(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    sub_ffe6e7d7Address = arg1
    maxDurationInDays = 365
    sub_49cfe175 = 15
    maxClaimDurationInDaysAfterExpired = 30
    sub_fb0a2656.length++
    stor4650[stor102.length] = arg2
    sub_fb0a2656.length++
    stor4650[stor102.length] = arg3
    stor103[address(arg2)] = 1
    stor103[arg3] = 1
    minAmountOfCurrency[address(arg2)] = 500 * 10^18
    maxAmountOfCurrency[address(arg2)] = 15000000 * 10^18
    minAmountOfCurrency[address(arg3)] = 1000 * 10^18
    maxAmountOfCurrency[address(arg3)] = 20000000 * 10^18
    insurTokenRewardPercentX10000 = 0
}

function getAllValidCurrencyArray() payable {
    if not sub_fb0a2656.length:
        mem[(32 * sub_fb0a2656.length) + 128] = 32
        mem[(32 * sub_fb0a2656.length) + 160] = sub_fb0a2656.length
        mem[(32 * sub_fb0a2656.length) + 192 len floor32(sub_fb0a2656.length)] = mem[128 len floor32(sub_fb0a2656.length)]
        return memory
          from (32 * sub_fb0a2656.length) + 128
           len (96 * sub_fb0a2656.length) + 64
    mem[128] = address(sub_fb0a2656.field_0)
    idx = 128
    s = 0
    while (32 * sub_fb0a2656.length) + 96 > idx:
        mem[idx + 32] = sub_fb0a2656[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fb0a2656.length) + 192 len floor32(sub_fb0a2656.length)] = mem[128 len floor32(sub_fb0a2656.length)]
    return Array(len=sub_fb0a2656.length, data=mem[128 len floor32(sub_fb0a2656.length)], mem[(32 * sub_fb0a2656.length) + floor32(sub_fb0a2656.length) + 192 len (32 * sub_fb0a2656.length) - floor32(sub_fb0a2656.length)]), 
}

function removeCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0, 'RC: 1'
    idx = 0
    while idx < sub_fb0a2656.length:
        mem[0] = 102
        if sub_fb0a2656[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if 1 > sub_fb0a2656.length:
            revert with 0, 'SafeMath: subtraction overflow'
        if idx < sub_fb0a2656.length - 1:
            if 1 > sub_fb0a2656.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require sub_fb0a2656.length - 1 < sub_fb0a2656.length
            require idx < sub_fb0a2656.length
            sub_fb0a2656[idx].field_0 = sub_fb0a2656[sub_fb0a2656.length].field_0
        require sub_fb0a2656.length
        sub_fb0a2656[sub_fb0a2656.length].field_0 = 0
        sub_fb0a2656.length--
        stor103[address(arg1)] = 0
    revert with 0, 'RC: 2'
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
