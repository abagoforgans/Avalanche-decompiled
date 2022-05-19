contract main {




// =====================  Runtime code  =====================


#
#  - sub_0a140609(?)
#  - withdraw(uint256 arg1, address[] arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address sub_55e49977Address; offset 16
address sub_d3a20268Address;
address sub_eb21ea27Address;
address sub_3e72a62bAddress;
address sub_dce8ab82Address;
mapping of uint8 stor5;
mapping of uint256 tokenBalances;
array of struct stor7;
array of struct stor8;
mapping of uint256 sub_5d3f3821;
mapping of uint256 sub_b11fa9ee;
mapping of address sub_a578cf64;
mapping of uint8 stor12;
uint256 sub_61294966;
array of address sub_cdb77de5;
array of uint256 sub_82233c99;
address pangolinRouterAddress;
address sub_3a144e2dAddress;

function sub_0efc3d08(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_12e74cea(?) {
    return pangolinRouterAddress
}

function sub_2faff427(?) {
    return sub_3a144e2dAddress
}

function sub_3a144e2d(?) {
    return sub_3a144e2dAddress
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

function pangolinRouter() {
    return pangolinRouterAddress
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
    return sub_cdb77de5.length
}

function sub_704a939e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sub_82233c99(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_82233c99.length
    return sub_82233c99[arg1]
}

function sub_a578cf64(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a578cf64[arg1]
}

function getFactoryAddress() {
    return sub_eb21ea27Address
}

function sub_b11fa9ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b11fa9ee[arg1]
}

function sub_c51077c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return tokenBalances[address(arg1)]
}

function sub_cdb77de5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_cdb77de5.length
    return sub_cdb77de5[arg1]
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

function _fallback() payable {
    revert
}

function sub_7c7dc252(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == sub_eb21ea27Address
    sub_5d3f3821[address(arg1)] = 0
    stor5[address(arg1)] = 1
}

function sub_66add104(?) {
    require ext_code.size(sub_eb21ea27Address)
    staticcall sub_eb21ea27Address.0x9007c39b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7e0084a1(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_eb21ea27Address)
    staticcall sub_eb21ea27Address.0xd7b74771 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_c1ac6685(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_5d3f3821[address(arg1)]:
        return 0
    require ext_code.size(0xc31040ffb9a19f72e7067cf69c90c8537296c68d)
    delegate 0xc31040ffb9a19f72e7067cf69c90c8537296c68d.0x4d8e8a05 with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_5d3f3821[address(arg1)] and 100 * 10^6 > -1 / sub_5d3f3821[address(arg1)]:
        revert with 0, 17
    if not sub_61294966:
        revert with 0, 18
    if delegate.return_data[0] and 100 * 10^6 * sub_5d3f3821[address(arg1)] / sub_61294966 > -1 / delegate.return_data[0]:
        revert with 0, 17
    return (delegate.return_data[0] * 100 * 10^6 * sub_5d3f3821[address(arg1)] / sub_61294966 / 100 * 10^6)
}

function walletName() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[ceil32(uint255(stor7.length) * 0.5) + (uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function sub_3cc1a04b(?) {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
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
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if ('cd', 100).length:
            stor7[].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
        else:
            stor7.length = 0
            idx = 0
            while (uint255(stor7.length) * 0.5) + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if ('cd', 100).length:
            stor7[].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if ('cd', 132).length:
            stor8[].field_0 = Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
        else:
            stor8.length = 0
            idx = 0
            while (uint255(stor8.length) * 0.5) + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if ('cd', 132).length:
            stor8[].field_0 = Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    idx = 0
    while idx < ('cd', 196).length:
        if idx >= ('cd', 164).length:
            revert with 0, 50
        if idx >= ('cd', 196).length:
            revert with 0, 50
        sub_a578cf64[mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]] = mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + 142 len 20]
        if idx >= ('cd', 196).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + ceil32(ceil32(('cd', 100).length)) + ceil32(ceil32(('cd', 132).length)) + ceil32(32 * ('cd', 164).length) + 143 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_61294966 = 0
    sub_5d3f3821[address(cd[4])] = 0
    sub_3a144e2dAddress = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    pangolinRouterAddress = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getInfo() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 >= uint255(stor7.length) * 0.5:
                    mem[128] = 256 * stor7.length.field_8
                else:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 >= stor7.length.field_1:
                    mem[128] = 256 * stor7.length.field_8
                else:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor8.length):
                if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor8.length):
                    if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                        mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor7.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
                else:
                    if 31 >= uint255(stor8.length) * 0.5:
                        mem[ceil32(uint255(stor7.length) * 0.5) + 160] = 256 * stor8.length.field_8
                    else:
                        mem[ceil32(uint255(stor7.length) * 0.5) + 160] = uint256(stor8.field_0)
                        idx = ceil32(uint255(stor7.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor7.length) * 0.5) + (uint255(stor8.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                        mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor7.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
            else:
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if not stor8.length.field_1:
                    if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                        mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor7.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
                else:
                    if 31 >= stor8.length.field_1:
                        mem[ceil32(uint255(stor7.length) * 0.5) + 160] = 256 * stor8.length.field_8
                    else:
                        mem[ceil32(uint255(stor7.length) * 0.5) + 160] = uint256(stor8.field_0)
                        idx = ceil32(uint255(stor7.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor7.length) * 0.5) + stor8.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor8[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                        mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor7.length) * 0.5) + 288] = 0
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
            return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], 2 * Mask(256, -1, stor8.length), mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(uint255(stor8.length) * 0.5)]), 
                   ceil32(uint255(stor7.length) * 0.5) + 128,
                   sub_55e49977Address
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8.length):
                if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(stor8.length.field_1) + (uint255(stor7.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
            else:
                if 31 >= uint255(stor8.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + 160] = 256 * stor8.length.field_8
                else:
                    mem[ceil32(uint255(stor7.length) * 0.5) + 160] = uint256(stor8.field_0)
                    idx = ceil32(uint255(stor7.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor7.length) * 0.5) + (uint255(stor8.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(stor8.length.field_1) + (uint255(stor7.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not stor8.length.field_1:
                if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(stor8.length.field_1) + (uint255(stor7.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
            else:
                if 31 >= stor8.length.field_1:
                    mem[ceil32(uint255(stor7.length) * 0.5) + 160] = 256 * stor8.length.field_8
                else:
                    mem[ceil32(uint255(stor7.length) * 0.5) + 160] = uint256(stor8.field_0)
                    idx = ceil32(uint255(stor7.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor7.length) * 0.5) + stor8.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
                    mem[ceil32(uint255(stor7.length) * 0.5) + ceil32(stor8.length.field_1) + (uint255(stor7.length) * 0.5) + 288] = 0
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
                mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], stor8.length % 128, mem[ceil32(uint255(stor7.length) * 0.5) + 160 len ceil32(stor8.length.field_1)]), 
               ceil32(uint255(stor7.length) * 0.5) + 128,
               sub_55e49977Address
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 >= uint255(stor7.length) * 0.5:
                mem[128] = 256 * stor7.length.field_8
            else:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 >= stor7.length.field_1:
                mem[128] = 256 * stor7.length.field_8
            else:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8.length):
                if ceil32(stor7.length.field_1) > stor7.length.field_1:
                    mem[ceil32(stor7.length.field_1) + ceil32(uint255(stor8.length) * 0.5) + stor7.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
            else:
                if 31 >= uint255(stor8.length) * 0.5:
                    mem[ceil32(stor7.length.field_1) + 160] = 256 * stor8.length.field_8
                else:
                    mem[ceil32(stor7.length.field_1) + 160] = uint256(stor8.field_0)
                    idx = ceil32(stor7.length.field_1) + 160
                    s = 0
                    while ceil32(stor7.length.field_1) + (uint255(stor8.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor7.length.field_1) > stor7.length.field_1:
                    mem[ceil32(stor7.length.field_1) + ceil32(uint255(stor8.length) * 0.5) + stor7.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not stor8.length.field_1:
                if ceil32(stor7.length.field_1) > stor7.length.field_1:
                    mem[ceil32(stor7.length.field_1) + ceil32(uint255(stor8.length) * 0.5) + stor7.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
            else:
                if 31 >= stor8.length.field_1:
                    mem[ceil32(stor7.length.field_1) + 160] = 256 * stor8.length.field_8
                else:
                    mem[ceil32(stor7.length.field_1) + 160] = uint256(stor8.field_0)
                    idx = ceil32(stor7.length.field_1) + 160
                    s = 0
                    while ceil32(stor7.length.field_1) + stor8.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor7.length.field_1) > stor7.length.field_1:
                    mem[ceil32(stor7.length.field_1) + ceil32(uint255(stor8.length) * 0.5) + stor7.length.field_1 + 288] = 0
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 288] = uint255(stor8.length) * 0.5
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + 320 len ceil32(uint255(stor8.length) * 0.5)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(uint255(stor8.length) * 0.5)]
                if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                    mem[(2 * ceil32(stor7.length.field_1)) + ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 320] = 0
        return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], 2 * Mask(256, -1, stor8.length), mem[ceil32(stor7.length.field_1) + 160 len ceil32(uint255(stor8.length) * 0.5)]), 
               ceil32(stor7.length.field_1) + 128,
               sub_55e49977Address
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor8.length):
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + ceil32(stor8.length.field_1) + stor7.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
        else:
            if 31 >= uint255(stor8.length) * 0.5:
                mem[ceil32(stor7.length.field_1) + 160] = 256 * stor8.length.field_8
            else:
                mem[ceil32(stor7.length.field_1) + 160] = uint256(stor8.field_0)
                idx = ceil32(stor7.length.field_1) + 160
                s = 0
                while ceil32(stor7.length.field_1) + (uint255(stor8.length) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + ceil32(stor8.length.field_1) + stor7.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not stor8.length.field_1:
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + ceil32(stor8.length.field_1) + stor7.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
        else:
            if 31 >= stor8.length.field_1:
                mem[ceil32(stor7.length.field_1) + 160] = 256 * stor8.length.field_8
            else:
                mem[ceil32(stor7.length.field_1) + 160] = uint256(stor8.field_0)
                idx = ceil32(stor7.length.field_1) + 160
                s = 0
                while ceil32(stor7.length.field_1) + stor8.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor7.length.field_1) > stor7.length.field_1:
                mem[ceil32(stor7.length.field_1) + ceil32(stor8.length.field_1) + stor7.length.field_1 + 288] = 0
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 288] = stor8.length.field_1
            mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + 320 len ceil32(stor8.length.field_1)] = mem[ceil32(stor7.length.field_1) + 160 len ceil32(stor8.length.field_1)]
            if ceil32(stor8.length.field_1) > stor8.length.field_1:
                mem[(2 * ceil32(stor7.length.field_1)) + ceil32(stor8.length.field_1) + stor8.length.field_1 + 320] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], stor8.length % 128, mem[ceil32(stor7.length.field_1) + 160 len ceil32(stor8.length.field_1)]), 
           ceil32(stor7.length.field_1) + 128,
           sub_55e49977Address
}

