contract main {




// =====================  Runtime code  =====================


#
#  - claimLL(address arg1, uint256 arg2)
#  - mint(uint256 arg1, uint256 arg2, uint256 arg3)
#  - burn(uint256 arg1, uint256 arg2, uint256 arg3)
#  - createSS(uint256 arg1)
#  - withdrawFee(uint256 arg1)
#  - createLL(uint256 arg1)
#  - claimSS(address arg1, uint256 arg2)
#
const sub_1f6c9f65(?) = (275 * 10^12 * 3600)

const sub_90a8ae9b(?) = 833333 * 10^12


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address stableAddress; offset 16
address oracleAddress;
mapping of address sub_587f2ff2;
mapping of address sub_dd903558;
mapping of struct sub_6cbd7c37;
mapping of struct sub_851a9e33;
address governorAddress;
uint256 stor6;
address pendingGovernorAddress;
uint256 mintFeeBps;
uint256 burnFeeBps;
uint256 totalFee;
uint8 sub_33f76178;
uint8 sub_3fd1e2bd; offset 8
array of struct stor12;
address sub_bce515aaAddress;
address sub_b6ce97c7Address;

function governor() payable {
    return address(governorAddress)
}

function totalFee() payable {
    return totalFee
}

function stable() payable {
    return stableAddress
}

function sub_33f76178(?) payable {
    return sub_33f76178
}

function sub_3fd1e2bd(?) payable {
    return sub_3fd1e2bd
}

function sub_587f2ff2(?) payable {
    require calldata.size - 4 >= 32
    return sub_587f2ff2[arg1]
}

function sub_6cbd7c37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6cbd7c37[arg1].field_0, sub_6cbd7c37[arg1].field_256, sub_6cbd7c37[arg1].field_512, sub_6cbd7c37[arg1].field_768
}

function oracle() payable {
    return oracleAddress
}

function sub_851a9e33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_851a9e33[arg1].field_0, sub_851a9e33[arg1].field_256, sub_851a9e33[arg1].field_512, sub_851a9e33[arg1].field_768
}

function mintFeeBps() payable {
    return mintFeeBps
}

function burnFeeBps() payable {
    return burnFeeBps
}

function sub_b6ce97c7(?) payable {
    return sub_b6ce97c7Address
}

function sub_bce515aa(?) payable {
    return sub_bce515aaAddress
}

function sub_dd903558(?) payable {
    require calldata.size - 4 >= 32
    return sub_dd903558[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, '!G'
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    pendingGovernorAddress = 0
    emit SetGovernor(msg.sender);
}

function sub_0edba5dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, '!G'
    sub_bce515aaAddress = address(arg1)
    emit 0xef06b2b3: address(arg1)
}

function sub_c0871cfc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(governorAddress) != msg.sender:
        revert with 0, '!G'
    sub_b6ce97c7Address = address(arg1)
    emit 0x94d8b2f1: address(arg1)
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, '!G'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function setFees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, '!G'
    if arg1 > 10000:
        revert with 0, '!mintfee'
    if arg2 > 10000:
        revert with 0, '!burnfee'
    mintFeeBps = arg1
    burnFeeBps = arg2
    emit SetFees(arg1, arg2);
}

function destroySS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg1 and 833333 * 10^12 > -1 / arg1:
        revert with 0, 17
    if 833333 * 10^12 * arg1 >= 10^18 * ext_call.return_data[0]:
        revert with 0, '!P'
    if not sub_dd903558[arg1]:
        revert with 0, '!S'
    sub_dd903558[arg1] = 0
    require ext_code.size(sub_dd903558[arg1])
    staticcall sub_dd903558[arg1].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_851a9e33[stor3[arg1]].field_0 = arg1
    sub_851a9e33[stor3[arg1]].field_256 = ext_call.return_data[0]
    sub_851a9e33[stor3[arg1]].field_512 = 0
    sub_851a9e33[stor3[arg1]].field_768 = 0
    emit DestroySS(sub_dd903558[arg1], ext_call.return_data[0], arg1);
}

function destroyLL(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 833333 * 10^12 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg1 <= 833333 * 10^12 * ext_call.return_data[0]:
        revert with 0, '!P'
    if not sub_587f2ff2[arg1]:
        revert with 0, '!L'
    sub_587f2ff2[arg1] = 0
    require ext_code.size(sub_587f2ff2[arg1])
    staticcall sub_587f2ff2[arg1].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_6cbd7c37[stor2[arg1]].field_0 = arg1
    sub_6cbd7c37[stor2[arg1]].field_256 = ext_call.return_data[0]
    sub_6cbd7c37[stor2[arg1]].field_512 = 0
    sub_6cbd7c37[stor2[arg1]].field_768 = 0
    emit DestroyLL(sub_587f2ff2[arg1], ext_call.return_data[0], arg1);
}

