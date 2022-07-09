contract main {




// =====================  Runtime code  =====================


const sub_67781c0e(?) = 10^18


address governorAddress; offset 16
uint256 stor0; offset 16
address stor1;
mapping of struct stor2;
mapping of address sub_d6d88396;

function governor() payable {
    return address(governorAddress)
}

function sub_d6d88396(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_d6d88396[arg1]
}

function _fallback() payable {
    revert
}

function acceptGovernorship() payable {
    if stor1 != msg.sender:
        revert with 0, 'not-the-proposed-governor'
    emit UpdatedGovernor(address(governorAddress), stor1);
    Mask(240, 0, stor0) = stor1
    stor1 = 0
}

function transferGovernorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'proposed-governor-is-zero'
    stor1 = arg1
}

function sub_0fd01228(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 4
    require arg2 == address(arg2)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg2):
        revert with 0, 'provider-address-null'
    if arg1 > 3:
        revert with 0, 33
    if sub_d6d88396[arg1] == address(arg2):
        revert with 0, 'new-same-as-current'
    if arg1 > 3:
        revert with 0, 33
    sub_d6d88396[arg1] = address(arg2)
    if arg1 >= 4:
        revert with 0, 33
    emit 0x6d8522a7: arg1, sub_d6d88396[arg1], address(arg2)
}

function sub_70eb205e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'asset-address-is-null'
    stor2[address(arg1)].field_0 = 0
    stor2[address(arg1)].field_256 = 0
    if stor2[address(arg1)].field_256:
        if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 0
        idx = 0
        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 0
        idx = 0
        while stor2[address(arg1)].field_257 + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)].field_512 = 1
    stor2[address(arg1)].field_768 = -1
    emit 0x69ae030a: 0, 128, 1, -1, 0, address(arg1)
}

function sub_7b60e267(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg2):
        revert with 0, 'underlying-address-is-null'
    mem[128] = address(arg2)
    if not address(arg1):
        revert with 0, 'asset-address-is-null'
    mem[160] = 1
    stor2[address(arg1)].field_0 = 1
    if stor2[address(arg1)].field_256:
        if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 65
        s = 0
        idx = 128
        while 160 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 65
        s = 0
        idx = 128
        while 160 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while stor2[address(arg1)].field_257 + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)].field_512 = 0
    stor2[address(arg1)].field_768 = -1
    emit 0x69ae030a: 1, 128, 0, -1, 32, address(arg2), address(arg1)
}

function sub_5b919f3d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg2):
        revert with 0, 'underlying-address-is-null'
    mem[128] = address(arg2)
    if not address(arg1):
        revert with 0, 'asset-address-is-null'
    mem[160] = 2
    stor2[address(arg1)].field_0 = 2
    if stor2[address(arg1)].field_256:
        if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 65
        s = 0
        idx = 128
        while 160 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 65
        s = 0
        idx = 128
        while 160 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while stor2[address(arg1)].field_257 + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)].field_512 = 0
    stor2[address(arg1)].field_768 = arg3
    emit 0x69ae030a: 2, 128, 0, arg3, 32, address(arg2), address(arg1)
}

function sub_bbcb75c6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(governorAddress) != msg.sender:
        revert with 0, 'not-governor'
    if not address(arg1):
        revert with 0, 'asset-address-is-null'
    if not address(arg2):
        revert with 0, 'aggregator-address-is-null'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[ceil32(return_data.size) + 128] = address(arg2)
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[31 len 1]
    if not address(arg1):
        revert with 0, 'asset-address-is-null'
    mem[ceil32(return_data.size) + 192] = 3
    stor2[address(arg1)].field_0 = 3
    if stor2[address(arg1)].field_256:
        if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 129
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + 192 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_256 = 129
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + 192 > idx:
            stor2[address(arg1)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor2[address(arg1)].field_257 + 31 / 32 > idx:
            stor2[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)].field_512 = 0
    stor2[address(arg1)].field_768 = arg3
    emit 0x69ae030a: 3, 128, 0, arg3, 64, address(arg2), ext_call.return_data[31 len 1], address(arg1)
}

