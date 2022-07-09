contract main {




// =====================  Runtime code  =====================


const getBlockNumber = block.number

const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address controllerAddress; offset 16
mapping of uint256 stor50;
mapping of uint256 stor51;
uint256 stor52;
uint8 decimals;
array of struct stor54;
array of struct stor55;
address syntheticTokenAddress;
uint256 lastBlockAccrued;
uint256 sub_bb8c631f;

function decimals() payable {
    return decimals
}

function syntheticToken() payable {
    return syntheticTokenAddress
}

function lastBlockAccrued() payable {
    return lastBlockAccrued
}

function sub_bb8c631f(?) payable {
    return sub_bb8c631f
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'approval-not-supported'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'transfer-not-supported'
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'allowance-not-supported'
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'allowance-not-supported'
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    revert with 0, 'allowance-not-supported'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0, 'transfer-not-supported'
}

function governor() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'new-controller-address-is-zero'
    controllerAddress = arg1
}

function initialize(string arg1, string arg2, uint8 arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg4:
        revert with 0, 'controller-address-is-zero'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            uint8(stor0.field_8) = 0
    controllerAddress = arg4
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor54[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor54.length = 0
            idx = 0
            while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor54[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor54.length = 0
            idx = 0
            while stor54.length.field_1 + 31 / 32 > idx:
                stor54[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor55[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor55.length = 0
            idx = 0
            while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor55[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor55.length = 0
            idx = 0
            while stor55.length.field_1 + 31 / 32 > idx:
                stor55[idx].field_0 = 0
                idx = idx + 1
                continue 
    decimals = arg3
    syntheticTokenAddress = arg5
    lastBlockAccrued = block.number
    sub_bb8c631f = 10^18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function totalSupply() payable {
    if lastBlockAccrued == block.number:
        if stor52 > -1:
            revert with 0, 17
        return stor52
    if block.number < lastBlockAccrued:
        revert with 0, 17
    require ext_code.size(syntheticTokenAddress)
    staticcall syntheticTokenAddress.0x2ff7709e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and block.number - lastBlockAccrued > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
        if stor52 > -1:
            revert with 0, 17
        return stor52
    if not stor52:
        if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
            if sub_bb8c631f > -1:
                revert with 0, 17
        else:
            if not sub_bb8c631f:
                if sub_bb8c631f > -1:
                    revert with 0, 17
            else:
                if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and sub_bb8c631f > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
                    revert with 0, 17
                if (block.number * ext_call.return_data[0] * sub_bb8c631f) - (lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) > -500000000000000001:
                    revert with 0, 17
                if sub_bb8c631f > !((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                    revert with 0, 17
        if stor52 > -1:
            revert with 0, 17
        return stor52
    if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and stor52 > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        revert with 0, 17
    if (block.number * ext_call.return_data[0] * stor52) - (lastBlockAccrued * ext_call.return_data[0] * stor52) > -500000000000000001:
        revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
    else:
        if not sub_bb8c631f:
            if sub_bb8c631f > -1:
                revert with 0, 17
        else:
            if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and sub_bb8c631f > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
                revert with 0, 17
            if (block.number * ext_call.return_data[0] * sub_bb8c631f) - (lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) > -500000000000000001:
                revert with 0, 17
            if sub_bb8c631f > !((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                revert with 0, 17
    if stor52 > !((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18):
        revert with 0, 17
    return (stor52 + ((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor50[address(arg1)]:
        return 0
    if lastBlockAccrued == block.number:
        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
            revert with 0, 17
        if not stor51[address(arg1)]:
            revert with 0, 18
        return (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)])
    if block.number < lastBlockAccrued:
        revert with 0, 17
    require ext_code.size(syntheticTokenAddress)
    staticcall syntheticTokenAddress.0x2ff7709e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and block.number - lastBlockAccrued > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
            revert with 0, 17
        if not stor51[address(arg1)]:
            revert with 0, 18
        return (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)])
    if stor52:
        if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and stor52 > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
            revert with 0, 17
        if (block.number * ext_call.return_data[0] * stor52) - (lastBlockAccrued * ext_call.return_data[0] * stor52) > -500000000000000001:
            revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
            revert with 0, 17
        if not stor51[address(arg1)]:
            revert with 0, 18
        return (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)])
    if not sub_bb8c631f:
        if sub_bb8c631f > -1:
            revert with 0, 17
        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
            revert with 0, 17
        if not stor51[address(arg1)]:
            revert with 0, 18
        return (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)])
    if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and sub_bb8c631f > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        revert with 0, 17
    if (block.number * ext_call.return_data[0] * sub_bb8c631f) - (lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) > -500000000000000001:
        revert with 0, 17
    if sub_bb8c631f > !((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
        revert with 0, 17
    if not stor51[address(arg1)]:
        revert with 0, 18
    return ((sub_bb8c631f * stor50[address(arg1)]) + ((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)])
}

function name() payable {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function accrueInterest() payable {
    if syntheticTokenAddress != msg.sender:
        revert with 0, 'not-synthetic-token'
    if lastBlockAccrued == block.number:
        if lastBlockAccrued != block.number:
            if stor52 > -1:
                revert with 0, 17
            lastBlockAccrued = block.number
            return 0
        else:
            return 0
    if block.number < lastBlockAccrued:
        revert with 0, 17
    require ext_code.size(syntheticTokenAddress)
    staticcall syntheticTokenAddress.0x2ff7709e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and block.number - lastBlockAccrued > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
        if lastBlockAccrued != block.number:
            if stor52 > -1:
                revert with 0, 17
            lastBlockAccrued = block.number
            return 0
        else:
            return 0
    if not stor52:
        if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
            if sub_bb8c631f > -1:
                revert with 0, 17
            if lastBlockAccrued != block.number:
                if stor52 > -1:
                    revert with 0, 17
                lastBlockAccrued = block.number
        else:
            if not sub_bb8c631f:
                if sub_bb8c631f > -1:
                    revert with 0, 17
                if lastBlockAccrued != block.number:
                    if stor52 > -1:
                        revert with 0, 17
                    lastBlockAccrued = block.number
            else:
                if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and sub_bb8c631f > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
                    revert with 0, 17
                if (block.number * ext_call.return_data[0] * sub_bb8c631f) - (lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) > -500000000000000001:
                    revert with 0, 17
                if sub_bb8c631f > !((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                if lastBlockAccrued != block.number:
                    if stor52 > -1:
                        revert with 0, 17
                    sub_bb8c631f += (block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18
                    lastBlockAccrued = block.number
        return 0
    if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and stor52 > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        revert with 0, 17
    if (block.number * ext_call.return_data[0] * stor52) - (lastBlockAccrued * ext_call.return_data[0] * stor52) > -500000000000000001:
        revert with 0, 17
    if not (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
        if sub_bb8c631f > -1:
            revert with 0, 17
        if block.number == lastBlockAccrued:
            return 0
        if stor52 > !((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18):
            revert with 0, 17
        stor52 += (block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18
    else:
        if not sub_bb8c631f:
            if sub_bb8c631f > -1:
                revert with 0, 17
            if block.number == lastBlockAccrued:
                return 0
            if stor52 > !((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18):
                revert with 0, 17
            stor52 += (block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18
        else:
            if (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]) and sub_bb8c631f > -1 / (block.number * ext_call.return_data[0]) - (lastBlockAccrued * ext_call.return_data[0]):
                revert with 0, 17
            if (block.number * ext_call.return_data[0] * sub_bb8c631f) - (lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) > -500000000000000001:
                revert with 0, 17
            if sub_bb8c631f > !((block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                revert with 0, 17
            if block.number == lastBlockAccrued:
                return 0
            if stor52 > !((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18):
                revert with 0, 17
            stor52 += (block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18
            sub_bb8c631f += (block.number * ext_call.return_data[0] * sub_bb8c631f) + (-1 * lastBlockAccrued * ext_call.return_data[0] * sub_bb8c631f) + 5 * 10^17 / 10^18
    lastBlockAccrued = block.number
    return ((block.number * ext_call.return_data[0] * stor52) + (-1 * lastBlockAccrued * ext_call.return_data[0] * stor52) + 5 * 10^17 / 10^18)
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if syntheticTokenAddress != msg.sender:
        revert with 0, 'not-synthetic-token'
    mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3605b51b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + (32 * _7) + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    t = _7
    idx = _6 + 128
    while idx < _6 + (32 * _7) + 128:
        _92 = mem[idx]
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        t = _92
        idx = idx + 32
        continue 
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _177 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = syntheticTokenAddress
        mem[mem[64] + 36] = arg1
        require ext_code.size(address(_177))
        call address(_177).0x1b30f0c0 with:
             gas gas_remaining wei
            args syntheticTokenAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 'mint-to-the-zero-address'
    mem[0] = arg1
    mem[32] = 50
    if not stor50[address(arg1)]:
        if stor52 > !arg2:
            revert with 0, 17
        stor52 += arg2
        if stor50[address(arg1)] > !arg2:
            revert with 0, 17
        stor50[address(arg1)] += arg2
        stor51[address(arg1)] = sub_bb8c631f
        emit Transfer(arg2, 0, arg1);
        require ext_code.size(controllerAddress)
        call controllerAddress.0x770b69b4 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if lastBlockAccrued == block.number:
            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                revert with 0, 17
            if not stor51[address(arg1)]:
                revert with 0, 18
            if stor52 > !arg2:
                revert with 0, 17
            stor52 += arg2
            if stor50[address(arg1)] > !arg2:
                revert with 0, 17
            stor50[address(arg1)] += arg2
            stor51[address(arg1)] = sub_bb8c631f
            emit Transfer(arg2, 0, arg1);
            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                require ext_code.size(controllerAddress)
                call controllerAddress.0x770b69b4 with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if block.number < lastBlockAccrued:
                revert with 0, 17
            require ext_code.size(syntheticTokenAddress)
            staticcall syntheticTokenAddress.0x2ff7709e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_187] and block.number - lastBlockAccrued > -1 / mem[_187]:
                revert with 0, 17
            if not (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]):
                if sub_bb8c631f > -1:
                    revert with 0, 17
                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                    revert with 0, 17
                if not stor51[address(arg1)]:
                    revert with 0, 18
                if stor52 > !arg2:
                    revert with 0, 17
                stor52 += arg2
                if stor50[address(arg1)] > !arg2:
                    revert with 0, 17
                stor50[address(arg1)] += arg2
                stor51[address(arg1)] = sub_bb8c631f
                emit Transfer(arg2, 0, arg1);
                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x770b69b4 with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor52:
                    if (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]) and stor52 > -1 / (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]):
                        revert with 0, 17
                    if (block.number * mem[_187] * stor52) - (lastBlockAccrued * mem[_187] * stor52) > -500000000000000001:
                        revert with 0, 17
                if not (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]):
                    if sub_bb8c631f > -1:
                        revert with 0, 17
                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                        revert with 0, 17
                    if not stor51[address(arg1)]:
                        revert with 0, 18
                    if stor52 > !arg2:
                        revert with 0, 17
                    stor52 += arg2
                    if stor50[address(arg1)] > !arg2:
                        revert with 0, 17
                    stor50[address(arg1)] += arg2
                    stor51[address(arg1)] = sub_bb8c631f
                    emit Transfer(arg2, 0, arg1);
                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x770b69b4 with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not sub_bb8c631f:
                        if sub_bb8c631f > -1:
                            revert with 0, 17
                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if stor52 > !arg2:
                            revert with 0, 17
                        stor52 += arg2
                        if stor50[address(arg1)] > !arg2:
                            revert with 0, 17
                        stor50[address(arg1)] += arg2
                        stor51[address(arg1)] = sub_bb8c631f
                        emit Transfer(arg2, 0, arg1);
                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x770b69b4 with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]) and sub_bb8c631f > -1 / (block.number * mem[_187]) - (lastBlockAccrued * mem[_187]):
                            revert with 0, 17
                        if (block.number * mem[_187] * sub_bb8c631f) - (lastBlockAccrued * mem[_187] * sub_bb8c631f) > -500000000000000001:
                            revert with 0, 17
                        if sub_bb8c631f > !((block.number * mem[_187] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_187] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                            revert with 0, 17
                        if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_187] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_187] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if stor52 > !arg2:
                            revert with 0, 17
                        stor52 += arg2
                        if stor50[address(arg1)] > !arg2:
                            revert with 0, 17
                        stor50[address(arg1)] += arg2
                        stor51[address(arg1)] = sub_bb8c631f
                        emit Transfer(arg2, 0, arg1);
                        if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_187] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_187] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x770b69b4 with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender == controllerAddress:
        mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x3605b51b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _11 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _11
        require _9 + (32 * _11) + 32 <= return_data.size
        s = ceil32(return_data.size) + 128
        t = _11
        idx = _9 + 128
        while idx < _9 + (32 * _11) + 128:
            _883 = mem[idx]
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            t = _883
            idx = idx + 32
            continue 
        idx = 0
        while idx < _11:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _1754 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syntheticTokenAddress
            mem[mem[64] + 36] = arg1
            require ext_code.size(address(_1754))
            call address(_1754).0x1b30f0c0 with:
                 gas gas_remaining wei
                args syntheticTokenAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'burn-from-the-zero-address'
        mem[0] = arg1
        mem[32] = 50
        if not stor50[address(arg1)]:
            if 0 < arg2:
                revert with 0, 'burn-amount-exceeds-balance'
            stor50[address(arg1)] = -arg2
            stor51[address(arg1)] = sub_bb8c631f
            if stor52 < arg2:
                revert with 0, 17
            stor52 -= arg2
            emit Transfer(arg2, arg1, 0);
            mem[0] = arg1
            mem[32] = 50
            if not stor50[address(arg1)]:
                require ext_code.size(controllerAddress)
                call controllerAddress.0x75c6f8ec with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if lastBlockAccrued == block.number:
                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                        revert with 0, 17
                    if not stor51[address(arg1)]:
                        revert with 0, 18
                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x75c6f8ec with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if block.number < lastBlockAccrued:
                        revert with 0, 17
                    require ext_code.size(syntheticTokenAddress)
                    staticcall syntheticTokenAddress.0x2ff7709e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1813] and block.number - lastBlockAccrued > -1 / mem[_1813]:
                        revert with 0, 17
                    if not (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]):
                        if sub_bb8c631f > -1:
                            revert with 0, 17
                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x75c6f8ec with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor52:
                            if (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]) and stor52 > -1 / (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]):
                                revert with 0, 17
                            if (block.number * mem[_1813] * stor52) - (lastBlockAccrued * mem[_1813] * stor52) > -500000000000000001:
                                revert with 0, 17
                        if not (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]) and sub_bb8c631f > -1 / (block.number * mem[_1813]) - (lastBlockAccrued * mem[_1813]):
                                    revert with 0, 17
                                if (block.number * mem[_1813] * sub_bb8c631f) - (lastBlockAccrued * mem[_1813] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1813] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1813] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1813] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1813] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1813] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1813] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if lastBlockAccrued == block.number:
                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                    revert with 0, 17
                if not stor51[address(arg1)]:
                    revert with 0, 18
                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                    revert with 0, 'burn-amount-exceeds-balance'
                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                stor51[address(arg1)] = sub_bb8c631f
                if stor52 < arg2:
                    revert with 0, 17
                stor52 -= arg2
                emit Transfer(arg2, arg1, 0);
                mem[0] = arg1
                mem[32] = 50
                if not stor50[address(arg1)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x75c6f8ec with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if lastBlockAccrued == block.number:
                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x75c6f8ec with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if block.number < lastBlockAccrued:
                            revert with 0, 17
                        require ext_code.size(syntheticTokenAddress)
                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1837] and block.number - lastBlockAccrued > -1 / mem[_1837]:
                            revert with 0, 17
                        if not (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if stor52:
                                if (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]) and stor52 > -1 / (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]):
                                    revert with 0, 17
                                if (block.number * mem[_1837] * stor52) - (lastBlockAccrued * mem[_1837] * stor52) > -500000000000000001:
                                    revert with 0, 17
                            if not (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]):
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_bb8c631f:
                                    if sub_bb8c631f > -1:
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]) and sub_bb8c631f > -1 / (block.number * mem[_1837]) - (lastBlockAccrued * mem[_1837]):
                                        revert with 0, 17
                                    if (block.number * mem[_1837] * sub_bb8c631f) - (lastBlockAccrued * mem[_1837] * sub_bb8c631f) > -500000000000000001:
                                        revert with 0, 17
                                    if sub_bb8c631f > !((block.number * mem[_1837] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1837] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1837] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1837] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1837] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1837] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.number < lastBlockAccrued:
                    revert with 0, 17
                require ext_code.size(syntheticTokenAddress)
                staticcall syntheticTokenAddress.0x2ff7709e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1781] and block.number - lastBlockAccrued > -1 / mem[_1781]:
                    revert with 0, 17
                if not (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                    if sub_bb8c631f > -1:
                        revert with 0, 17
                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                        revert with 0, 17
                    if not stor51[address(arg1)]:
                        revert with 0, 18
                    if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                        revert with 0, 'burn-amount-exceeds-balance'
                    stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                    stor51[address(arg1)] = sub_bb8c631f
                    if stor52 < arg2:
                        revert with 0, 17
                    stor52 -= arg2
                    emit Transfer(arg2, arg1, 0);
                    mem[0] = arg1
                    mem[32] = 50
                    if not stor50[address(arg1)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x75c6f8ec with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if lastBlockAccrued == block.number:
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if block.number < lastBlockAccrued:
                                revert with 0, 17
                            require ext_code.size(syntheticTokenAddress)
                            staticcall syntheticTokenAddress.0x2ff7709e with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1983] and block.number - lastBlockAccrued > -1 / mem[_1983]:
                                revert with 0, 17
                            if not (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]):
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor52:
                                    if (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]) and stor52 > -1 / (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]):
                                        revert with 0, 17
                                    if (block.number * mem[_1983] * stor52) - (lastBlockAccrued * mem[_1983] * stor52) > -500000000000000001:
                                        revert with 0, 17
                                if not (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]):
                                    if sub_bb8c631f > -1:
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_bb8c631f:
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]) and sub_bb8c631f > -1 / (block.number * mem[_1983]) - (lastBlockAccrued * mem[_1983]):
                                            revert with 0, 17
                                        if (block.number * mem[_1983] * sub_bb8c631f) - (lastBlockAccrued * mem[_1983] * sub_bb8c631f) > -500000000000000001:
                                            revert with 0, 17
                                        if sub_bb8c631f > !((block.number * mem[_1983] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1983] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1983] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1983] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1983] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1983] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor52:
                        if not (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                revert with 0, 'burn-amount-exceeds-balance'
                            stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                            stor51[address(arg1)] = sub_bb8c631f
                            if stor52 < arg2:
                                revert with 0, 17
                            stor52 -= arg2
                            emit Transfer(arg2, arg1, 0);
                            mem[0] = arg1
                            mem[32] = 50
                            if not stor50[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if lastBlockAccrued == block.number:
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if block.number < lastBlockAccrued:
                                        revert with 0, 17
                                    require ext_code.size(syntheticTokenAddress)
                                    staticcall syntheticTokenAddress.0x2ff7709e with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2003 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2003] and block.number - lastBlockAccrued > -1 / mem[_2003]:
                                        revert with 0, 17
                                    if not (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]):
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor52:
                                            if (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]) and stor52 > -1 / (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]):
                                                revert with 0, 17
                                            if (block.number * mem[_2003] * stor52) - (lastBlockAccrued * mem[_2003] * stor52) > -500000000000000001:
                                                revert with 0, 17
                                        if not (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not sub_bb8c631f:
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]) and sub_bb8c631f > -1 / (block.number * mem[_2003]) - (lastBlockAccrued * mem[_2003]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2003] * sub_bb8c631f) - (lastBlockAccrued * mem[_2003] * sub_bb8c631f) > -500000000000000001:
                                                    revert with 0, 17
                                                if sub_bb8c631f > !((block.number * mem[_2003] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2003] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2003] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2003] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2003] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2003] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2020 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2020] and block.number - lastBlockAccrued > -1 / mem[_2020]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]) and stor52 > -1 / (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2020] * stor52) - (lastBlockAccrued * mem[_2020] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]) and sub_bb8c631f > -1 / (block.number * mem[_2020]) - (lastBlockAccrued * mem[_2020]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2020] * sub_bb8c631f) - (lastBlockAccrued * mem[_2020] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2020] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2020] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2020] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2020] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2020] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2020] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]) and sub_bb8c631f > -1 / (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                                    revert with 0, 17
                                if (block.number * mem[_1781] * sub_bb8c631f) - (lastBlockAccrued * mem[_1781] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = ((sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2150 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2150] and block.number - lastBlockAccrued > -1 / mem[_2150]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]) and stor52 > -1 / (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2150] * stor52) - (lastBlockAccrued * mem[_2150] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]) and sub_bb8c631f > -1 / (block.number * mem[_2150]) - (lastBlockAccrued * mem[_2150]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2150] * sub_bb8c631f) - (lastBlockAccrued * mem[_2150] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2150] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2150] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2150] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2150] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2150] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2150] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]) and stor52 > -1 / (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                            revert with 0, 17
                        if (block.number * mem[_1781] * stor52) - (lastBlockAccrued * mem[_1781] * stor52) > -500000000000000001:
                            revert with 0, 17
                        if not (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                revert with 0, 'burn-amount-exceeds-balance'
                            stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                            stor51[address(arg1)] = sub_bb8c631f
                            if stor52 < arg2:
                                revert with 0, 17
                            stor52 -= arg2
                            emit Transfer(arg2, arg1, 0);
                            mem[0] = arg1
                            mem[32] = 50
                            if not stor50[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if lastBlockAccrued == block.number:
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if block.number < lastBlockAccrued:
                                        revert with 0, 17
                                    require ext_code.size(syntheticTokenAddress)
                                    staticcall syntheticTokenAddress.0x2ff7709e with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2141 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2141] and block.number - lastBlockAccrued > -1 / mem[_2141]:
                                        revert with 0, 17
                                    if not (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]):
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor52:
                                            if (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]) and stor52 > -1 / (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]):
                                                revert with 0, 17
                                            if (block.number * mem[_2141] * stor52) - (lastBlockAccrued * mem[_2141] * stor52) > -500000000000000001:
                                                revert with 0, 17
                                        if not (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not sub_bb8c631f:
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]) and sub_bb8c631f > -1 / (block.number * mem[_2141]) - (lastBlockAccrued * mem[_2141]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2141] * sub_bb8c631f) - (lastBlockAccrued * mem[_2141] * sub_bb8c631f) > -500000000000000001:
                                                    revert with 0, 17
                                                if sub_bb8c631f > !((block.number * mem[_2141] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2141] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2141] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2141] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2141] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2141] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2149 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2149] and block.number - lastBlockAccrued > -1 / mem[_2149]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]) and stor52 > -1 / (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2149] * stor52) - (lastBlockAccrued * mem[_2149] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]) and sub_bb8c631f > -1 / (block.number * mem[_2149]) - (lastBlockAccrued * mem[_2149]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2149] * sub_bb8c631f) - (lastBlockAccrued * mem[_2149] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2149] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2149] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2149] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2149] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2149] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2149] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]) and sub_bb8c631f > -1 / (block.number * mem[_1781]) - (lastBlockAccrued * mem[_1781]):
                                    revert with 0, 17
                                if (block.number * mem[_1781] * sub_bb8c631f) - (lastBlockAccrued * mem[_1781] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = ((sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1781] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1781] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2247 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2247] and block.number - lastBlockAccrued > -1 / mem[_2247]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]) and stor52 > -1 / (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2247] * stor52) - (lastBlockAccrued * mem[_2247] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]) and sub_bb8c631f > -1 / (block.number * mem[_2247]) - (lastBlockAccrued * mem[_2247]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2247] * sub_bb8c631f) - (lastBlockAccrued * mem[_2247] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2247] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2247] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2247] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2247] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2247] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2247] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if syntheticTokenAddress != msg.sender:
            revert with 0, 'not-authorized'
        mem[96] = 0x3605b51b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0x3605b51b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _10 = mem[96]
        require mem[96] <= test266151307()
        require mem[96] + 127 < return_data.size + 96
        _12 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _12
        require _10 + (32 * _12) + 32 <= return_data.size
        s = ceil32(return_data.size) + 128
        t = _12
        idx = _10 + 128
        while idx < _10 + (32 * _12) + 128:
            _884 = mem[idx]
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            t = _884
            idx = idx + 32
            continue 
        idx = 0
        while idx < _12:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _1758 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x1b30f0c000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = syntheticTokenAddress
            mem[mem[64] + 36] = arg1
            require ext_code.size(address(_1758))
            call address(_1758).0x1b30f0c0 with:
                 gas gas_remaining wei
                args syntheticTokenAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'burn-from-the-zero-address'
        mem[0] = arg1
        mem[32] = 50
        if not stor50[address(arg1)]:
            if 0 < arg2:
                revert with 0, 'burn-amount-exceeds-balance'
            stor50[address(arg1)] = -arg2
            stor51[address(arg1)] = sub_bb8c631f
            if stor52 < arg2:
                revert with 0, 17
            stor52 -= arg2
            emit Transfer(arg2, arg1, 0);
            mem[0] = arg1
            mem[32] = 50
            if not stor50[address(arg1)]:
                require ext_code.size(controllerAddress)
                call controllerAddress.0x75c6f8ec with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if lastBlockAccrued == block.number:
                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                        revert with 0, 17
                    if not stor51[address(arg1)]:
                        revert with 0, 18
                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x75c6f8ec with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if block.number < lastBlockAccrued:
                        revert with 0, 17
                    require ext_code.size(syntheticTokenAddress)
                    staticcall syntheticTokenAddress.0x2ff7709e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1816] and block.number - lastBlockAccrued > -1 / mem[_1816]:
                        revert with 0, 17
                    if not (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]):
                        if sub_bb8c631f > -1:
                            revert with 0, 17
                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x75c6f8ec with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor52:
                            if (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]) and stor52 > -1 / (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]):
                                revert with 0, 17
                            if (block.number * mem[_1816] * stor52) - (lastBlockAccrued * mem[_1816] * stor52) > -500000000000000001:
                                revert with 0, 17
                        if not (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]) and sub_bb8c631f > -1 / (block.number * mem[_1816]) - (lastBlockAccrued * mem[_1816]):
                                    revert with 0, 17
                                if (block.number * mem[_1816] * sub_bb8c631f) - (lastBlockAccrued * mem[_1816] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1816] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1816] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1816] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1816] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1816] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1816] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if lastBlockAccrued == block.number:
                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                    revert with 0, 17
                if not stor51[address(arg1)]:
                    revert with 0, 18
                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                    revert with 0, 'burn-amount-exceeds-balance'
                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                stor51[address(arg1)] = sub_bb8c631f
                if stor52 < arg2:
                    revert with 0, 17
                stor52 -= arg2
                emit Transfer(arg2, arg1, 0);
                mem[0] = arg1
                mem[32] = 50
                if not stor50[address(arg1)]:
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0x75c6f8ec with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if lastBlockAccrued == block.number:
                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                            revert with 0, 17
                        if not stor51[address(arg1)]:
                            revert with 0, 18
                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                            require ext_code.size(controllerAddress)
                            call controllerAddress.0x75c6f8ec with:
                                 gas gas_remaining wei
                                args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if block.number < lastBlockAccrued:
                            revert with 0, 17
                        require ext_code.size(syntheticTokenAddress)
                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1838] and block.number - lastBlockAccrued > -1 / mem[_1838]:
                            revert with 0, 17
                        if not (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if stor52:
                                if (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]) and stor52 > -1 / (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]):
                                    revert with 0, 17
                                if (block.number * mem[_1838] * stor52) - (lastBlockAccrued * mem[_1838] * stor52) > -500000000000000001:
                                    revert with 0, 17
                            if not (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]):
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not sub_bb8c631f:
                                    if sub_bb8c631f > -1:
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]) and sub_bb8c631f > -1 / (block.number * mem[_1838]) - (lastBlockAccrued * mem[_1838]):
                                        revert with 0, 17
                                    if (block.number * mem[_1838] * sub_bb8c631f) - (lastBlockAccrued * mem[_1838] * sub_bb8c631f) > -500000000000000001:
                                        revert with 0, 17
                                    if sub_bb8c631f > !((block.number * mem[_1838] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1838] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1838] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1838] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1838] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1838] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if block.number < lastBlockAccrued:
                    revert with 0, 17
                require ext_code.size(syntheticTokenAddress)
                staticcall syntheticTokenAddress.0x2ff7709e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1782 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1782] and block.number - lastBlockAccrued > -1 / mem[_1782]:
                    revert with 0, 17
                if not (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                    if sub_bb8c631f > -1:
                        revert with 0, 17
                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                        revert with 0, 17
                    if not stor51[address(arg1)]:
                        revert with 0, 18
                    if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                        revert with 0, 'burn-amount-exceeds-balance'
                    stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                    stor51[address(arg1)] = sub_bb8c631f
                    if stor52 < arg2:
                        revert with 0, 17
                    stor52 -= arg2
                    emit Transfer(arg2, arg1, 0);
                    mem[0] = arg1
                    mem[32] = 50
                    if not stor50[address(arg1)]:
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0x75c6f8ec with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if lastBlockAccrued == block.number:
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if block.number < lastBlockAccrued:
                                revert with 0, 17
                            require ext_code.size(syntheticTokenAddress)
                            staticcall syntheticTokenAddress.0x2ff7709e with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1992] and block.number - lastBlockAccrued > -1 / mem[_1992]:
                                revert with 0, 17
                            if not (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]):
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor52:
                                    if (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]) and stor52 > -1 / (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]):
                                        revert with 0, 17
                                    if (block.number * mem[_1992] * stor52) - (lastBlockAccrued * mem[_1992] * stor52) > -500000000000000001:
                                        revert with 0, 17
                                if not (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]):
                                    if sub_bb8c631f > -1:
                                        revert with 0, 17
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not sub_bb8c631f:
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]) and sub_bb8c631f > -1 / (block.number * mem[_1992]) - (lastBlockAccrued * mem[_1992]):
                                            revert with 0, 17
                                        if (block.number * mem[_1992] * sub_bb8c631f) - (lastBlockAccrued * mem[_1992] * sub_bb8c631f) > -500000000000000001:
                                            revert with 0, 17
                                        if sub_bb8c631f > !((block.number * mem[_1992] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1992] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1992] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1992] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1992] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1992] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor52:
                        if not (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                revert with 0, 'burn-amount-exceeds-balance'
                            stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                            stor51[address(arg1)] = sub_bb8c631f
                            if stor52 < arg2:
                                revert with 0, 17
                            stor52 -= arg2
                            emit Transfer(arg2, arg1, 0);
                            mem[0] = arg1
                            mem[32] = 50
                            if not stor50[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if lastBlockAccrued == block.number:
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if block.number < lastBlockAccrued:
                                        revert with 0, 17
                                    require ext_code.size(syntheticTokenAddress)
                                    staticcall syntheticTokenAddress.0x2ff7709e with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2010 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2010] and block.number - lastBlockAccrued > -1 / mem[_2010]:
                                        revert with 0, 17
                                    if not (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]):
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor52:
                                            if (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]) and stor52 > -1 / (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]):
                                                revert with 0, 17
                                            if (block.number * mem[_2010] * stor52) - (lastBlockAccrued * mem[_2010] * stor52) > -500000000000000001:
                                                revert with 0, 17
                                        if not (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not sub_bb8c631f:
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]) and sub_bb8c631f > -1 / (block.number * mem[_2010]) - (lastBlockAccrued * mem[_2010]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2010] * sub_bb8c631f) - (lastBlockAccrued * mem[_2010] * sub_bb8c631f) > -500000000000000001:
                                                    revert with 0, 17
                                                if sub_bb8c631f > !((block.number * mem[_2010] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2010] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2010] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2010] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2010] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2010] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2026 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2026] and block.number - lastBlockAccrued > -1 / mem[_2026]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]) and stor52 > -1 / (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2026] * stor52) - (lastBlockAccrued * mem[_2026] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]) and sub_bb8c631f > -1 / (block.number * mem[_2026]) - (lastBlockAccrued * mem[_2026]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2026] * sub_bb8c631f) - (lastBlockAccrued * mem[_2026] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2026] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2026] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2026] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2026] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2026] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2026] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]) and sub_bb8c631f > -1 / (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                                    revert with 0, 17
                                if (block.number * mem[_1782] * sub_bb8c631f) - (lastBlockAccrued * mem[_1782] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = ((sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2154 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2154] and block.number - lastBlockAccrued > -1 / mem[_2154]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]) and stor52 > -1 / (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2154] * stor52) - (lastBlockAccrued * mem[_2154] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]) and sub_bb8c631f > -1 / (block.number * mem[_2154]) - (lastBlockAccrued * mem[_2154]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2154] * sub_bb8c631f) - (lastBlockAccrued * mem[_2154] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2154] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2154] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2154] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2154] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2154] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2154] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]) and stor52 > -1 / (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                            revert with 0, 17
                        if (block.number * mem[_1782] * stor52) - (lastBlockAccrued * mem[_1782] * stor52) > -500000000000000001:
                            revert with 0, 17
                        if not (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                            if sub_bb8c631f > -1:
                                revert with 0, 17
                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                revert with 0, 17
                            if not stor51[address(arg1)]:
                                revert with 0, 18
                            if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                revert with 0, 'burn-amount-exceeds-balance'
                            stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                            stor51[address(arg1)] = sub_bb8c631f
                            if stor52 < arg2:
                                revert with 0, 17
                            stor52 -= arg2
                            emit Transfer(arg2, arg1, 0);
                            mem[0] = arg1
                            mem[32] = 50
                            if not stor50[address(arg1)]:
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0x75c6f8ec with:
                                     gas gas_remaining wei
                                    args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if lastBlockAccrued == block.number:
                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                        revert with 0, 17
                                    if not stor51[address(arg1)]:
                                        revert with 0, 18
                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.0x75c6f8ec with:
                                             gas gas_remaining wei
                                            args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if block.number < lastBlockAccrued:
                                        revert with 0, 17
                                    require ext_code.size(syntheticTokenAddress)
                                    staticcall syntheticTokenAddress.0x2ff7709e with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2144 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2144] and block.number - lastBlockAccrued > -1 / mem[_2144]:
                                        revert with 0, 17
                                    if not (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]):
                                        if sub_bb8c631f > -1:
                                            revert with 0, 17
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor52:
                                            if (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]) and stor52 > -1 / (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]):
                                                revert with 0, 17
                                            if (block.number * mem[_2144] * stor52) - (lastBlockAccrued * mem[_2144] * stor52) > -500000000000000001:
                                                revert with 0, 17
                                        if not (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not sub_bb8c631f:
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]) and sub_bb8c631f > -1 / (block.number * mem[_2144]) - (lastBlockAccrued * mem[_2144]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2144] * sub_bb8c631f) - (lastBlockAccrued * mem[_2144] * sub_bb8c631f) > -500000000000000001:
                                                    revert with 0, 17
                                                if sub_bb8c631f > !((block.number * mem[_2144] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2144] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2144] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2144] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2144] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2144] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not sub_bb8c631f:
                                if sub_bb8c631f > -1:
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = (stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2153 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2153] and block.number - lastBlockAccrued > -1 / mem[_2153]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]) and stor52 > -1 / (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2153] * stor52) - (lastBlockAccrued * mem[_2153] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]) and sub_bb8c631f > -1 / (block.number * mem[_2153]) - (lastBlockAccrued * mem[_2153]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2153] * sub_bb8c631f) - (lastBlockAccrued * mem[_2153] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2153] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2153] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2153] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2153] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2153] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2153] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]) and sub_bb8c631f > -1 / (block.number * mem[_1782]) - (lastBlockAccrued * mem[_1782]):
                                    revert with 0, 17
                                if (block.number * mem[_1782] * sub_bb8c631f) - (lastBlockAccrued * mem[_1782] * sub_bb8c631f) > -500000000000000001:
                                    revert with 0, 17
                                if sub_bb8c631f > !((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                    revert with 0, 17
                                if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                    revert with 0, 17
                                if not stor51[address(arg1)]:
                                    revert with 0, 18
                                if (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)] < arg2:
                                    revert with 0, 'burn-amount-exceeds-balance'
                                stor50[address(arg1)] = ((sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_1782] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_1782] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]) - arg2
                                stor51[address(arg1)] = sub_bb8c631f
                                if stor52 < arg2:
                                    revert with 0, 17
                                stor52 -= arg2
                                emit Transfer(arg2, arg1, 0);
                                mem[0] = arg1
                                mem[32] = 50
                                if not stor50[address(arg1)]:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0x75c6f8ec with:
                                         gas gas_remaining wei
                                        args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if lastBlockAccrued == block.number:
                                        if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                            revert with 0, 17
                                        if not stor51[address(arg1)]:
                                            revert with 0, 18
                                        if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                            require ext_code.size(controllerAddress)
                                            call controllerAddress.0x75c6f8ec with:
                                                 gas gas_remaining wei
                                                args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if block.number < lastBlockAccrued:
                                            revert with 0, 17
                                        require ext_code.size(syntheticTokenAddress)
                                        staticcall syntheticTokenAddress.0x2ff7709e with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_2248] and block.number - lastBlockAccrued > -1 / mem[_2248]:
                                            revert with 0, 17
                                        if not (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]):
                                            if sub_bb8c631f > -1:
                                                revert with 0, 17
                                            if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                revert with 0, 17
                                            if not stor51[address(arg1)]:
                                                revert with 0, 18
                                            if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.0x75c6f8ec with:
                                                     gas gas_remaining wei
                                                    args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor52:
                                                if (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]) and stor52 > -1 / (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]):
                                                    revert with 0, 17
                                                if (block.number * mem[_2248] * stor52) - (lastBlockAccrued * mem[_2248] * stor52) > -500000000000000001:
                                                    revert with 0, 17
                                            if not (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]):
                                                if sub_bb8c631f > -1:
                                                    revert with 0, 17
                                                if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                    revert with 0, 17
                                                if not stor51[address(arg1)]:
                                                    revert with 0, 18
                                                if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.0x75c6f8ec with:
                                                         gas gas_remaining wei
                                                        args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not sub_bb8c631f:
                                                    if sub_bb8c631f > -1:
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not stor50[address(arg1)] * sub_bb8c631f / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]) and sub_bb8c631f > -1 / (block.number * mem[_2248]) - (lastBlockAccrued * mem[_2248]):
                                                        revert with 0, 17
                                                    if (block.number * mem[_2248] * sub_bb8c631f) - (lastBlockAccrued * mem[_2248] * sub_bb8c631f) > -500000000000000001:
                                                        revert with 0, 17
                                                    if sub_bb8c631f > !((block.number * mem[_2248] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2248] * sub_bb8c631f) + 5 * 10^17 / 10^18):
                                                        revert with 0, 17
                                                    if stor50[address(arg1)] and sub_bb8c631f + ((block.number * mem[_2248] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2248] * sub_bb8c631f) + 5 * 10^17 / 10^18) > -1 / stor50[address(arg1)]:
                                                        revert with 0, 17
                                                    if not stor51[address(arg1)]:
                                                        revert with 0, 18
                                                    if not (sub_bb8c631f * stor50[address(arg1)]) + ((block.number * mem[_2248] * sub_bb8c631f) + (-1 * lastBlockAccrued * mem[_2248] * sub_bb8c631f) + 5 * 10^17 / 10^18 * stor50[address(arg1)]) / stor51[address(arg1)]:
                                                        require ext_code.size(controllerAddress)
                                                        call controllerAddress.0x75c6f8ec with:
                                                             gas gas_remaining wei
                                                            args address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
}



}
