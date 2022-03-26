contract main {




// =====================  Runtime code  =====================


#
#  - sub_f40a3685(?)
#
address owner;
address stor2;
address stor4;
uint256 stor8;
uint256 stor9;
array of address stor12;
array of address sub_853082a6;
address stor14;
address stor15;
array of uint256 stor17;
array of uint256 sub_06f6a017;
uint256 stor22;
array of struct stor23;
mapping of uint8 stor24;
mapping of uint8 stor99;

function sub_06f6a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_06f6a017[arg1]
}

function sub_853082a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_853082a6[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_df253078(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_64ac8dd1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor24[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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

function sub_4a3c83cf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require bool(stor23[msg.sender].field_768) != 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 24
    if 1 == bool(stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]):
        revert with 0, 
                    32,
                    55,
                    0x2e43686f6f7365206120646966666572656e74206e69636b6e616d652c2074686174206f6e6520697320616c72656164792074616b656e,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 283 len 9]
    uint256(stor23[msg.sender][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor23[msg.sender][1][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    uint256(stor23[msg.sender].field_512) = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 24
    stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = 1
    stor23[msg.sender].field_768 = 1
}

function sub_cb1d2b51(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 23
    mem[96] = stor23[arg1].length
    mem[0] = sha3(arg1, 23)
    mem[128] = uint256(stor23[arg1].field_0)
    idx = 128
    s = 0
    while stor23[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor23[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 160
    mem[ceil32(stor23[arg1].length) + 128] = stor23[arg1][1].length
    mem[ceil32(stor23[arg1].length) + 160] = uint256(stor23[arg1][1].field_0)
    idx = ceil32(stor23[arg1].length) + 160
    s = 0
    while ceil32(stor23[arg1].length) + stor23[arg1][1].length + 128 > idx:
        mem[idx + 32] = uint256(stor23[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 224] = uint256(stor23[arg1].field_512)
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 256] = bool(stor23[arg1].field_768)
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 288] = uint256(stor23[arg1].field_1024)
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 320] = uint256(stor23[arg1].field_1280)
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 160] = 192
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 352] = stor23[arg1].length
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 384 len ceil32(stor23[arg1].length)] = mem[128 len ceil32(stor23[arg1].length)]
    mem[ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 192] = stor23[arg1].length + 224
    mem[stor23[arg1].length + ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 384] = stor23[arg1][1].length
    mem[stor23[arg1].length + ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 416 len ceil32(stor23[arg1][1].length)] = mem[ceil32(stor23[arg1].length) + 160 len ceil32(stor23[arg1][1].length)]
    if not stor23[arg1][1].length % 32:
        return Array(len=stor23[arg1].length, data=mem[128 len ceil32(stor23[arg1].length)], mem[(2 * ceil32(stor23[arg1].length)) + ceil32(stor23[arg1][1].length) + 384 len stor23[arg1][1].length + stor23[arg1].length + -ceil32(stor23[arg1].length) + 32]), 
               stor23[arg1].length + 224,
               uint256(stor23[arg1].field_512),
               bool(stor23[arg1].field_768),
               uint256(stor23[arg1].field_1024),
               uint256(stor23[arg1].field_1280)
    mem[floor32(stor23[arg1][1].length) + stor23[arg1].length + ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + 416] = mem[floor32(stor23[arg1][1].length) + stor23[arg1].length + ceil32(stor23[arg1].length) + ceil32(stor23[arg1][1].length) + -stor23[arg1][1].length % 32 + 448 len stor23[arg1][1].length % 32]
    return Array(len=stor23[arg1].length, data=mem[128 len ceil32(stor23[arg1].length)], mem[(2 * ceil32(stor23[arg1].length)) + ceil32(stor23[arg1][1].length) + 384 len floor32(stor23[arg1][1].length) + stor23[arg1].length + -ceil32(stor23[arg1].length) + 64]), 
           stor23[arg1].length + 224,
           uint256(stor23[arg1].field_512),
           bool(stor23[arg1].field_768),
           uint256(stor23[arg1].field_1024),
           uint256(stor23[arg1].field_1280)
}