function sub_d2ce52d2(?) payable {
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
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1922
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
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1794] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1826] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1858] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1890] = 0
    if msg.value:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1922] = 0x47b2370400000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1926] = 64
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1990] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1958] = (32 * ('cd', 4).length) + 96
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2022] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2054 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]]
        require ext_code.size(0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5)
        delegate 0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * mem[ceil32(32 * ('cd', 4).length) + 97]) + -mem[64] + 2050]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _738 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _740 = mem[_738]
        require mem[_738] <= test266151307()
        require _738 + mem[_738] + 31 < _738 + return_data.size
        _741 = mem[_738 + mem[_738]]
        if mem[_738 + mem[_738]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_738 + mem[_738]]) + 1 < 0 or _738 + ceil32(return_data.size) + ceil32(32 * mem[_738 + mem[_738]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _738 + ceil32(return_data.size) + ceil32(32 * mem[_738 + mem[_738]]) + 1
        mem[_738 + ceil32(return_data.size)] = _741
        require _740 + (32 * _741) + 32 <= return_data.size
        idx = 0
        s = _738 + _740 + 32
        t = _738 + ceil32(return_data.size) + 32
        while idx < _741:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _930 = mem[_738 + 32]
        require mem[_738 + 32] <= test266151307()
        require _738 + mem[_738 + 32] + 31 < _738 + return_data.size
        _932 = mem[_738 + mem[_738 + 32]]
        if mem[_738 + mem[_738 + 32]] > test266151307():
            revert with 0, 65
        _934 = mem[64]
        if mem[64] + ceil32(32 * mem[_738 + mem[_738 + 32]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_738 + mem[_738 + 32]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_738 + mem[_738 + 32]]) + 1
        mem[_934] = _932
        require _930 + (32 * _932) + 32 <= return_data.size
        mem[_934 + 32 len 32 * _932] = mem[_738 + _930 + 32 len 32 * _932]
        mem[mem[64]] = 0x20f7a38e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 160
        mem[mem[64] + 164] = _741
        idx = 0
        s = _738 + ceil32(return_data.size) + 32
        t = mem[64] + 196
        while idx < _741:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = (32 * _741) + 192
        _1317 = mem[_934]
        mem[mem[64] + (32 * _741) + 196] = mem[_934]
        mem[mem[64] + (32 * _741) + 228 len 32 * _1317] = mem[_934 + 32 len 32 * _1317]
        mem[mem[64] + 68] = cd[68]
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = msg.sender
        require ext_code.size(0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5)
        delegate 0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5.0x20f7a38e with:
             gas gas_remaining wei
            args Array(len=_741, data=mem[mem[64] + 196 len (32 * _741) + (32 * _1317) + 32]), (32 * _741) + 192, cd[68], address(this.address), msg.sender
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _1512 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _1513 = mem[_1512]
        require mem[_1512] <= test266151307()
        require return_data.size - mem[_1512] >= 512
        if not bool(_1512 + ceil32(return_data.size) + 512 <= test266151307()):
            revert with 0, 65
        mem[64] = _1512 + ceil32(return_data.size) + 512
        _1516 = mem[_1512 + _1513]
        require mem[_1512 + _1513] <= test266151307()
        require _1512 + _1513 + mem[_1512 + _1513] + 31 < _1512 + return_data.size
        _1519 = mem[_1512 + _1513 + mem[_1512 + _1513]]
        if mem[_1512 + _1513 + mem[_1512 + _1513]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_1512 + _1513 + mem[_1512 + _1513]]) + 513 < 512 or _1512 + ceil32(return_data.size) + ceil32(32 * mem[_1512 + _1513 + mem[_1512 + _1513]]) + 513 > test266151307():
            revert with 0, 65
        mem[64] = _1512 + ceil32(return_data.size) + ceil32(32 * mem[_1512 + _1513 + mem[_1512 + _1513]]) + 513
        mem[_1512 + ceil32(return_data.size) + 512] = _1519
        require _1513 + _1516 + (32 * _1519) + 32 <= return_data.size
        idx = 0
        s = _1512 + _1513 + _1516 + 32
        t = _1512 + ceil32(return_data.size) + 544
        while idx < _1519:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1512 + ceil32(return_data.size)] = _1512 + ceil32(return_data.size) + 512
        mem[_1512 + ceil32(return_data.size) + 32] = mem[_1512 + _1513 + 32]
        mem[_1512 + ceil32(return_data.size) + 64] = mem[_1512 + _1513 + 64]
        mem[_1512 + ceil32(return_data.size) + 96] = mem[_1512 + _1513 + 96]
        mem[_1512 + ceil32(return_data.size) + 128] = mem[_1512 + _1513 + 128]
        mem[_1512 + ceil32(return_data.size) + 160] = mem[_1512 + _1513 + 160]
        mem[_1512 + ceil32(return_data.size) + 192] = mem[_1512 + _1513 + 192]
        mem[_1512 + ceil32(return_data.size) + 224] = mem[_1512 + _1513 + 224]
        mem[_1512 + ceil32(return_data.size) + 256] = mem[_1512 + _1513 + 256]
        require mem[_1512 + _1513 + 288] == mem[_1512 + _1513 + 300 len 20]
        mem[_1512 + ceil32(return_data.size) + 288] = mem[_1512 + _1513 + 288]
        require mem[_1512 + _1513 + 320] == mem[_1512 + _1513 + 332 len 20]
        mem[_1512 + ceil32(return_data.size) + 320] = mem[_1512 + _1513 + 320]
        require mem[_1512 + _1513 + 352] == mem[_1512 + _1513 + 364 len 20]
        mem[_1512 + ceil32(return_data.size) + 352] = mem[_1512 + _1513 + 352]
        require mem[_1512 + _1513 + 384] == mem[_1512 + _1513 + 396 len 20]
        mem[_1512 + ceil32(return_data.size) + 384] = mem[_1512 + _1513 + 384]
        require mem[_1512 + _1513 + 416] == bool(mem[_1512 + _1513 + 416])
        mem[_1512 + ceil32(return_data.size) + 416] = mem[_1512 + _1513 + 416]
        _1729 = mem[_1512 + _1513 + 448]
        require mem[_1512 + _1513 + 448] <= test266151307()
        require return_data.size - _1513 - mem[_1512 + _1513 + 448] >= 384
        _1732 = mem[64]
        if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 384
        mem[_1732] = mem[_1512 + _1513 + mem[_1512 + _1513 + 448]]
        mem[_1732 + 32] = mem[_1512 + _1513 + _1729 + 32]
        mem[_1732 + 64] = mem[_1512 + _1513 + _1729 + 64]
        mem[_1732 + 96] = mem[_1512 + _1513 + _1729 + 96]
        mem[_1732 + 128] = mem[_1512 + _1513 + _1729 + 128]
        mem[_1732 + 160] = mem[_1512 + _1513 + _1729 + 160]
        mem[_1732 + 192] = mem[_1512 + _1513 + _1729 + 192]
        mem[_1732 + 224] = mem[_1512 + _1513 + _1729 + 224]
        mem[_1732 + 256] = mem[_1512 + _1513 + _1729 + 256]
        require mem[_1512 + _1513 + _1729 + 288] == bool(mem[_1512 + _1513 + _1729 + 288])
        mem[_1732 + 288] = mem[_1512 + _1513 + _1729 + 288]
        require mem[_1512 + _1513 + _1729 + 320] == bool(mem[_1512 + _1513 + _1729 + 320])
        mem[_1732 + 320] = mem[_1512 + _1513 + _1729 + 320]
        _1746 = mem[_1512 + _1513 + _1729 + 352]
        require mem[_1512 + _1513 + _1729 + 352] <= test266151307()
        require _1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352] + 31 < _1512 + return_data.size
        _1748 = mem[_1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352]]
        if mem[_1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352]] > test266151307():
            revert with 0, 65
        _1751 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1513 + _1729 + mem[_1512 + _1513 + _1729 + 352]]) + 1
        mem[_1751] = _1748
        require _1513 + _1729 + _1746 + (32 * _1748) + 32 <= return_data.size
        mem[_1751 + 32 len 32 * _1748] = mem[_1512 + _1513 + _1729 + _1746 + 32 len 32 * _1748]
        mem[_1732 + 352] = _1751
        mem[_1512 + ceil32(return_data.size) + 448] = _1732
        mem[_1512 + ceil32(return_data.size) + 480] = mem[_1512 + _1513 + 480]
        _1910 = mem[_1512 + 32]
        require mem[_1512 + 32] <= test266151307()
        require return_data.size - mem[_1512 + 32] >= 928
        _1912 = mem[64]
        if mem[64] + 928 < mem[64] or mem[64] + 928 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 928
        require mem[_1512 + _1910] == bool(mem[_1512 + _1910])
        mem[_1912] = mem[_1512 + _1910]
        mem[_1912 + 32] = mem[_1512 + _1910 + 32]
        mem[_1912 + 64] = mem[_1512 + _1910 + 64]
        mem[_1912 + 96] = mem[_1512 + _1910 + 96]
        mem[_1912 + 128] = mem[_1512 + _1910 + 128]
        mem[_1912 + 160] = mem[_1512 + _1910 + 160]
        mem[_1912 + 192] = mem[_1512 + _1910 + 192]
        mem[_1912 + 224] = mem[_1512 + _1910 + 224]
        mem[_1912 + 256] = mem[_1512 + _1910 + 256]
        mem[_1912 + 288] = mem[_1512 + _1910 + 288]
        mem[_1912 + 320] = mem[_1512 + _1910 + 320]
        mem[_1912 + 352] = mem[_1512 + _1910 + 352]
        mem[_1912 + 384] = mem[_1512 + _1910 + 384]
        mem[_1912 + 416] = mem[_1512 + _1910 + 416]
        mem[_1912 + 448] = mem[_1512 + _1910 + 448]
        _1929 = mem[_1512 + _1910 + 480]
        require mem[_1512 + _1910 + 480] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 480] + 31 < _1512 + return_data.size
        _1932 = mem[_1512 + _1910 + mem[_1512 + _1910 + 480]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 480]] > test266151307():
            revert with 0, 65
        _1934 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 480]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 480]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 480]]) + 1
        mem[_1934] = _1932
        require _1910 + _1929 + (32 * _1932) + 32 <= return_data.size
        mem[_1934 + 32 len 32 * _1932] = mem[_1512 + _1910 + _1929 + 32 len 32 * _1932]
        mem[_1912 + 480] = _1934
        _2139 = mem[_1512 + _1910 + 512]
        require mem[_1512 + _1910 + 512] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 512] + 31 < _1512 + return_data.size
        _2141 = mem[_1512 + _1910 + mem[_1512 + _1910 + 512]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 512]] > test266151307():
            revert with 0, 65
        _2143 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 512]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 512]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 512]]) + 1
        mem[_2143] = _2141
        require _1910 + _2139 + (32 * _2141) + 32 <= return_data.size
        mem[_2143 + 32 len 32 * _2141] = mem[_1512 + _1910 + _2139 + 32 len 32 * _2141]
        mem[_1912 + 512] = _2143
        _2355 = mem[_1512 + _1910 + 544]
        require mem[_1512 + _1910 + 544] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 544] + 31 < _1512 + return_data.size
        _2357 = mem[_1512 + _1910 + mem[_1512 + _1910 + 544]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 544]] > test266151307():
            revert with 0, 65
        _2359 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 544]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 544]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 544]]) + 1
        mem[_2359] = _2357
        require _1910 + _2355 + (32 * _2357) + 32 <= return_data.size
        mem[_2359 + 32 len 32 * _2357] = mem[_1512 + _1910 + _2355 + 32 len 32 * _2357]
        mem[_1912 + 544] = _2359
        _2596 = mem[_1512 + _1910 + 576]
        require mem[_1512 + _1910 + 576] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 576] + 31 < _1512 + return_data.size
        _2598 = mem[_1512 + _1910 + mem[_1512 + _1910 + 576]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 576]] > test266151307():
            revert with 0, 65
        _2600 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 576]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 576]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 576]]) + 1
        mem[_2600] = _2598
        require _1910 + _2596 + (32 * _2598) + 32 <= return_data.size
        mem[_2600 + 32 len 32 * _2598] = mem[_1512 + _1910 + _2596 + 32 len 32 * _2598]
        mem[_1912 + 576] = _2600
        _2955 = mem[_1512 + _1910 + 608]
        require mem[_1512 + _1910 + 608] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 608] + 31 < _1512 + return_data.size
        _2957 = mem[_1512 + _1910 + mem[_1512 + _1910 + 608]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 608]] > test266151307():
            revert with 0, 65
        _2959 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 608]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 608]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 608]]) + 1
        mem[_2959] = _2957
        require _1910 + _2955 + (32 * _2957) + 32 <= return_data.size
        mem[_2959 + 32 len 32 * _2957] = mem[_1512 + _1910 + _2955 + 32 len 32 * _2957]
        mem[_1912 + 608] = _2959
        _3424 = mem[_1512 + _1910 + 640]
        require mem[_1512 + _1910 + 640] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 640] + 31 < _1512 + return_data.size
        _3426 = mem[_1512 + _1910 + mem[_1512 + _1910 + 640]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 640]] > test266151307():
            revert with 0, 65
        _3428 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 640]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 640]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 640]]) + 1
        mem[_3428] = _3426
        require _1910 + _3424 + (32 * _3426) + 32 <= return_data.size
        idx = 0
        s = _1512 + _1910 + _3424 + 32
        t = _3428 + 32
        while idx < _3426:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1912 + 640] = _3428
        _4023 = mem[_1512 + _1910 + 672]
        require mem[_1512 + _1910 + 672] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 672] + 31 < _1512 + return_data.size
        _4025 = mem[_1512 + _1910 + mem[_1512 + _1910 + 672]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 672]] > test266151307():
            revert with 0, 65
        _4027 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 672]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 672]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 672]]) + 1
        mem[_4027] = _4025
        require _1910 + _4023 + (32 * _4025) + 32 <= return_data.size
        idx = 0
        s = _1512 + _1910 + _4023 + 32
        t = _4027 + 32
        while idx < _4025:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1912 + 672] = _4027
        _4742 = mem[_1512 + _1910 + 704]
        require mem[_1512 + _1910 + 704] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 704] + 31 < _1512 + return_data.size
        _4744 = mem[_1512 + _1910 + mem[_1512 + _1910 + 704]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 704]] > test266151307():
            revert with 0, 65
        _4746 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 704]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 704]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 704]]) + 1
        mem[_4746] = _4744
        require _1910 + _4742 + (32 * _4744) + 32 <= return_data.size
        idx = 0
        s = _1512 + _1910 + _4742 + 32
        t = _4746 + 32
        while idx < _4744:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1912 + 704] = _4746
        _5651 = mem[_1512 + _1910 + 736]
        require mem[_1512 + _1910 + 736] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 736] + 31 < _1512 + return_data.size
        _5655 = mem[_1512 + _1910 + mem[_1512 + _1910 + 736]]
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 736]] > test266151307():
            revert with 0, 65
        _5668 = mem[64]
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 736]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 736]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 736]]) + 1
        mem[_5668] = _5655
        require _1910 + _5651 + (32 * _5655) + 32 <= return_data.size
        idx = 0
        s = _1512 + _1910 + _5651 + 32
        t = _5668 + 32
        while idx < _5655:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1912 + 736] = _5668
        require mem[_1512 + _1910 + 768] <= test266151307()
        require _1512 + _1910 + mem[_1512 + _1910 + 768] + 31 < _1512 + return_data.size
        if mem[_1512 + _1910 + mem[_1512 + _1910 + 768]] > test266151307():
            revert with 0, 65
        if mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 768]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 768]]) + 1 > test266151307():
            revert with 0, 65
        require _1910 + mem[_1512 + _1910 + 768] + (32 * mem[_1512 + _1910 + mem[_1512 + _1910 + 768]]) + 32 <= return_data.size
        # nil
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1922] = 0x20f7a38e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1926] = 160
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 2086] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1958] = (32 * ('cd', 4).length) + 192
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2118] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 2150 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 1990] = cd[68]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 2022] = this.address
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 2054] = msg.sender
        require ext_code.size(0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5)
        delegate 0x8f08620d62e80d48b2c836fdaa1bb6125f4733c5.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * mem[ceil32(32 * ('cd', 4).length) + 97]) + -mem[64] + 2146]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _737 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _739 = mem[_737]
        require mem[_737] <= test266151307()
        require return_data.size - mem[_737] >= 512
        if not bool(_737 + ceil32(return_data.size) + 512 <= test266151307()):
            revert with 0, 65
        mem[64] = _737 + ceil32(return_data.size) + 512
        _743 = mem[_737 + _739]
        require mem[_737 + _739] <= test266151307()
        require _737 + _739 + mem[_737 + _739] + 31 < _737 + return_data.size
        _745 = mem[_737 + _739 + mem[_737 + _739]]
        if mem[_737 + _739 + mem[_737 + _739]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_737 + _739 + mem[_737 + _739]]) + 513 < 512 or _737 + ceil32(return_data.size) + ceil32(32 * mem[_737 + _739 + mem[_737 + _739]]) + 513 > test266151307():
            revert with 0, 65
        mem[64] = _737 + ceil32(return_data.size) + ceil32(32 * mem[_737 + _739 + mem[_737 + _739]]) + 513
        mem[_737 + ceil32(return_data.size) + 512] = _745
        require _739 + _743 + (32 * _745) + 32 <= return_data.size
        idx = 0
        s = _737 + _739 + _743 + 32
        t = _737 + ceil32(return_data.size) + 544
        while idx < _745:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_737 + ceil32(return_data.size)] = _737 + ceil32(return_data.size) + 512
        mem[_737 + ceil32(return_data.size) + 32] = mem[_737 + _739 + 32]
        mem[_737 + ceil32(return_data.size) + 64] = mem[_737 + _739 + 64]
        mem[_737 + ceil32(return_data.size) + 96] = mem[_737 + _739 + 96]
        mem[_737 + ceil32(return_data.size) + 128] = mem[_737 + _739 + 128]
        mem[_737 + ceil32(return_data.size) + 160] = mem[_737 + _739 + 160]
        mem[_737 + ceil32(return_data.size) + 192] = mem[_737 + _739 + 192]
        mem[_737 + ceil32(return_data.size) + 224] = mem[_737 + _739 + 224]
        mem[_737 + ceil32(return_data.size) + 256] = mem[_737 + _739 + 256]
        require mem[_737 + _739 + 288] == mem[_737 + _739 + 300 len 20]
        mem[_737 + ceil32(return_data.size) + 288] = mem[_737 + _739 + 288]
        require mem[_737 + _739 + 320] == mem[_737 + _739 + 332 len 20]
        mem[_737 + ceil32(return_data.size) + 320] = mem[_737 + _739 + 320]
        require mem[_737 + _739 + 352] == mem[_737 + _739 + 364 len 20]
        mem[_737 + ceil32(return_data.size) + 352] = mem[_737 + _739 + 352]
        require mem[_737 + _739 + 384] == mem[_737 + _739 + 396 len 20]
        mem[_737 + ceil32(return_data.size) + 384] = mem[_737 + _739 + 384]
        require mem[_737 + _739 + 416] == bool(mem[_737 + _739 + 416])
        mem[_737 + ceil32(return_data.size) + 416] = mem[_737 + _739 + 416]
        _943 = mem[_737 + _739 + 448]
        require mem[_737 + _739 + 448] <= test266151307()
        require return_data.size - _739 - mem[_737 + _739 + 448] >= 384
        _946 = mem[64]
        if mem[64] + 384 < mem[64] or mem[64] + 384 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 384
        mem[_946] = mem[_737 + _739 + mem[_737 + _739 + 448]]
        mem[_946 + 32] = mem[_737 + _739 + _943 + 32]
        mem[_946 + 64] = mem[_737 + _739 + _943 + 64]
        mem[_946 + 96] = mem[_737 + _739 + _943 + 96]
        mem[_946 + 128] = mem[_737 + _739 + _943 + 128]
        mem[_946 + 160] = mem[_737 + _739 + _943 + 160]
        mem[_946 + 192] = mem[_737 + _739 + _943 + 192]
        mem[_946 + 224] = mem[_737 + _739 + _943 + 224]
        mem[_946 + 256] = mem[_737 + _739 + _943 + 256]
        require mem[_737 + _739 + _943 + 288] == bool(mem[_737 + _739 + _943 + 288])
        mem[_946 + 288] = mem[_737 + _739 + _943 + 288]
        require mem[_737 + _739 + _943 + 320] == bool(mem[_737 + _739 + _943 + 320])
        mem[_946 + 320] = mem[_737 + _739 + _943 + 320]
        _961 = mem[_737 + _739 + _943 + 352]
        require mem[_737 + _739 + _943 + 352] <= test266151307()
        require _737 + _739 + _943 + mem[_737 + _739 + _943 + 352] + 31 < _737 + return_data.size
        _963 = mem[_737 + _739 + _943 + mem[_737 + _739 + _943 + 352]]
        if mem[_737 + _739 + _943 + mem[_737 + _739 + _943 + 352]] > test266151307():
            revert with 0, 65
        _965 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _739 + _943 + mem[_737 + _739 + _943 + 352]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _739 + _943 + mem[_737 + _739 + _943 + 352]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _739 + _943 + mem[_737 + _739 + _943 + 352]]) + 1
        mem[_965] = _963
        require _739 + _943 + _961 + (32 * _963) + 32 <= return_data.size
        mem[_965 + 32 len 32 * _963] = mem[_737 + _739 + _943 + _961 + 32 len 32 * _963]
        var123001 = _963
        var123002 = _737 + _739 + _943 + _961 + (32 * _963) + 32
        var123004 = _965 + (32 * _963) + 32
        mem[_946 + 352] = _965
        mem[_737 + ceil32(return_data.size) + 448] = _946
        mem[_737 + ceil32(return_data.size) + 480] = mem[_737 + _739 + 480]
        _1109 = mem[_737 + 32]
        require mem[_737 + 32] <= test266151307()
        require return_data.size - mem[_737 + 32] >= 928
        _1112 = mem[64]
        if mem[64] + 928 < mem[64] or mem[64] + 928 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 928
        require mem[_737 + _1109] == bool(mem[_737 + _1109])
        mem[_1112] = mem[_737 + _1109]
        mem[_1112 + 32] = mem[_737 + _1109 + 32]
        mem[_1112 + 64] = mem[_737 + _1109 + 64]
        mem[_1112 + 96] = mem[_737 + _1109 + 96]
        mem[_1112 + 128] = mem[_737 + _1109 + 128]
        mem[_1112 + 160] = mem[_737 + _1109 + 160]
        mem[_1112 + 192] = mem[_737 + _1109 + 192]
        mem[_1112 + 224] = mem[_737 + _1109 + 224]
        mem[_1112 + 256] = mem[_737 + _1109 + 256]
        mem[_1112 + 288] = mem[_737 + _1109 + 288]
        mem[_1112 + 320] = mem[_737 + _1109 + 320]
        mem[_1112 + 352] = mem[_737 + _1109 + 352]
        mem[_1112 + 384] = mem[_737 + _1109 + 384]
        mem[_1112 + 416] = mem[_737 + _1109 + 416]
        mem[_1112 + 448] = mem[_737 + _1109 + 448]
        _1131 = mem[_737 + _1109 + 480]
        require mem[_737 + _1109 + 480] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 480] + 31 < _737 + return_data.size
        _1133 = mem[_737 + _1109 + mem[_737 + _1109 + 480]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 480]] > test266151307():
            revert with 0, 65
        _1136 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 480]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 480]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 480]]) + 1
        mem[_1136] = _1133
        require _1109 + _1131 + (32 * _1133) + 32 <= return_data.size
        mem[_1136 + 32 len 32 * _1133] = mem[_737 + _1109 + _1131 + 32 len 32 * _1133]
        mem[_1112 + 480] = _1136
        _1316 = mem[_737 + _1109 + 512]
        require mem[_737 + _1109 + 512] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 512] + 31 < _737 + return_data.size
        _1318 = mem[_737 + _1109 + mem[_737 + _1109 + 512]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 512]] > test266151307():
            revert with 0, 65
        _1321 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 512]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 512]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 512]]) + 1
        mem[_1321] = _1318
        require _1109 + _1316 + (32 * _1318) + 32 <= return_data.size
        mem[_1321 + 32 len 32 * _1318] = mem[_737 + _1109 + _1316 + 32 len 32 * _1318]
        mem[_1112 + 512] = _1321
        _1509 = mem[_737 + _1109 + 544]
        require mem[_737 + _1109 + 544] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 544] + 31 < _737 + return_data.size
        _1511 = mem[_737 + _1109 + mem[_737 + _1109 + 544]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 544]] > test266151307():
            revert with 0, 65
        _1514 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 544]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 544]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 544]]) + 1
        mem[_1514] = _1511
        require _1109 + _1509 + (32 * _1511) + 32 <= return_data.size
        mem[_1514 + 32 len 32 * _1511] = mem[_737 + _1109 + _1509 + 32 len 32 * _1511]
        mem[_1112 + 544] = _1514
        _1709 = mem[_737 + _1109 + 576]
        require mem[_737 + _1109 + 576] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 576] + 31 < _737 + return_data.size
        _1719 = mem[_737 + _1109 + mem[_737 + _1109 + 576]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 576]] > test266151307():
            revert with 0, 65
        _1721 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 576]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 576]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 576]]) + 1
        mem[_1721] = _1719
        require _1109 + _1709 + (32 * _1719) + 32 <= return_data.size
        mem[_1721 + 32 len 32 * _1719] = mem[_737 + _1109 + _1709 + 32 len 32 * _1719]
        mem[_1112 + 576] = _1721
        _1908 = mem[_737 + _1109 + 608]
        require mem[_737 + _1109 + 608] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 608] + 31 < _737 + return_data.size
        _1911 = mem[_737 + _1109 + mem[_737 + _1109 + 608]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 608]] > test266151307():
            revert with 0, 65
        _1913 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 608]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 608]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 608]]) + 1
        mem[_1913] = _1911
        require _1109 + _1908 + (32 * _1911) + 32 <= return_data.size
        mem[_1913 + 32 len 32 * _1911] = mem[_737 + _1109 + _1908 + 32 len 32 * _1911]
        mem[_1112 + 608] = _1913
        _2138 = mem[_737 + _1109 + 640]
        require mem[_737 + _1109 + 640] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 640] + 31 < _737 + return_data.size
        _2140 = mem[_737 + _1109 + mem[_737 + _1109 + 640]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 640]] > test266151307():
            revert with 0, 65
        _2142 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 640]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 640]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 640]]) + 1
        mem[_2142] = _2140
        require _1109 + _2138 + (32 * _2140) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _2138 + 32
        t = _2142 + 32
        while idx < _2140:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 640] = _2142
        _2354 = mem[_737 + _1109 + 672]
        require mem[_737 + _1109 + 672] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 672] + 31 < _737 + return_data.size
        _2356 = mem[_737 + _1109 + mem[_737 + _1109 + 672]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 672]] > test266151307():
            revert with 0, 65
        _2358 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 672]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 672]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 672]]) + 1
        mem[_2358] = _2356
        require _1109 + _2354 + (32 * _2356) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _2354 + 32
        t = _2358 + 32
        while idx < _2356:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 672] = _2358
        _2595 = mem[_737 + _1109 + 704]
        require mem[_737 + _1109 + 704] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 704] + 31 < _737 + return_data.size
        _2597 = mem[_737 + _1109 + mem[_737 + _1109 + 704]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 704]] > test266151307():
            revert with 0, 65
        _2599 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 704]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 704]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 704]]) + 1
        mem[_2599] = _2597
        require _1109 + _2595 + (32 * _2597) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _2595 + 32
        t = _2599 + 32
        while idx < _2597:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 704] = _2599
        _2954 = mem[_737 + _1109 + 736]
        require mem[_737 + _1109 + 736] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 736] + 31 < _737 + return_data.size
        _2956 = mem[_737 + _1109 + mem[_737 + _1109 + 736]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 736]] > test266151307():
            revert with 0, 65
        _2958 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 736]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 736]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 736]]) + 1
        mem[_2958] = _2956
        require _1109 + _2954 + (32 * _2956) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _2954 + 32
        t = _2958 + 32
        while idx < _2956:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 736] = _2958
        _3423 = mem[_737 + _1109 + 768]
        require mem[_737 + _1109 + 768] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 768] + 31 < _737 + return_data.size
        _3425 = mem[_737 + _1109 + mem[_737 + _1109 + 768]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 768]] > test266151307():
            revert with 0, 65
        _3427 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 768]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 768]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 768]]) + 1
        mem[_3427] = _3425
        require _1109 + _3423 + (32 * _3425) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _3423 + 32
        t = _3427 + 32
        while idx < _3425:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 768] = _3427
        _4022 = mem[_737 + _1109 + 800]
        require mem[_737 + _1109 + 800] <= test266151307()
        require _737 + _1109 + mem[_737 + _1109 + 800] + 31 < _737 + return_data.size
        _4024 = mem[_737 + _1109 + mem[_737 + _1109 + 800]]
        if mem[_737 + _1109 + mem[_737 + _1109 + 800]] > test266151307():
            revert with 0, 65
        _4026 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 800]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 800]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + _1109 + mem[_737 + _1109 + 800]]) + 1
        mem[_4026] = _4024
        require _1109 + _4022 + (32 * _4024) + 32 <= return_data.size
        idx = 0
        s = _737 + _1109 + _4022 + 32
        t = _4026 + 32
        while idx < _4024:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1112 + 800] = _4026
        require mem[_737 + _1109 + 832] == mem[_737 + _1109 + 844 len 20]
        mem[_1112 + 832] = mem[_737 + _1109 + 832]
        require mem[_737 + _1109 + 864] == mem[_737 + _1109 + 876 len 20]
        mem[_1112 + 864] = mem[_737 + _1109 + 864]
        require mem[_737 + _1109 + 896] == mem[_737 + _1109 + 908 len 20]
        mem[_1112 + 896] = mem[_737 + _1109 + 896]
        _4750 = mem[_737 + 64]
        require mem[_737 + 64] <= test266151307()
        require _737 + mem[_737 + 64] + 31 < _737 + return_data.size
        _4752 = mem[_737 + mem[_737 + 64]]
        if mem[_737 + mem[_737 + 64]] > test266151307():
            revert with 0, 65
        _4754 = mem[64]
        if mem[64] + ceil32(32 * mem[_737 + mem[_737 + 64]]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[_737 + mem[_737 + 64]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[_737 + mem[_737 + 64]]) + 1
        mem[_4754] = _4752
        require return_data.size >= _4750 + (352 * _4752) + 32
        idx = 0
        s = _737 + _4750 + 32
        t = _4754 + 32
        while idx < _4752:
            require _737 + return_data.size - s >= 352
            _5653 = mem[64]
            if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 352
            require mem[s] == mem[s + 12 len 20]
            mem[_5653] = mem[s]
            mem[_5653 + 32] = mem[s + 32]
            mem[_5653 + 64] = mem[s + 64]
            mem[_5653 + 96] = mem[s + 96]
            mem[_5653 + 128] = mem[s + 128]
            mem[_5653 + 160] = mem[s + 160]
            mem[_5653 + 192] = mem[s + 192]
            mem[_5653 + 224] = mem[s + 224]
            mem[_5653 + 256] = mem[s + 256]
            mem[_5653 + 288] = mem[s + 288]
            mem[_5653 + 320] = mem[s + 320]
            mem[t] = _5653
            idx = idx + 1
            s = s + 352
            t = t + 32
            continue 
        mem[mem[64]] = 0x3263544300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5654 = mem[_737 + ceil32(return_data.size)]
        mem[mem[64] + 36] = 512
        _5656 = mem[_5654]
        mem[mem[64] + 548] = mem[_5654]
        idx = 0
        s = _5654 + 32
        t = mem[64] + 580
        while idx < _5656:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        # nil
}



}