function assets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[arg1].field_256:
        if stor2[arg1].field_256 == uint255(stor2[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor2[arg1].field_256:
            if stor2[arg1].field_256 == uint255(stor2[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_256):
                if 31 >= uint255(stor2[arg1].field_256) * 0.5:
                    mem[128] = 256 * stor2[arg1].field_264
                else:
                    mem[128] = stor2[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
                revert with 0, 34
            if stor2[arg1].field_257:
                if 31 >= stor2[arg1].field_257:
                    mem[128] = 256 * stor2[arg1].field_264
                else:
                    mem[128] = stor2[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor2[arg1].field_0 >= 4:
            revert with 0, 33
        return stor2[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor2[arg1].field_256), data=mem[128 len ceil32(uint255(stor2[arg1].field_256) * 0.5)]),
               bool(stor2[arg1].field_512),
               stor2[arg1].field_768
    if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
        revert with 0, 34
    if stor2[arg1].field_256:
        if stor2[arg1].field_256 == uint255(stor2[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_256):
            if 31 >= uint255(stor2[arg1].field_256) * 0.5:
                mem[128] = 256 * stor2[arg1].field_264
            else:
                mem[128] = stor2[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
            revert with 0, 34
        if stor2[arg1].field_257:
            if 31 >= stor2[arg1].field_257:
                mem[128] = 256 * stor2[arg1].field_264
            else:
                mem[128] = stor2[arg1][1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor2[arg1].field_0 >= 4:
        revert with 0, 33
    return stor2[arg1].field_0, 
           Array(len=stor2[arg1].field_256, data=mem[128 len ceil32(stor2[arg1].field_257)]),
           bool(stor2[arg1].field_512),
           stor2[arg1].field_768
}

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)].field_0 > 3:
        revert with 0, 33
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 > 3:
            revert with 0, 33
        if stor2[address(arg1)].field_256:
            if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_256:
                if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[address(arg1)].field_256):
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                         gas gas_remaining wei
                        args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                else:
                    if 31 < uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[128] = stor2[address(arg1)][1].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                    else:
                        mem[128] = 256 * stor2[address(arg1)].field_264
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
            else:
                if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if not stor2[address(arg1)].field_257:
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                         gas gas_remaining wei
                        args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                else:
                    if 31 < stor2[address(arg1)].field_257:
                        mem[128] = stor2[address(arg1)][1].field_0
                        idx = 128
                        s = 0
                        while stor2[address(arg1)].field_257 + 96 > idx:
                            mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                    else:
                        mem[128] = 256 * stor2[address(arg1)].field_264
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                        if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                            mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
        else:
            if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_256:
                if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor2[address(arg1)].field_256):
                    mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                    if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                        mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                         gas gas_remaining wei
                        args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
                else:
                    if 31 < uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[128] = stor2[address(arg1)][1].field_0
                        idx = 128
                        s = 0
                        while (uint255(stor2[address(arg1)].field_256) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)])
                    else:
                        mem[128] = 256 * stor2[address(arg1)].field_264
                        mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                        if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                            mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
            else:
                if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
                    revert with 0, 34
                if not stor2[address(arg1)].field_257:
                    mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                    if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                        mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                         gas gas_remaining wei
                        args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
                else:
                    if 31 < stor2[address(arg1)].field_257:
                        mem[128] = stor2[address(arg1)][1].field_0
                        idx = 128
                        s = 0
                        while stor2[address(arg1)].field_257 + 96 > idx:
                            mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)])
                    else:
                        mem[128] = 256 * stor2[address(arg1)].field_264
                        mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                        if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                            mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                        require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                        call sub_d6d88396[stor2[address(arg1)].field_0].0xc43ed2c8 with:
                             gas gas_remaining wei
                            args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getPriceInUsd(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(arg1)].field_512:
        if stor2[address(arg1)].field_0 > 3:
            revert with 0, 33
        if not stor2[address(arg1)].field_0:
            revert with 0, 'asset-has-no-price-provider'
    if stor2[address(arg1)].field_512:
        return 10^18
    if stor2[address(arg1)].field_0 > 3:
        revert with 0, 33
    if stor2[address(arg1)].field_256:
        if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_256:
            if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor2[address(arg1)].field_256):
                mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                        gas gas_remaining wei
                       args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
            else:
                if 31 < uint255(stor2[address(arg1)].field_256) * 0.5:
                    mem[128] = stor2[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[address(arg1)].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                else:
                    mem[128] = 256 * stor2[address(arg1)].field_264
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
        else:
            if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
                revert with 0, 34
            if not stor2[address(arg1)].field_257:
                mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                        gas gas_remaining wei
                       args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
            else:
                if 31 < stor2[address(arg1)].field_257:
                    mem[128] = stor2[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
                else:
                    mem[128] = 256 * stor2[address(arg1)].field_264
                    mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + 196 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)] = mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)]
                    if ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) > uint255(stor2[address(arg1)].field_256) * 0.5:
                        mem[ceil32(uint255(stor2[address(arg1)].field_256) * 0.5) + (uint255(stor2[address(arg1)].field_256) * 0.5) + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=2 * Mask(256, -1, stor2[address(arg1)].field_256), data=mem[128 len ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)], mem[(2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)) + 196 len 2 * ceil32(uint255(stor2[address(arg1)].field_256) * 0.5)])
    else:
        if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_256:
            if stor2[address(arg1)].field_256 == uint255(stor2[address(arg1)].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor2[address(arg1)].field_256):
                mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                    mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                        gas gas_remaining wei
                       args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
            else:
                if 31 < uint255(stor2[address(arg1)].field_256) * 0.5:
                    mem[128] = stor2[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[address(arg1)].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)])
                else:
                    mem[128] = 256 * stor2[address(arg1)].field_264
                    mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                    if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                        mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
        else:
            if stor2[address(arg1)].field_256 == stor2[address(arg1)].field_257 < 32:
                revert with 0, 34
            if not stor2[address(arg1)].field_257:
                mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                    mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                        gas gas_remaining wei
                       args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
            else:
                if 31 < stor2[address(arg1)].field_257:
                    mem[128] = stor2[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)])
                else:
                    mem[128] = 256 * stor2[address(arg1)].field_264
                    mem[ceil32(stor2[address(arg1)].field_257) + 196 len ceil32(stor2[address(arg1)].field_257)] = mem[128 len ceil32(stor2[address(arg1)].field_257)]
                    if ceil32(stor2[address(arg1)].field_257) > stor2[address(arg1)].field_257:
                        mem[ceil32(stor2[address(arg1)].field_257) + stor2[address(arg1)].field_257 + 196] = 0
                    require ext_code.size(sub_d6d88396[stor2[address(arg1)].field_0])
                    staticcall sub_d6d88396[stor2[address(arg1)].field_0].0xb8268443 with:
                            gas gas_remaining wei
                           args Array(len=stor2[address(arg1)].field_256, data=mem[128 len ceil32(stor2[address(arg1)].field_257)], mem[(2 * ceil32(stor2[address(arg1)].field_257)) + 196 len 2 * ceil32(stor2[address(arg1)].field_257)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if block.timestamp < ext_call.return_data[32]:
        revert with 0, 17
    if block.timestamp - ext_call.return_data[32] > stor2[address(arg1)].field_768:
        revert with 0, 'price-is-stale'
    return ext_call.return_data[0]
}



}
