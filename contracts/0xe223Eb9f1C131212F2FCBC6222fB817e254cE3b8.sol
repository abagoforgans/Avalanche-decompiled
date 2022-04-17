contract main {




// =====================  Runtime code  =====================


#
#  - sub_6ab69637(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
mapping of uint256 sub_c724e766;
mapping of uint256 sub_e1893065;
mapping of uint256 sub_e2f4e9c7;
mapping of uint256 sub_af7db7e5;
mapping of uint256 sub_9cd473e6;
mapping of uint256 sub_b8875a5c;
mapping of uint256 sub_c7276603;
mapping of uint256 sub_b4eef95f;
mapping of uint256 sub_2e88bc87;
mapping of uint256 sub_9430a5f8;
mapping of uint256 sub_a404d9e3;
array of uint256 sub_29dfc9ad;
array of uint256 sub_60ccaa56;
array of uint256 sub_242dfb2e;
mapping of uint256 sub_9639db9d;
array of struct sub_75e8270c;
mapping of uint8 stor118;
mapping of uint256 sub_4a55c393;

function sub_0ddc1e70(?) payable {
    require calldata.size - 4 >= 32
    return sub_2e88bc87[arg1]
}

function sub_0f332c24(?) payable {
    require calldata.size - 4 >= 32
    return sub_9cd473e6[arg1]
}

function sub_15438972(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor118[arg1][arg2])
}

function sub_2227b95c(?) payable {
    require calldata.size - 4 >= 32
    return sub_a404d9e3[arg1]
}

function sub_242dfb2e(?) payable {
    return sub_242dfb2e[arg1][arg2][0 len sub_242dfb2e[arg1][arg2].length]
}

function sub_29dfc9ad(?) payable {
    return sub_29dfc9ad[arg1][arg2][0 len sub_29dfc9ad[arg1][arg2].length]
}

function sub_2e88bc87(?) payable {
    require calldata.size - 4 >= 32
    return sub_2e88bc87[arg1]
}

function sub_2fde4a98(?) payable {
    require calldata.size - 4 >= 32
    return sub_af7db7e5[arg1]
}

function sub_37f272eb(?) payable {
    require calldata.size - 4 >= 32
    return sub_9430a5f8[arg1]
}

function sub_3ca858f1(?) payable {
    require calldata.size - 4 >= 32
    return sub_e2f4e9c7[arg1]
}

function sub_4a55c393(?) payable {
    require calldata.size - 4 >= 64
    return sub_4a55c393[arg1][arg2]
}

function sub_52cf2872(?) payable {
    require calldata.size - 4 >= 32
    return sub_9639db9d[arg1]
}

function sub_54f6c5ec(?) payable {
    require calldata.size - 4 >= 32
    return sub_e1893065[arg1]
}

function sub_60ccaa56(?) payable {
    return sub_60ccaa56[arg1][arg2][0 len sub_60ccaa56[arg1][arg2].length]
}

function sub_631565fd(?) payable {
    require calldata.size - 4 >= 32
    return sub_c7276603[arg1]
}

function sub_65651c2d(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor118[arg1][address(arg2)])
}

function sub_6b1c6dbf(?) payable {
    require calldata.size - 4 >= 32
    return sub_b4eef95f[arg1]
}

function sub_70586d97(?) payable {
    require calldata.size - 4 >= 32
    return sub_b8875a5c[arg1]
}