function sub_c7fc0acf(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not address(arg1):
        revert with 0, '!stable'
    require ext_code.size(address(arg2))
    staticcall address(arg2).quote() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg1):
        revert with 0, '!ST'
    if not address(arg3):
        revert with 0, '!gov'
    if arg4 > 10000:
        revert with 0, '!mintfee'
    if arg5 > 10000:
        revert with 0, '!burnfee'
    stableAddress = address(arg1)
    oracleAddress = address(arg2)
    address(governorAddress) = address(arg3)
    mintFeeBps = arg4
    burnFeeBps = arg5
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if arg6.length:
            stor12[].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            stor12.length = 0
            idx = 0
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if arg6.length:
            stor12[].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).base() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    sub_33f76178 = ext_call.return_data[31 len 1]
    require ext_code.size(address(arg2))
    staticcall address(arg2).quote() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    sub_3fd1e2bd = ext_call.return_data[31 len 1]
    emit SetGovernor(address(arg3));
    emit SetFees(arg4, arg5);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function baseSymbol() payable {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function liquidateLL(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not sub_6cbd7c37[address(arg1)].field_0:
        revert with 0, '!C'
    if arg3 <= 0:
        revert with 0, '!A'
    if arg3 > sub_6cbd7c37[address(arg1)].field_256:
        revert with 0, '!A'
    if not sub_dd903558[arg2]:
        revert with 0, '!S'
    mem[100] = msg.sender
    mem[132] = arg3
    require ext_code.size(sub_dd903558[arg2])
    call sub_dd903558[arg2].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 < sub_6cbd7c37[address(arg1)].field_0:
        if sub_6cbd7c37[address(arg1)].field_0 >= arg2:
            revert with 0, '!LS'
        if sub_6cbd7c37[address(arg1)].field_256 < arg3:
            revert with 0, 17
        sub_6cbd7c37[address(arg1)].field_256 -= arg3
        if sub_6cbd7c37[address(arg1)].field_512 > !arg3:
            revert with 0, 17
        sub_6cbd7c37[address(arg1)].field_512 += arg3
        if sub_6cbd7c37[address(arg1)].field_0 < sub_6cbd7c37[address(arg1)].field_0:
            revert with 0, 17
        if arg3 and 0 > -1 / arg3:
            revert with 0, 17
        if sub_6cbd7c37[address(arg1)].field_768 > -1:
            revert with 0, 17
        if arg2 < sub_6cbd7c37[address(arg1)].field_0:
            revert with 0, 17
        if arg3 and arg2 - sub_6cbd7c37[address(arg1)].field_0 > -1 / arg3:
            revert with 0, 17
        if (arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 and burnFeeBps > -1 / (arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18:
            revert with 0, 17
        if totalFee > !((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000):
            revert with 0, 17
        totalFee += (arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000
        emit LiquidateLL(sub_6cbd7c37[address(arg1)].field_0, arg2, arg3, msg.sender, arg1, sub_dd903558[arg2]);
        if (arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 < (arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18) - ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stableAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18) - ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000), 0
        mem[ceil32(return_data.size) + 328] = 0
        call stableAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18) - ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18) - ((arg2 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18 * burnFeeBps / 10000), 0) << 288)
    else:
        if 275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 >= arg2:
            revert with 0, '!LS'
        if sub_6cbd7c37[address(arg1)].field_256 < arg3:
            revert with 0, 17
        sub_6cbd7c37[address(arg1)].field_256 -= arg3
        if sub_6cbd7c37[address(arg1)].field_512 > !arg3:
            revert with 0, 17
        sub_6cbd7c37[address(arg1)].field_512 += arg3
        if 275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 < sub_6cbd7c37[address(arg1)].field_0:
            revert with 0, 17
        if arg3 and (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18) - sub_6cbd7c37[address(arg1)].field_0 > -1 / arg3:
            revert with 0, 17
        if sub_6cbd7c37[address(arg1)].field_768 > !((275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18):
            revert with 0, 17
        sub_6cbd7c37[address(arg1)].field_768 += (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) - (sub_6cbd7c37[address(arg1)].field_0 * arg3) / 10^18
        if arg2 < 275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if arg3 and arg2 - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18) > -1 / arg3:
            revert with 0, 17
        if (arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 and burnFeeBps > -1 / (arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18:
            revert with 0, 17
        if totalFee > !((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000):
            revert with 0, 17
        totalFee += (arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000
        emit LiquidateLL(sub_6cbd7c37[address(arg1)].field_0, arg2, arg3, msg.sender, arg1, sub_dd903558[arg2]);
        if (arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 < (arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18) - ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stableAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18) - ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000), 0
        mem[ceil32(return_data.size) + 328] = 0
        call stableAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18) - ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18) - ((arg2 * arg3) - (275 * 10^12 * 3600 * ext_call.return_data[0] / 10^18 * arg3) / 10^18 * burnFeeBps / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, arg3) >> 32 == bool(uint32(msg.sender), Mask(224, 32, arg3) >> 32)
            if not uint32(msg.sender), Mask(224, 32, arg3) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function liquidateSS(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not sub_851a9e33[address(arg1)].field_0:
        revert with 0, '!C'
    if arg3 <= 0:
        revert with 0, '!A'
    if arg3 > sub_851a9e33[address(arg1)].field_256:
        revert with 0, '!A'
    if not sub_587f2ff2[arg2]:
        revert with 0, '!L'
    mem[100] = msg.sender
    mem[132] = arg3
    require ext_code.size(sub_587f2ff2[arg2])
    call sub_587f2ff2[arg2].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 >= sub_851a9e33[address(arg1)].field_0:
        if arg2 >= sub_851a9e33[address(arg1)].field_0:
            revert with 0, '!LS'
        if sub_851a9e33[address(arg1)].field_256 < arg3:
            revert with 0, 17
        sub_851a9e33[address(arg1)].field_256 -= arg3
        if sub_851a9e33[address(arg1)].field_512 > !arg3:
            revert with 0, 17
        sub_851a9e33[address(arg1)].field_512 += arg3
        if sub_851a9e33[address(arg1)].field_0 < sub_851a9e33[address(arg1)].field_0:
            revert with 0, 17
        if arg3 and 0 > -1 / arg3:
            revert with 0, 17
        if sub_851a9e33[address(arg1)].field_768 > -1:
            revert with 0, 17
        if sub_851a9e33[address(arg1)].field_0 < arg2:
            revert with 0, 17
        if arg3 and sub_851a9e33[address(arg1)].field_0 - arg2 > -1 / arg3:
            revert with 0, 17
        if (sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 and burnFeeBps > -1 / (sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18:
            revert with 0, 17
        if totalFee > !((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000):
            revert with 0, 17
        totalFee += (sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000
        emit LiquidateSS(sub_851a9e33[address(arg1)].field_0, arg2, arg3, msg.sender, arg1, sub_587f2ff2[arg2]);
        if (sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 < (sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18) - ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stableAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18) - ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0
        mem[ceil32(return_data.size) + 328] = 0
        call stableAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18) - ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18) - ((sub_851a9e33[address(arg1)].field_0 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0) << 288)
    else:
        if arg2 >= 10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600:
            revert with 0, '!LS'
        if sub_851a9e33[address(arg1)].field_256 < arg3:
            revert with 0, 17
        sub_851a9e33[address(arg1)].field_256 -= arg3
        if sub_851a9e33[address(arg1)].field_512 > !arg3:
            revert with 0, 17
        sub_851a9e33[address(arg1)].field_512 += arg3
        if sub_851a9e33[address(arg1)].field_0 < 10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600:
            revert with 0, 17
        if arg3 and sub_851a9e33[address(arg1)].field_0 - (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600) > -1 / arg3:
            revert with 0, 17
        if sub_851a9e33[address(arg1)].field_768 > !((sub_851a9e33[address(arg1)].field_0 * arg3) - (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) / 10^18):
            revert with 0, 17
        sub_851a9e33[address(arg1)].field_768 += (sub_851a9e33[address(arg1)].field_0 * arg3) - (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) / 10^18
        if 10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 < arg2:
            revert with 0, 17
        if arg3 and (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600) - arg2 > -1 / arg3:
            revert with 0, 17
        if (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 and burnFeeBps > -1 / (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18:
            revert with 0, 17
        if totalFee > !((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000):
            revert with 0, 17
        totalFee += (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000
        emit LiquidateSS(sub_851a9e33[address(arg1)].field_0, arg2, arg3, msg.sender, arg1, sub_587f2ff2[arg2]);
        if (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 < (10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18) - ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stableAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18) - ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0
        mem[ceil32(return_data.size) + 328] = 0
        call stableAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18) - ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18) - ((10^18 * ext_call.return_data[0] / 275 * 10^12 * 3600 * arg3) - (arg2 * arg3) / 10^18 * burnFeeBps / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, arg3) >> 32 == bool(uint32(msg.sender), Mask(224, 32, arg3) >> 32)
            if not uint32(msg.sender), Mask(224, 32, arg3) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
