contract main {




// =====================  Runtime code  =====================


#
#  - sub_0a140609(?)
#  - withdraw(uint256 arg1, address[] arg2)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_55e49977Address; offset 16
address sub_d3a20268Address;
address sub_eb21ea27Address;
address sub_3e72a62bAddress;
address sub_dce8ab82Address;
address routerAddress;
mapping of uint8 stor7;
mapping of uint256 tokenBalances;
array of struct stor9;
array of struct stor10;
mapping of uint256 sub_5d3f3821;
mapping of uint256 sub_70756083;
mapping of address sub_2491f722;
mapping of uint8 stor14;
uint256 sub_61294966;
array of address sub_08842822;
array of uint256 sub_82233c99;

function sub_08842822(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_08842822.length:
        revert with 0, 50
    return sub_08842822[arg1]
}

function sub_2491f722(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2491f722[address(arg1)]
}

function sub_3e72a62b(?) {
    return sub_3e72a62bAddress
}

function leader() {
    return sub_55e49977Address
}

function tokenBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenBalances[arg1]
}

function sub_55e49977(?) {
    return sub_55e49977Address
}

function sub_5d3f3821(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5d3f3821[arg1]
}

function sub_61294966(?) {
    return sub_61294966
}

function sub_69d1c101(?) {
    return sub_08842822.length
}

function sub_704a939e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function sub_70756083(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_70756083[address(arg1)]
}

function sub_7b822692(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function sub_82233c99(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_82233c99.length
    return sub_82233c99[arg1]
}

function sub_a578cf64(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2491f722[arg1]
}

function getFactoryAddress() {
    return sub_eb21ea27Address
}

function getRouter() {
    return routerAddress
}

function sub_b11fa9ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_70756083[arg1]
}

function sub_c51077c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return tokenBalances[address(arg1)]
}

function sub_d3a20268(?) {
    return sub_d3a20268Address
}

function sub_dce8ab82(?) {
    return sub_dce8ab82Address
}

function sub_eb21ea27(?) {
    return sub_eb21ea27Address
}

function router() {
    return routerAddress
}

function sub_7c7dc252(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == sub_eb21ea27Address
    if msg.sender == sub_55e49977Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'A trailer can not also be a leader.'
    if stor7[address(arg1)]:
        revert with 0, 'Trailer already exists'
    sub_5d3f3821[address(arg1)] = 0
    stor7[address(arg1)] = 1
}