function sub_75e8270c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_75e8270c[arg1].field_0
    return sub_75e8270c[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_9430a5f8(?) payable {
    require calldata.size - 4 >= 32
    return sub_9430a5f8[arg1]
}

function sub_9639db9d(?) payable {
    require calldata.size - 4 >= 32
    return sub_9639db9d[arg1]
}

function sub_9cd473e6(?) payable {
    require calldata.size - 4 >= 32
    return sub_9cd473e6[arg1]
}

function sub_9dd9ba6d(?) payable {
    require calldata.size - 4 >= 32
    return sub_29dfc9ad[arg1]
}

function sub_a404d9e3(?) payable {
    require calldata.size - 4 >= 32
    return sub_a404d9e3[arg1]
}

function sub_af7db7e5(?) payable {
    require calldata.size - 4 >= 32
    return sub_af7db7e5[arg1]
}

function sub_b4eef95f(?) payable {
    require calldata.size - 4 >= 32
    return sub_b4eef95f[arg1]
}

function sub_b8875a5c(?) payable {
    require calldata.size - 4 >= 32
    return sub_b8875a5c[arg1]
}

function sub_c0cb8553(?) payable {
    require calldata.size - 4 >= 32
    return sub_c724e766[arg1]
}

function sub_c724e766(?) payable {
    require calldata.size - 4 >= 32
    return sub_c724e766[arg1]
}

function sub_c7276603(?) payable {
    require calldata.size - 4 >= 32
    return sub_c7276603[arg1]
}

function sub_e1893065(?) payable {
    require calldata.size - 4 >= 32
    return sub_e1893065[arg1]
}

function sub_e2f4e9c7(?) payable {
    require calldata.size - 4 >= 32
    return sub_e2f4e9c7[arg1]
}

function sub_f46d7b8a(?) payable {
    require calldata.size - 4 >= 64
    return sub_4a55c393[arg1][address(arg2)]
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

function sub_21edf397(?) payable {
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
    sub_9430a5f8[arg1] = arg2
}

function sub_4ce22ace(?) payable {
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
    sub_a404d9e3[arg1] = arg2
}

function sub_8f9163d7(?) payable {
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
    sub_9639db9d[arg1] = arg2
}

function sub_ce720a45(?) payable {
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
    sub_c7276603[arg1] = arg2
}

function sub_d40e824d(?) payable {
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
    sub_2e88bc87[arg1] = arg2
}

function sub_d5313915(?) payable {
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
    sub_b4eef95f[arg1] = arg2
}

function sub_b9cae226(?) payable {
    require calldata.size - 4 >= 96
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
    sub_4a55c393[arg1][address(arg2)] = arg3
}

function sub_4863e8a0(?) payable {
    require calldata.size - 4 >= 96
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
    stor118[arg1][address(arg2)] = uint8(arg3)
}

function sub_509df948(?) payable {
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
    sub_75e8270c[arg1].field_0++
    sub_75e8270c[arg1][sub_75e8270c[arg1].field_0].field_0 = arg2
}

function sub_f7f6b930(?) payable {
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
    if sub_c724e766[arg1] + 1 < sub_c724e766[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_c724e766[arg1]++
}

function sub_ffc6d945(?) payable {
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
    if sub_af7db7e5[arg1] + 1 < sub_af7db7e5[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_af7db7e5[arg1]++
}

function sub_89abedaf(?) payable {
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
    if arg2 + sub_e1893065[arg1] < sub_e1893065[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e1893065[arg1] += arg2
}

function sub_a69c495f(?) payable {
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
    if arg2 + sub_e2f4e9c7[arg1] < sub_e2f4e9c7[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e2f4e9c7[arg1] += arg2
}

function sub_dd84930f(?) payable {
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
    if arg2 + sub_9cd473e6[arg1] < sub_9cd473e6[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_9cd473e6[arg1] += arg2
}

function sub_ff8a9556(?) payable {
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
    if arg2 + sub_b8875a5c[arg1] < sub_b8875a5c[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_b8875a5c[arg1] += arg2
}

function sub_1ffc5946(?) payable {
    require calldata.size - 4 >= 32
    if not sub_75e8270c[arg1].field_0:
        mem[(32 * sub_75e8270c[arg1].field_0) + 128] = 32
        mem[(32 * sub_75e8270c[arg1].field_0) + 160] = sub_75e8270c[arg1].field_0
        mem[(32 * sub_75e8270c[arg1].field_0) + 192 len floor32(sub_75e8270c[arg1].field_0)] = mem[128 len floor32(sub_75e8270c[arg1].field_0)]
        return memory
          from (32 * sub_75e8270c[arg1].field_0) + 128
           len (96 * sub_75e8270c[arg1].field_0) + 64
    mem[128] = sub_75e8270c[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_75e8270c[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_75e8270c[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_75e8270c[arg1].field_0) + 192 len floor32(sub_75e8270c[arg1].field_0)] = mem[128 len floor32(sub_75e8270c[arg1].field_0)]
    return Array(len=sub_75e8270c[arg1].field_0, data=mem[128 len floor32(sub_75e8270c[arg1].field_0)], mem[(32 * sub_75e8270c[arg1].field_0) + floor32(sub_75e8270c[arg1].field_0) + 192 len (32 * sub_75e8270c[arg1].field_0) - floor32(sub_75e8270c[arg1].field_0)]), 
}

function sub_ba65f51e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
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
    sub_29dfc9ad[arg1]++
    sub_29dfc9ad[arg1][sub_29dfc9ad[arg1]][] = Array(len=arg2.length, data=arg2[all])
    sub_60ccaa56[arg1]++
    sub_60ccaa56[arg1][sub_60ccaa56[arg1]][] = Array(len=arg3.length, data=arg3[all])
    sub_242dfb2e[arg1]++
    sub_242dfb2e[arg1][sub_242dfb2e[arg1]][] = Array(len=arg4.length, data=arg4[all])
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