function claimJackpot() payable {
    if block.timestamp <= stor9:
        revert with 0, 'Competition still running'
    if uint8(stor12.length):
        revert with 0, 'Jackpot already claimed'
    uint8(stor12.length) = 1
    if uint256(stor23[stor4].field_1280) > stor9:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor9 - uint256(stor23[stor4].field_1280) + uint256(stor23[stor4].field_1024) < uint256(stor23[stor4].field_1024):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor23[stor4].field_1024) = stor9 - uint256(stor23[stor4].field_1280) + uint256(stor23[stor4].field_1024)
    idx = 0
    while idx < 5:
        if sub_853082a6[idx] != stor4:
            idx = idx + 1
            continue 
        s = 0
        while s < 5:
            if sub_06f6a017[s] >= uint256(stor23[stor4].field_1024):
                s = s + 1
                continue 
            t = idx
            while t > s:
                require t - 1 < 5
                require t < 5
                sub_06f6a017[t] = stor17[t]
                require t - 1 < 5
                require t < 5
                sub_853082a6[t] = address(stor12[t])
                t = t - 1
                continue 
            require s < 5
            sub_06f6a017[s] = uint256(stor23[stor4].field_1024)
            sub_853082a6[s] = stor4
            if not stor8:
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 0 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_853082a6.length, 0
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_853082a6.length, ext_call.return_data[0]
            else:
                if 6000 * stor8 / stor8 != 6000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 6000 * stor8 / 10000 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_853082a6.length, 6000 * stor8 / 10000
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_853082a6.length, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if not stor8:
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 0 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, 0
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, ext_call.return_data[0]
            else:
                if 3000 * stor8 / stor8 != 3000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 3000 * stor8 / 10000 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, 3000 * stor8 / 10000
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor14, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if not stor8:
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 0 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor15, 0
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor15, ext_call.return_data[0]
            else:
                if 1000 * stor8 / stor8 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor2)
                staticcall stor2.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                if 1000 * stor8 / 10000 <= ext_call.return_data[0]:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor15, 1000 * stor8 / 10000
                else:
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor15, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
        t = idx
        while t > s:
            require t - 1 < 5
            require t < 5
            sub_06f6a017[t] = stor17[t]
            require t - 1 < 5
            require t < 5
            sub_853082a6[t] = address(stor12[t])
            t = t - 1
            continue 
        require s < 5
        sub_06f6a017[s] = uint256(stor23[stor4].field_1024)
        sub_853082a6[s] = stor4
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, ext_call.return_data[0]
        else:
            if 6000 * stor8 / stor8 != 6000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 6000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, 6000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
        else:
            if 3000 * stor8 / stor8 != 3000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 3000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, 3000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, ext_call.return_data[0]
        else:
            if 1000 * stor8 / stor8 != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 1000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, 1000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
    idx = 0
    while idx < 5:
        if sub_06f6a017[idx] >= uint256(stor23[stor4].field_1024):
            idx = idx + 1
            continue 
        s = 4
        while s > idx:
            require s - 1 < 5
            require s < 5
            sub_06f6a017[s] = stor17[s]
            require s - 1 < 5
            require s < 5
            sub_853082a6[s] = address(stor12[s])
            s = s - 1
            continue 
        if idx < 4:
            sub_06f6a017[idx] = uint256(stor23[stor4].field_1024)
            sub_853082a6[idx] = stor4
        else:
            if uint256(stor23[stor4].field_1024) > stor22:
                require idx < 5
                sub_06f6a017[idx] = uint256(stor23[stor4].field_1024)
                sub_853082a6[idx] = stor4
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, ext_call.return_data[0]
        else:
            if 6000 * stor8 / stor8 != 6000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 6000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, 6000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_853082a6.length, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
        else:
            if 3000 * stor8 / stor8 != 3000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 3000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, 3000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not stor8:
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 0 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, 0
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, ext_call.return_data[0]
        else:
            if 1000 * stor8 / stor8 != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor2)
            staticcall stor2.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            if 1000 * stor8 / 10000 <= ext_call.return_data[0]:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, 1000 * stor8 / 10000
            else:
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor15, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
    s = 4
    while s > idx:
        require s - 1 < 5
        require s < 5
        sub_06f6a017[s] = stor17[s]
        require s - 1 < 5
        require s < 5
        sub_853082a6[s] = address(stor12[s])
        s = s - 1
        continue 
    if idx < 4:
        sub_06f6a017[idx] = uint256(stor23[stor4].field_1024)
        sub_853082a6[idx] = stor4
    else:
        if uint256(stor23[stor4].field_1024) > stor22:
            require idx < 5
            sub_06f6a017[idx] = uint256(stor23[stor4].field_1024)
            sub_853082a6[idx] = stor4
    if not stor8:
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 0 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_853082a6.length, 0
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_853082a6.length, ext_call.return_data[0]
    else:
        if 6000 * stor8 / stor8 != 6000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 6000 * stor8 / 10000 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_853082a6.length, 6000 * stor8 / 10000
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sub_853082a6.length, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
    if not stor8:
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 0 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, 0
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, ext_call.return_data[0]
    else:
        if 3000 * stor8 / stor8 != 3000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 3000 * stor8 / 10000 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, 3000 * stor8 / 10000
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
    if not stor8:
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 0 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor15, 0
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor15, ext_call.return_data[0]
    else:
        if 1000 * stor8 / stor8 != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        if 1000 * stor8 / 10000 <= ext_call.return_data[0]:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor15, 1000 * stor8 / 10000
        else:
            call stor2.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor15, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x737361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
}



}
