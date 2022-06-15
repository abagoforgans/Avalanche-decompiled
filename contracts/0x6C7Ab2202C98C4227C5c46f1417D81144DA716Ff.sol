contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of uint256 sub_d1ef9fa7;
address validatorAddress;
uint16 sub_5b056da5; offset 160
address sub_434a899cAddress;

function validator() payable {
    return validatorAddress
}

function sub_434a899c(?) payable {
    return sub_434a899cAddress
}

function sub_5b056da5(?) payable {
    return sub_5b056da5
}

function owner() payable {
    return owner
}

function sub_d1ef9fa7(?) payable {
    return sub_d1ef9fa7[arg1][0 len sub_d1ef9fa7[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_0f020a4c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
}

function sub_55dafa40(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    validatorAddress = arg1
}

function sub_73101e2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_434a899cAddress = address(arg1)
}

function sub_d4c7d865(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return 0
}

function sub_17aec5b3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return ' '
}

function sub_6164c93b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return '', 64, 0
}

function sub_971f3edb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1b28c439(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[32] = sha3(arg1, 1)
    mem[arg3.length + 128] = 0
    mem[64] = ceil32(arg3.length) + ceil32(stor1[arg1][arg2][arg3[all]][1].length) + 160
    mem[ceil32(arg3.length) + 128] = stor1[arg1][arg2][arg3[all]][1].length
    mem[0] = sha3(arg3[all], sha3(arg2, sha3(arg1, 1))) + 1
    mem[ceil32(arg3.length) + 160] = stor1[arg1][arg2][arg3[all]][1].field_0
    idx = ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg3.length) + stor1[arg1][arg2][arg3[all]][1].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = stor1[arg1][arg2][arg3[all]].field_0
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = stor1[arg1][arg2][arg3[all]][1].length
    mem[mem[64] + 96 len ceil32(stor1[arg1][arg2][arg3[all]][1].length)] = mem[ceil32(arg3.length) + 160 len ceil32(stor1[arg1][arg2][arg3[all]][1].length)]
    if ceil32(stor1[arg1][arg2][arg3[all]][1].length) > stor1[arg1][arg2][arg3[all]][1].length:
        mem[mem[64] + stor1[arg1][arg2][arg3[all]][1].length + 96] = 0
    return stor1[arg1][arg2][arg3[all]].field_0, 
           Array(len=stor1[arg1][arg2][arg3[all]][1].length, data=mem[mem[64] + 96 len ceil32(stor1[arg1][arg2][arg3[all]][1].length)])
}

function sub_51e96abe(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == uint16(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x673448dd with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'LayerZero: the calling Oracle is not approved for updateBlockHeader()'
    if stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][1].length != 0:
        if cd[100] <= stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]].field_0:
            revert with 0, 'LayerZero: oracle data can only update if it has more confirmations'
    stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]].field_0 = cd[100]
    if not ('cd', 132).length:
        stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]].field_256 = 0
        idx = 0
        while stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][1].length + 31 / 32 > idx:
            stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]].field_256 = (2 * ('cd', 132).length) + 1
        s = 0
        idx = cd[132] + 36
        while cd[132] + ('cd', 132).length + 36 > idx:
            stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][s + 1].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
        while stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][1].length + 31 / 32 > idx:
            stor1[address(cd[36])][cd[4] << 240][call.data[cd[68] + 36 len ('cd', 68).length]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}



}