function sub_2118f34c(?) {
    mem[96] = 0xfd72764600000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_eb21ea27Address)
    staticcall sub_eb21ea27Address.0xfd727646 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function walletName() {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function sub_3cc1a04b(?) {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function sub_c80c81d6(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 100).length)) + 97 < 96 or ceil32(ceil32(('cd', 100).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 132).length)) + 98 < 97 or ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + 98 > test266151307():
        revert with 0, 65
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 100).length)) + ('cd', 132).length + 129] = 0
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 99 < 98 or ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + 98] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + 130
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 196).length) + 100 < 99 or ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + ceil32(32 * ('cd', 196).length) + 100 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 99] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = 0
    s = cd[196] + 36
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 131
    while idx < ('cd', 196).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    sub_3e72a62bAddress = 0x2b29acfe123342f50a4b90ce118c04805610029c
    sub_dce8ab82Address = 0x66b9cc2257f88311db805089737cf872247e9277
    sub_55e49977Address = address(cd[4])
    sub_d3a20268Address = address(cd[36])
    sub_eb21ea27Address = address(cd[68])
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if ('cd', 100).length:
            stor9[].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if ('cd', 100).length:
            stor9[].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if ('cd', 132).length:
            stor10[].field_0 = Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
        else:
            stor10.length = 0
            idx = 0
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if ('cd', 132).length:
            stor10[].field_0 = Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    routerAddress = sub_d3a20268Address
    idx = 0
    while idx < ('cd', 196).length:
        if idx >= ('cd', 164).length:
            revert with 0, 50
        if idx >= ('cd', 196).length:
            revert with 0, 50
        sub_2491f722[mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]] = mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + 142 len 20]
        if idx >= ('cd', 196).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_61294966 = 0
    sub_5d3f3821[address(cd[4])] = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getInfo() {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 >= uint255(stor9.length) * 0.5:
                    mem[128] = 256 * stor9.length.field_8
                else:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 >= stor9.length.field_1:
                    mem[128] = 256 * stor9.length.field_8
                else:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor10.length):
                if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor10.length):
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor9.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
                else:
                    if 31 >= uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + 160] = 256 * stor10.length.field_8
                    else:
                        mem[ceil32(uint255(stor9.length) * 0.5) + 160] = uint256(stor10.field_0)
                        idx = ceil32(uint255(stor9.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor9.length) * 0.5) + (uint255(stor10.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor10[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor9.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
            else:
                if bool(stor10.length) == stor10.length.field_1 < 32:
                    revert with 0, 34
                if not stor10.length.field_1:
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor9.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
                else:
                    if 31 >= stor10.length.field_1:
                        mem[ceil32(uint255(stor9.length) * 0.5) + 160] = 256 * stor10.length.field_8
                    else:
                        mem[ceil32(uint255(stor9.length) * 0.5) + 160] = uint256(stor10.field_0)
                        idx = ceil32(uint255(stor9.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor9.length) * 0.5) + stor10.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor10[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor9.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
            return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], 2 * Mask(256, -1, stor10.length), mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(uint255(stor10.length) * 0.5)]), 
                   ceil32(uint255(stor9.length) * 0.5) + 128,
                   sub_55e49977Address
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10.length):
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(stor10.length.field_1) + (uint255(stor9.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
            else:
                if 31 >= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 160] = 256 * stor10.length.field_8
                else:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 160] = uint256(stor10.field_0)
                    idx = ceil32(uint255(stor9.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor9.length) * 0.5) + (uint255(stor10.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(stor10.length.field_1) + (uint255(stor9.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if not stor10.length.field_1:
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(stor10.length.field_1) + (uint255(stor9.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
            else:
                if 31 >= stor10.length.field_1:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 160] = 256 * stor10.length.field_8
                else:
                    mem[ceil32(uint255(stor9.length) * 0.5) + 160] = uint256(stor10.field_0)
                    idx = ceil32(uint255(stor9.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor9.length) * 0.5) + stor10.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + ceil32(stor10.length.field_1) + (uint255(stor9.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
                mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], stor10.length % 128, mem[ceil32(uint255(stor9.length) * 0.5) + 160 len ceil32(stor10.length.field_1)]), 
               ceil32(uint255(stor9.length) * 0.5) + 128,
               sub_55e49977Address
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 >= uint255(stor9.length) * 0.5:
                mem[128] = 256 * stor9.length.field_8
            else:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 >= stor9.length.field_1:
                mem[128] = 256 * stor9.length.field_8
            else:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10.length):
                if ceil32(stor9.length.field_1) > stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(uint255(stor10.length) * 0.5) + stor9.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
            else:
                if 31 >= uint255(stor10.length) * 0.5:
                    mem[ceil32(stor9.length.field_1) + 160] = 256 * stor10.length.field_8
                else:
                    mem[ceil32(stor9.length.field_1) + 160] = uint256(stor10.field_0)
                    idx = ceil32(stor9.length.field_1) + 160
                    s = 0
                    while ceil32(stor9.length.field_1) + (uint255(stor10.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9.length.field_1) > stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(uint255(stor10.length) * 0.5) + stor9.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if not stor10.length.field_1:
                if ceil32(stor9.length.field_1) > stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(uint255(stor10.length) * 0.5) + stor9.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
            else:
                if 31 >= stor10.length.field_1:
                    mem[ceil32(stor9.length.field_1) + 160] = 256 * stor10.length.field_8
                else:
                    mem[ceil32(stor9.length.field_1) + 160] = uint256(stor10.field_0)
                    idx = ceil32(stor9.length.field_1) + 160
                    s = 0
                    while ceil32(stor9.length.field_1) + stor10.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9.length.field_1) > stor9.length.field_1:
                    mem[ceil32(stor9.length.field_1) + ceil32(uint255(stor10.length) * 0.5) + stor9.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 288] = uint255(stor10.length) * 0.5
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + 320 len ceil32(uint255(stor10.length) * 0.5)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(2 * ceil32(stor9.length.field_1)) + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 320] = 0
        return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], 2 * Mask(256, -1, stor10.length), mem[ceil32(stor9.length.field_1) + 160 len ceil32(uint255(stor10.length) * 0.5)]), 
               ceil32(stor9.length.field_1) + 128,
               sub_55e49977Address
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor10.length):
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(stor10.length.field_1) + stor9.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
        else:
            if 31 >= uint255(stor10.length) * 0.5:
                mem[ceil32(stor9.length.field_1) + 160] = 256 * stor10.length.field_8
            else:
                mem[ceil32(stor9.length.field_1) + 160] = uint256(stor10.field_0)
                idx = ceil32(stor9.length.field_1) + 160
                s = 0
                while ceil32(stor9.length.field_1) + (uint255(stor10.length) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(stor10.length.field_1) + stor9.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if not stor10.length.field_1:
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(stor10.length.field_1) + stor9.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
        else:
            if 31 >= stor10.length.field_1:
                mem[ceil32(stor9.length.field_1) + 160] = 256 * stor10.length.field_8
            else:
                mem[ceil32(stor9.length.field_1) + 160] = uint256(stor10.field_0)
                idx = ceil32(stor9.length.field_1) + 160
                s = 0
                while ceil32(stor9.length.field_1) + stor10.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + ceil32(stor10.length.field_1) + stor9.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 288] = stor10.length.field_1
            mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + 320 len ceil32(stor10.length.field_1)] = mem[ceil32(stor9.length.field_1) + 160 len ceil32(stor10.length.field_1)]
            if ceil32(stor10.length.field_1) > stor10.length.field_1:
                mem[(2 * ceil32(stor9.length.field_1)) + ceil32(stor10.length.field_1) + stor10.length.field_1 + 320] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], stor10.length % 128, mem[ceil32(stor9.length.field_1) + 160 len ceil32(stor10.length.field_1)]), 
           ceil32(stor9.length.field_1) + 128,
           sub_55e49977Address
}

