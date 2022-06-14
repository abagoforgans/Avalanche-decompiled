contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#  - swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5)
#  - _fallback()
#
const sub_10a0fea2(?) = 9996

const sub_f7050031(?) = 10000


address owner;
array of struct stor1;
uint256 sub_6568a40b;
address POOLAddress;
uint256 ID;
uint8 sub_210089be;
mapping of uint8 stor7;
mapping of uint8 sub_8bd12b29;

function sub_210089be(?) {
    return sub_210089be
}

function sub_6568a40b(?) {
    return sub_6568a40b
}

function POOL() {
    return POOLAddress
}

function sub_8bd12b29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8bd12b29[arg1]
}

function owner() {
    return owner
}

function sub_970b5488(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function ID() {
    return ID
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6568a40b = arg1
    emit 0xf43f23b7: arg1, this.address
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Adapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        return 0
    if arg2 == arg3:
        return 0
    if not stor7[address(arg2)]:
        return 0
    if not stor7[address(arg3)]:
        return 0
    staticcall POOLAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    if sub_210089be == sub_8bd12b29[address(arg2)]:
        if sub_210089be != sub_8bd12b29[address(arg3)]:
            if sub_210089be != sub_8bd12b29[address(arg2)]:
                return 0
            staticcall POOLAddress.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
                    gas gas_remaining wei
                   args arg1, sub_8bd12b29[address(arg3)]
        else:
            if sub_8bd12b29[address(arg2)] >= 3:
                revert with 'NH{q', 50
            staticcall POOLAddress.calculateTokenAmount(uint256[] arg1, bool arg2) with:
                    gas gas_remaining wei
                   args Array(len=3, data=call.data[calldata.size len 96]), 1
    else:
        if sub_210089be != sub_8bd12b29[address(arg3)]:
            staticcall POOLAddress.calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args sub_8bd12b29[address(arg2)], sub_8bd12b29[arg3], arg1
        else:
            if sub_210089be != sub_8bd12b29[address(arg3)]:
                if sub_210089be != sub_8bd12b29[address(arg2)]:
                    return 0
                staticcall POOLAddress.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
                        gas gas_remaining wei
                       args arg1, sub_8bd12b29[address(arg3)]
            else:
                if sub_8bd12b29[address(arg2)] >= 3:
                    revert with 'NH{q', 50
                staticcall POOLAddress.calculateTokenAmount(uint256[] arg1, bool arg2) with:
                        gas gas_remaining wei
                       args Array(len=3, data=call.data[calldata.size len 96]), 1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    if ext_call.return_data[0] and 9996 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (9996 * ext_call.return_data[0] / 10000)
}

function NAME() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
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
