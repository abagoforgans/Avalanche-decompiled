contract main {




// =====================  Runtime code  =====================


#
#  - claimCollateral()
#  - sub_9efc9e20(?)
#  - sub_a7a24edd(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'CollSurplusPool'


address stor0;
address stor50;
address stor51;
address stor150;
address stor151;
address stor152;
address stor153;
address stor154;
array of struct stor155;
array of struct collateral;
mapping of uint256 sub_139728d1;
uint256 sub_f7592784;
mapping of struct stor159;
uint8 stor160;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908764;
array of address stor84882613393583925725825227175822068977385904327970485092188354384632214438729;

function sub_139728d1(?) payable {
    require calldata.size - 4 >= 32
    return sub_139728d1[arg1]
}

function sub_28ad1fcc(?) payable {
    return sub_f7592784
}

function sub_5ecbb1b1(?) payable {
    require calldata.size - 4 >= 32
    return sub_139728d1[address(arg1)]
}

function getCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.getIndex(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < collateral.length
    return collateral[ext_call.return_data[0]].field_0
}

function sub_f7592784(?) payable {
    return sub_f7592784
}

function _fallback() payable {
    revert
}

function sub_ec0d5e0c(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'WFC'
    stor155.length++
    storBBA9[stor155.length] = arg1
    collateral.length++
    storAF85[stor156.length] = 0
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if stor160:
        revert with 0, 'Addresses already set'
    stor160 = 1
    stor150 = arg1
    stor151 = arg2
    stor152 = arg3
    stor153 = arg4
    stor0 = arg5
    stor154 = arg6
}

function sub_524a91e4(?) payable {
    require calldata.size - 4 >= 64
    if stor152 != msg.sender:
        revert with 0, 'WFC'
    if arg2 + sub_139728d1[address(arg1)] < sub_139728d1[address(arg1)]:
        revert with 0, 'add overflow'
    sub_139728d1[address(arg1)] += arg2
    if arg2 + sub_f7592784 < sub_f7592784:
        revert with 0, 'add overflow'
    sub_f7592784 += arg2
    emit 0xa74e3bb5: address(arg1), arg2
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function sub_61721554(?) payable {
    require calldata.size - 4 >= 64
    if stor159[address(arg1)].field_0:
        mem[128] = stor159[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor159[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor159[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor159[address(arg1)].field_0:
        require idx < stor159[address(arg1)].field_0
        if mem[(32 * idx) + 140 len 20] != arg2:
            idx = idx + 1
            continue 
        require idx < stor159[address(arg1)].field_256
        return stor159[address(arg1)][idx + 1].field_0
    return 0
}

function sub_2efac5b0(?) payable {
    require calldata.size - 4 >= 32
    if stor159[address(arg1)].field_0:
        idx = 192
        s = 0
        while (32 * stor159[address(arg1)].field_0) + 192 > idx + 32:
            mem[idx + 32] = stor159[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor159[address(arg1)].field_256:
        mem[(32 * stor159[address(arg1)].field_0) + 224] = stor159[address(arg1)][1].field_0
        idx = (32 * stor159[address(arg1)].field_0) + 224
        s = 0
        while (32 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + 192 > idx:
            mem[idx + 32] = stor159[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor159[address(arg1)].field_0:
        require idx < stor159[address(arg1)].field_256
        if 0 == mem[(32 * idx) + (32 * stor159[address(arg1)].field_0) + 224]:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_c6ba0936(?) payable {
    if stor155.length:
        mem[128] = address(stor155.field_0)
        idx = 128
        s = 0
        while (32 * stor155.length) + 96 > idx:
            mem[idx + 32] = stor155[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor155.length) + 160] = uint256(collateral.field_0)
        idx = (32 * stor155.length) + 160
        s = 0
        while (32 * stor155.length) + (32 * collateral.length) + 128 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor155.length) + (32 * collateral.length) + 256 len floor32(stor155.length)] = mem[128 len floor32(stor155.length)]
    mem[(64 * stor155.length) + (32 * collateral.length) + 256] = collateral.length
    mem[(64 * stor155.length) + (32 * collateral.length) + 288 len floor32(collateral.length)] = mem[(32 * stor155.length) + 160 len floor32(collateral.length)]
    return Array(len=stor155.length, data=mem[128 len floor32(stor155.length)], mem[(32 * stor155.length) + (32 * collateral.length) + floor32(stor155.length) + 256 len (32 * stor155.length) + (32 * collateral.length) + -floor32(stor155.length) + 32]), 
           (32 * stor155.length) + 96
}

function sub_dd33cf03(?) payable {
    if stor155.length:
        mem[192] = address(stor155.field_0)
        idx = 192
        s = 0
        while (32 * stor155.length) + 192 > idx + 32:
            mem[idx + 32] = stor155[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if collateral.length:
        mem[(32 * stor155.length) + 224] = uint256(collateral.field_0)
        idx = (32 * stor155.length) + 224
        s = 0
        while (32 * stor155.length) + (32 * collateral.length) + 192 > idx:
            mem[idx + 32] = collateral[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor155.length) + (32 * collateral.length) + 324 len floor32(stor155.length)] = mem[192 len floor32(stor155.length)]
    mem[(64 * stor155.length) + (32 * collateral.length) + 324] = collateral.length
    mem[(64 * stor155.length) + (32 * collateral.length) + 356 len floor32(collateral.length)] = mem[(32 * stor155.length) + 224 len floor32(collateral.length)]
    require ext_code.size(stor0)
    staticcall stor0.0x97a4b9f7 with:
            gas gas_remaining wei
           args Array(len=stor155.length, data=mem[192 len floor32(stor155.length)], mem[(32 * stor155.length) + (32 * collateral.length) + floor32(stor155.length) + 324 len (32 * stor155.length) + (32 * collateral.length) + -floor32(stor155.length) + 32]), (32 * stor155.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e4e78614(?) payable {
    require calldata.size - 4 >= 32
    if stor159[address(arg1)].field_0:
        mem[128] = stor159[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor159[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor159[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor159[address(arg1)].field_256:
        mem[(32 * stor159[address(arg1)].field_0) + 160] = stor159[address(arg1)][1].field_0
        idx = (32 * stor159[address(arg1)].field_0) + 160
        s = 0
        while (32 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + 128 > idx:
            mem[idx + 32] = stor159[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + 256 len floor32(stor159[address(arg1)].field_0)] = mem[128 len floor32(stor159[address(arg1)].field_0)]
    mem[(64 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + 256] = stor159[address(arg1)].field_256
    mem[(64 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + 288 len floor32(stor159[address(arg1)].field_256)] = mem[(32 * stor159[address(arg1)].field_0) + 160 len floor32(stor159[address(arg1)].field_256)]
    return Array(len=stor159[address(arg1)].field_0, data=mem[128 len floor32(stor159[address(arg1)].field_0)], mem[(32 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + floor32(stor159[address(arg1)].field_0) + 256 len (32 * stor159[address(arg1)].field_0) + (32 * stor159[address(arg1)].field_256) + -floor32(stor159[address(arg1)].field_0) + 32]), 
           (32 * stor159[address(arg1)].field_0) + 96
}



}