function sub_d2ce52d2(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 194] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 258] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 290] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 322] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 354] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 386] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 418] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 450] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 482] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 514] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 610] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 642] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 674] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 706] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 738] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 770] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 802] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 834] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 866] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 898] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 930] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 962] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 546] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 610
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 578] = 0
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1890
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 994] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1026] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1058] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1090] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1122] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1154] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1186] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1218] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1250] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1282] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1314] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1346] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1378] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1410] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1442] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1474] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1506] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1538] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1570] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1602] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1634] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1666] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1698] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1730] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1762] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1794] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1826] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1858] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1890] = 0x20f7a38e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1894] = 160
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 2054] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1926] = (32 * ('cd', 4).length) + 192
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2086] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2118 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1958] = cd[68]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1990] = this.address
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 2022] = msg.sender
    require ext_code.size(0x153918dfdc4f636cd10e31b17ad49bee837abdeb)
    delegate 0x153918dfdc4f636cd10e31b17ad49bee837abdeb.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * mem[ceil32(32 * ('cd', 4).length) + 97]) + -mem[64] + 2114]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _371 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _372 = mem[_371]
    require mem[_371] <= test266151307()
    require return_data.size - mem[_371] >= 512
    if not bool(_371 + ceil32(return_data.size) + 512 <= test266151307()):
        revert with 0, 65
    mem[64] = _371 + ceil32(return_data.size) + 512
    _374 = mem[_371 + _372]
    require mem[_371 + _372] <= test266151307()
    require _371 + _372 + mem[_371 + _372] + 31 < _371 + return_data.size
    _375 = mem[_371 + _372 + mem[_371 + _372]]
    if mem[_371 + _372 + mem[_371 + _372]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_371 + _372 + mem[_371 + _372]]) + 513 < 512 or _371 + ceil32(return_data.size) + ceil32(32 * mem[_371 + _372 + mem[_371 + _372]]) + 513 > test266151307():
        revert with 0, 65
    mem[64] = _371 + ceil32(return_data.size) + ceil32(32 * mem[_371 + _372 + mem[_371 + _372]]) + 513
    mem[_371 + ceil32(return_data.size) + 512] = _375
    require _372 + _374 + (32 * _375) + 32 <= return_data.size
    idx = 0
    s = _371 + _372 + _374 + 32
    t = _371 + ceil32(return_data.size) + 544
    while idx < _375:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_371 + ceil32(return_data.size)] = _371 + ceil32(return_data.size) + 512
    mem[_371 + ceil32(return_data.size) + 32] = mem[_371 + _372 + 32]
    mem[_371 + ceil32(return_data.size) + 64] = mem[_371 + _372 + 64]
    mem[_371 + ceil32(return_data.size) + 96] = mem[_371 + _372 + 96]
    mem[_371 + ceil32(return_data.size) + 128] = mem[_371 + _372 + 128]
    mem[_371 + ceil32(return_data.size) + 160] = mem[_371 + _372 + 160]
    mem[_371 + ceil32(return_data.size) + 192] = mem[_371 + _372 + 192]
    mem[_371 + ceil32(return_data.size) + 224] = mem[_371 + _372 + 224]
    mem[_371 + ceil32(return_data.size) + 256] = mem[_371 + _372 + 256]
    require mem[_371 + _372 + 288] == mem[_371 + _372 + 300 len 20]
    mem[_371 + ceil32(return_data.size) + 288] = mem[_371 + _372 + 288]
    require mem[_371 + _372 + 320] == mem[_371 + _372 + 332 len 20]
    mem[_371 + ceil32(return_data.size) + 320] = mem[_371 + _372 + 320]
    require mem[_371 + _372 + 352] == mem[_371 + _372 + 364 len 20]
    mem[_371 + ceil32(return_data.size) + 352] = mem[_371 + _372 + 352]
    require mem[_371 + _372 + 384] == mem[_371 + _372 + 396 len 20]
    mem[_371 + ceil32(return_data.size) + 384] = mem[_371 + _372 + 384]
    require mem[_371 + _372 + 416] == bool(mem[_371 + _372 + 416])
    mem[_371 + ceil32(return_data.size) + 416] = mem[_371 + _372 + 416]
    _475 = mem[_371 + _372 + 448]
    require mem[_371 + _372 + 448] <= test266151307()
    require return_data.size - _372 - mem[_371 + _372 + 448] >= 384
    _476 = mem[64]
    if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + 384
    mem[_476] = mem[_371 + _372 + mem[_371 + _372 + 448]]
    mem[_476 + 32] = mem[_371 + _372 + _475 + 32]
    mem[_476 + 64] = mem[_371 + _372 + _475 + 64]
    mem[_476 + 96] = mem[_371 + _372 + _475 + 96]
    mem[_476 + 128] = mem[_371 + _372 + _475 + 128]
    mem[_476 + 160] = mem[_371 + _372 + _475 + 160]
    mem[_476 + 192] = mem[_371 + _372 + _475 + 192]
    mem[_476 + 224] = mem[_371 + _372 + _475 + 224]
    mem[_476 + 256] = mem[_371 + _372 + _475 + 256]
    require mem[_371 + _372 + _475 + 288] == bool(mem[_371 + _372 + _475 + 288])
    mem[_476 + 288] = mem[_371 + _372 + _475 + 288]
    require mem[_371 + _372 + _475 + 320] == bool(mem[_371 + _372 + _475 + 320])
    mem[_476 + 320] = mem[_371 + _372 + _475 + 320]
    _488 = mem[_371 + _372 + _475 + 352]
    require mem[_371 + _372 + _475 + 352] <= test266151307()
    require _371 + _372 + _475 + mem[_371 + _372 + _475 + 352] + 31 < _371 + return_data.size
    _489 = mem[_371 + _372 + _475 + mem[_371 + _372 + _475 + 352]]
    if mem[_371 + _372 + _475 + mem[_371 + _372 + _475 + 352]] > test266151307():
        revert with 0, 65
    _490 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _372 + _475 + mem[_371 + _372 + _475 + 352]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _372 + _475 + mem[_371 + _372 + _475 + 352]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _372 + _475 + mem[_371 + _372 + _475 + 352]]) + 1
    mem[_490] = _489
    require _372 + _475 + _488 + (32 * _489) + 32 <= return_data.size
    mem[_490 + 32 len 32 * _489] = mem[_371 + _372 + _475 + _488 + 32 len 32 * _489]
    mem[_476 + 352] = _490
    mem[_371 + ceil32(return_data.size) + 448] = _476
    mem[_371 + ceil32(return_data.size) + 480] = mem[_371 + _372 + 480]
    _554 = mem[_371 + 32]
    require mem[_371 + 32] <= test266151307()
    require return_data.size - mem[_371 + 32] >= 896
    _555 = mem[64]
    if mem[64] + 896 < mem[64] or mem[64] + 896 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + 896
    require mem[_371 + _554] == bool(mem[_371 + _554])
    mem[_555] = mem[_371 + _554]
    mem[_555 + 32] = mem[_371 + _554 + 32]
    mem[_555 + 64] = mem[_371 + _554 + 64]
    mem[_555 + 96] = mem[_371 + _554 + 96]
    mem[_555 + 128] = mem[_371 + _554 + 128]
    mem[_555 + 160] = mem[_371 + _554 + 160]
    mem[_555 + 192] = mem[_371 + _554 + 192]
    mem[_555 + 224] = mem[_371 + _554 + 224]
    mem[_555 + 256] = mem[_371 + _554 + 256]
    mem[_555 + 288] = mem[_371 + _554 + 288]
    mem[_555 + 320] = mem[_371 + _554 + 320]
    mem[_555 + 352] = mem[_371 + _554 + 352]
    mem[_555 + 384] = mem[_371 + _554 + 384]
    mem[_555 + 416] = mem[_371 + _554 + 416]
    mem[_555 + 448] = mem[_371 + _554 + 448]
    _571 = mem[_371 + _554 + 480]
    require mem[_371 + _554 + 480] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 480] + 31 < _371 + return_data.size
    _572 = mem[_371 + _554 + mem[_371 + _554 + 480]]
    if mem[_371 + _554 + mem[_371 + _554 + 480]] > test266151307():
        revert with 0, 65
    _573 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 480]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 480]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 480]]) + 1
    mem[_573] = _572
    require _554 + _571 + (32 * _572) + 32 <= return_data.size
    mem[_573 + 32 len 32 * _572] = mem[_371 + _554 + _571 + 32 len 32 * _572]
    mem[_555 + 480] = _573
    _665 = mem[_371 + _554 + 512]
    require mem[_371 + _554 + 512] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 512] + 31 < _371 + return_data.size
    _666 = mem[_371 + _554 + mem[_371 + _554 + 512]]
    if mem[_371 + _554 + mem[_371 + _554 + 512]] > test266151307():
        revert with 0, 65
    _667 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 512]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 512]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 512]]) + 1
    mem[_667] = _666
    require _554 + _665 + (32 * _666) + 32 <= return_data.size
    mem[_667 + 32 len 32 * _666] = mem[_371 + _554 + _665 + 32 len 32 * _666]
    mem[_555 + 512] = _667
    _770 = mem[_371 + _554 + 544]
    require mem[_371 + _554 + 544] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 544] + 31 < _371 + return_data.size
    _771 = mem[_371 + _554 + mem[_371 + _554 + 544]]
    if mem[_371 + _554 + mem[_371 + _554 + 544]] > test266151307():
        revert with 0, 65
    _772 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 544]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 544]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 544]]) + 1
    mem[_772] = _771
    require _554 + _770 + (32 * _771) + 32 <= return_data.size
    mem[_772 + 32 len 32 * _771] = mem[_371 + _554 + _770 + 32 len 32 * _771]
    mem[_555 + 544] = _772
    _874 = mem[_371 + _554 + 576]
    require mem[_371 + _554 + 576] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 576] + 31 < _371 + return_data.size
    _875 = mem[_371 + _554 + mem[_371 + _554 + 576]]
    if mem[_371 + _554 + mem[_371 + _554 + 576]] > test266151307():
        revert with 0, 65
    _876 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 576]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 576]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 576]]) + 1
    mem[_876] = _875
    require _554 + _874 + (32 * _875) + 32 <= return_data.size
    mem[_876 + 32 len 32 * _875] = mem[_371 + _554 + _874 + 32 len 32 * _875]
    mem[_555 + 576] = _876
    _987 = mem[_371 + _554 + 608]
    require mem[_371 + _554 + 608] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 608] + 31 < _371 + return_data.size
    _988 = mem[_371 + _554 + mem[_371 + _554 + 608]]
    if mem[_371 + _554 + mem[_371 + _554 + 608]] > test266151307():
        revert with 0, 65
    _989 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 608]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 608]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 608]]) + 1
    mem[_989] = _988
    require _554 + _987 + (32 * _988) + 32 <= return_data.size
    mem[_989 + 32 len 32 * _988] = mem[_371 + _554 + _987 + 32 len 32 * _988]
    mem[_555 + 608] = _989
    _1100 = mem[_371 + _554 + 640]
    require mem[_371 + _554 + 640] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 640] + 31 < _371 + return_data.size
    _1101 = mem[_371 + _554 + mem[_371 + _554 + 640]]
    if mem[_371 + _554 + mem[_371 + _554 + 640]] > test266151307():
        revert with 0, 65
    _1102 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 640]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 640]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 640]]) + 1
    mem[_1102] = _1101
    require _554 + _1100 + (32 * _1101) + 32 <= return_data.size
    idx = 0
    s = _371 + _554 + _1100 + 32
    t = _1102 + 32
    while idx < _1101:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_555 + 640] = _1102
    _1221 = mem[_371 + _554 + 672]
    require mem[_371 + _554 + 672] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 672] + 31 < _371 + return_data.size
    _1222 = mem[_371 + _554 + mem[_371 + _554 + 672]]
    if mem[_371 + _554 + mem[_371 + _554 + 672]] > test266151307():
        revert with 0, 65
    _1223 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 672]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 672]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 672]]) + 1
    mem[_1223] = _1222
    require _554 + _1221 + (32 * _1222) + 32 <= return_data.size
    idx = 0
    s = _371 + _554 + _1221 + 32
    t = _1223 + 32
    while idx < _1222:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_555 + 672] = _1223
    _1401 = mem[_371 + _554 + 704]
    require mem[_371 + _554 + 704] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 704] + 31 < _371 + return_data.size
    _1402 = mem[_371 + _554 + mem[_371 + _554 + 704]]
    if mem[_371 + _554 + mem[_371 + _554 + 704]] > test266151307():
        revert with 0, 65
    _1403 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 704]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 704]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 704]]) + 1
    mem[_1403] = _1402
    require _554 + _1401 + (32 * _1402) + 32 <= return_data.size
    idx = 0
    s = _371 + _554 + _1401 + 32
    t = _1403 + 32
    while idx < _1402:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_555 + 704] = _1403
    _1664 = mem[_371 + _554 + 736]
    require mem[_371 + _554 + 736] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 736] + 31 < _371 + return_data.size
    _1665 = mem[_371 + _554 + mem[_371 + _554 + 736]]
    if mem[_371 + _554 + mem[_371 + _554 + 736]] > test266151307():
        revert with 0, 65
    _1666 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 736]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 736]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 736]]) + 1
    mem[_1666] = _1665
    require _554 + _1664 + (32 * _1665) + 32 <= return_data.size
    idx = 0
    s = _371 + _554 + _1664 + 32
    t = _1666 + 32
    while idx < _1665:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_555 + 736] = _1666
    _2048 = mem[_371 + _554 + 768]
    require mem[_371 + _554 + 768] <= test266151307()
    require _371 + _554 + mem[_371 + _554 + 768] + 31 < _371 + return_data.size
    _2049 = mem[_371 + _554 + mem[_371 + _554 + 768]]
    if mem[_371 + _554 + mem[_371 + _554 + 768]] > test266151307():
        revert with 0, 65
    _2050 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 768]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 768]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + _554 + mem[_371 + _554 + 768]]) + 1
    mem[_2050] = _2049
    require _554 + _2048 + (32 * _2049) + 32 <= return_data.size
    idx = 0
    s = _371 + _554 + _2048 + 32
    t = _2050 + 32
    while idx < _2049:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_555 + 768] = _2050
    require mem[_371 + _554 + 800] == mem[_371 + _554 + 812 len 20]
    mem[_555 + 800] = mem[_371 + _554 + 800]
    require mem[_371 + _554 + 832] == mem[_371 + _554 + 844 len 20]
    mem[_555 + 832] = mem[_371 + _554 + 832]
    require mem[_371 + _554 + 864] == mem[_371 + _554 + 876 len 20]
    mem[_555 + 864] = mem[_371 + _554 + 864]
    _2598 = mem[_371 + 64]
    require mem[_371 + 64] <= test266151307()
    require _371 + mem[_371 + 64] + 31 < _371 + return_data.size
    _2599 = mem[_371 + mem[_371 + 64]]
    if mem[_371 + mem[_371 + 64]] > test266151307():
        revert with 0, 65
    _2600 = mem[64]
    if mem[64] + ceil32(32 * mem[_371 + mem[_371 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_371 + mem[_371 + 64]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[_371 + mem[_371 + 64]]) + 1
    mem[_2600] = _2599
    require return_data.size >= _2598 + (352 * _2599) + 32
    idx = 0
    s = _371 + _2598 + 32
    t = _2600 + 32
    while idx < _2599:
        require _371 + return_data.size - s >= 352
        _3274 = mem[64]
        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 352
        require mem[s] == mem[s + 12 len 20]
        mem[_3274] = mem[s]
        mem[_3274 + 32] = mem[s + 32]
        mem[_3274 + 64] = mem[s + 64]
        mem[_3274 + 96] = mem[s + 96]
        mem[_3274 + 128] = mem[s + 128]
        mem[_3274 + 160] = mem[s + 160]
        mem[_3274 + 192] = mem[s + 192]
        mem[_3274 + 224] = mem[s + 224]
        mem[_3274 + 256] = mem[s + 256]
        mem[_3274 + 288] = mem[s + 288]
        mem[_3274 + 320] = mem[s + 320]
        mem[t] = _3274
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    _3273 = mem[64]
    mem[mem[64]] = 0x3263544300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _3275 = mem[_371 + ceil32(return_data.size)]
    mem[mem[64] + 36] = 512
    _3276 = mem[_3275]
    mem[mem[64] + 548] = mem[_3275]
    idx = 0
    s = _3275 + 32
    t = mem[64] + 580
    while idx < _3276:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_3273 + 68] = mem[_371 + ceil32(return_data.size) + 32]
    mem[_3273 + 100] = mem[_371 + ceil32(return_data.size) + 64]
    mem[_3273 + 132] = mem[_371 + ceil32(return_data.size) + 96]
    mem[_3273 + 164] = mem[_371 + ceil32(return_data.size) + 128]
    mem[_3273 + 196] = mem[_371 + ceil32(return_data.size) + 160]
    mem[_3273 + 228] = mem[_371 + ceil32(return_data.size) + 192]
    mem[_3273 + 260] = mem[_371 + ceil32(return_data.size) + 224]
    mem[_3273 + 292] = mem[_371 + ceil32(return_data.size) + 256]
    mem[_3273 + 324] = mem[_371 + ceil32(return_data.size) + 300 len 20]
    mem[_3273 + 356] = mem[_371 + ceil32(return_data.size) + 332 len 20]
    mem[_3273 + 388] = mem[_371 + ceil32(return_data.size) + 364 len 20]
    mem[_3273 + 420] = mem[_371 + ceil32(return_data.size) + 396 len 20]
    mem[_3273 + 452] = bool(mem[_371 + ceil32(return_data.size) + 416])
    _4112 = mem[_371 + ceil32(return_data.size) + 448]
    mem[_3273 + 484] = (32 * _3276) + 544
    mem[_3273 + (32 * _3276) + 580] = mem[_4112]
    mem[_3273 + (32 * _3276) + 612] = mem[_4112 + 32]
    mem[_3273 + (32 * _3276) + 644] = mem[_4112 + 64]
    mem[_3273 + (32 * _3276) + 676] = mem[_4112 + 96]
    mem[_3273 + (32 * _3276) + 708] = mem[_4112 + 128]
    mem[_3273 + (32 * _3276) + 740] = mem[_4112 + 160]
    mem[_3273 + (32 * _3276) + 772] = mem[_4112 + 192]
    mem[_3273 + (32 * _3276) + 804] = mem[_4112 + 224]
    mem[_3273 + (32 * _3276) + 836] = mem[_4112 + 256]
    mem[_3273 + (32 * _3276) + 868] = bool(mem[_4112 + 288])
    mem[_3273 + (32 * _3276) + 900] = bool(mem[_4112 + 320])
    _4124 = mem[_4112 + 352]
    mem[_3273 + (32 * _3276) + 932] = 384
    _4125 = mem[_4124]
    mem[_3273 + (32 * _3276) + 964] = mem[_4124]
    mem[_3273 + (32 * _3276) + 996 len 32 * _4125] = mem[_4124 + 32 len 32 * _4125]
    mem[_3273 + 516] = mem[_371 + ceil32(return_data.size) + 480]
    require ext_code.size(0x153918dfdc4f636cd10e31b17ad49bee837abdeb)
    delegate 0x153918dfdc4f636cd10e31b17ad49bee837abdeb.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _3273 + (32 * _3276) + (32 * _4125) + -mem[64] + 992]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _4915 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4916 = mem[_4915]
    require mem[_4915] <= test266151307()
    require return_data.size - mem[_4915] >= 512
    if not bool(_4915 + ceil32(return_data.size) + 512 <= test266151307()):
        revert with 0, 65
    mem[64] = _4915 + ceil32(return_data.size) + 512
    require mem[_4915 + _4916] <= test266151307()
    require _4915 + _4916 + mem[_4915 + _4916] + 31 < _4915 + return_data.size
    if mem[_4915 + _4916 + mem[_4915 + _4916]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_4915 + _4916 + mem[_4915 + _4916]]) + 513 < 512 or _4915 + ceil32(return_data.size) + ceil32(32 * mem[_4915 + _4916 + mem[_4915 + _4916]]) + 513 > test266151307():
        revert with 0, 65
    require _4916 + mem[_4915 + _4916] + (32 * mem[_4915 + _4916 + mem[_4915 + _4916]]) + 32 <= return_data.size
    # nil
}



}
